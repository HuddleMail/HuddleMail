#!/bin/ruby

require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "/home/huddlemail/HuddleMail/HuddleMail_development"
)

class DistGroup < ActiveRecord::Base
end

class Recipient < ActiveRecord::Base
end

## Hardcoded string for testing
# incoming = "From: neal friedman <nealiof1000@gmail.com>
# Date: Fri, 8 Apr 2016 08:54:55 -0600
# Message-ID: <CA+GV4WqXHt7sHAGCXVwydcOyqkHjo-7DK3ht18tWtvJc5j36Vg@mail.gmail.com>
# Subject: this is a test
# To: test@huddlemail.xyz"

## Read in Encrypted Message from STDIN
incoming = $stdin.read
 mailout = File.open('/tmp/incoming.out', 'w')
 mailout.puts incoming

## Pull out the username from the To: field
regex = /To: ([\w.!#$%&'*+-\/=?^`{|}~]+)@/
tmp = regex.match(incoming)
result = tmp[1]
 dgnameout = File.open('/tmp/dgname.out', 'w')
 dgnameout.puts result

## Decrypt the received message
decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`
 decryptedout = File.open('/tmp/decrypted', 'w')
 decryptedout.puts decrypted

## Query for the distgroup where dist_name == emailLocalPart
dg = DistGroup.find_by_sql "SELECT  dist_groups.* FROM dist_groups WHERE dist_name = '#{result}' LIMIT 1"
dist_group = dg[0]
 dgqueryout = File.open('/tmp/dgquery.out', 'w')
 dgqueryout.puts dist_group

## Query all the recipients in the found dist_group
recipients = Recipient.find_by_sql "SELECT recipients.* FROM recipients WHERE dist_group_id = '#{dist_group.id}'"
 recipientqueryout = File.open('/tmp/recipientquery.out', 'w')
 recipientqueryout.puts recipients

messageout = File.open('/tmp/message.out', 'w')

## move out current public key ring to make way for recipient keys
# `rm -f ~/.gnupg/pubring.gpg~`
# `mv ~/.gnupg/pubring.gpg .`


## Iterate through each recipient
recipients.each do |recipient|
 recipkeys = File.open('/tmp/recipkeys.out', 'w')
 recipkeys.puts recipient.pub_key

 ## import the recipients key
  key = `cat /tmp/recipkeys.out | gpg  --import`
  recipkeys.puts key
  ## encrypt message with recipients key
  message = `echo #{decrypted} | gpg -e -a -r "#{recipient.email}" `
  messageout.puts message

  ## mail out the encrypted message
  `echo #{message} | mail -s "ENCRYPTED" #{recipient.email}`

  # `rm -f /tmp/recipkeys.out`
end

