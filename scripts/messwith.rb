#!/bin/ruby

require 'active_record'
require 'sqlite3'

ActiveRecord::Base.establish_connection(
    :adapter => "sqlite3",
    :database => "HuddleMail_development"
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
#incoming = $stdin.read
# mailout = File.open('/tmp/incoming.out', 'w')
# mailout.puts incoming

## Pull out the username from the To: field
#regex = /To: ([\w.!#$%&'*+-\/=?^`{|}~]+)@/
#tmp = regex.match(incoming)
#result = tmp[1]
# dgnameout = File.open('/tmp/dgname.out', 'w')
# dgnameout.puts result

## Decrypt the received message
#decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`
# decryptedout = File.open('/tmp/decrypted', 'w')
# decryptedout.puts decrypted

result = "okiquit"
decrypted = "this is an unencrypted message. Look how cool encrypting is."

## Query for the distgroup where dist_name == emailLocalPart
dg = DistGroup.find_by_sql "SELECT  dist_groups.* FROM dist_groups WHERE dist_name = '#{result}' LIMIT 1"
dist_group = dg[0]
puts dg
puts dist_group.dist_name
# dgqueryout = File.open('/tmp/dgquery.out', 'w')
# dgqueryout.puts dist_group

## Query all the recipients in the found dist_group
recipients = Recipient.find_by_sql "SELECT recipients.* FROM recipients WHERE dist_group_id = '#{dist_group.id}'"

## Imports recipient.pub_key to public keyring and then encrypts the message
recipients.each do |recipient|
puts recipient.email
puts recipient.pub_key

recipientqueryout = File.open('/tmp/recipientquery.out', 'w')
recipientqueryout.puts recipient.pub_key
recipientqueryout.close

puts `gpg --import /tmp/recipientquery.out`
somevar = `echo #{decrypted} | gpg --always-trust -e -a -r "#{recipient.email}" `
puts somevar
puts `gpg --delete-key #{recipient.email} `
end

# messageout = File.open('/tmp/message.out', 'w')

## Create temporary keying

## Iterate through each recipient
#recipients.each do |recipient|
# `gpg --no-default-keyring --keyring temporary.gpg --fingerprint`
# `gpg --no-default-keyring --keyring temporary.gpg --import #{recipient.pub_key}`
# message = `echo #{decrypted} | gpg -e -a -r "#{recipient.email}" `
# `echo #{message} | mail -s "ENCRYPTED" #{recipient.email}`
#end