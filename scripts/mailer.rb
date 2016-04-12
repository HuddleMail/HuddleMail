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
incomingout = File.open('/tmp/incoming.out', 'w+')
incomingout.puts incoming
incomingout.close


## Pull out the username from the To: field
regex = /To: "*([\w.!#$%&'*+-\/=?^`{|}~]+)@/
tmp = regex.match(incoming)
result = tmp[1]

## Decrypt the received message
# decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`
decrypted = "this needs to get get the body of the message so it will work."

## Query for the distgroup where dist_name == emailLocalPart
dg = DistGroup.find_by_sql "SELECT  dist_groups.* FROM dist_groups WHERE dist_name = '#{result}' LIMIT 1"
dist_group = dg[0]

## Query all the recipients in the found dist_group
recipients = Recipient.find_by_sql "SELECT recipients.* FROM recipients WHERE dist_group_id = '#{dist_group.id}'"


## Imports recipient.pub_key to public keyring and then encrypts the message
recipients.each do |recipient|
#puts recipient.email
#puts recipient.pub_key

recipientqueryout = File.open('/tmp/recipientquery.out', 'w')
recipientqueryout.puts recipient.pub_key
recipientqueryout.close

puts `gpg --import /tmp/recipientquery.out`
encryptedmessage = `echo #{decrypted} | gpg --always-trust -e -a -r "#{recipient.email}" `
puts encryptedmessage
#puts `gpg --delete-key #{recipient.email} `


  ## mail out the encrypted message
  `cat #{encryptedmessage} | mail -s "ENCRYPTED" #{recipient.email}`
end
########################################################################################################################
############# END DANGER ZONE #######################

  ## delete recipients keys
  # `gpg --yes --batch --delete-keys "#{recipient.email}"`
