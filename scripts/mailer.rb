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

## Pull out the username from the To: field
regex = /To: ([\w.!#$%&'*+-\/=?^`{|}~]+)@/
tmp = regex.match(incoming)
result = tmp[1]

## Decrypt the received message
decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`

## Query for the distgroup where dist_name == emailLocalPart
dg = DistGroup.find_by_sql "SELECT  dist_groups.* FROM dist_groups WHERE dist_name = '#{result}' LIMIT 1"
dist_group = dg[0]

## Query all the recipients in the found dist_group
recipients = Recipient.find_by_sql "SELECT recipients.* FROM recipients WHERE dist_group_id = '#{dist_group.id}'"

########################################################################################################################

## Iterate through each recipient
recipients.each do |recipient|
 recipkeys = File.open('/tmp/recipient_key.asc', 'w')
 recipkeys.puts recipient.pub_key
 recipkeys.close

 ## import the recipients key
 `gpg  --import /tmp/recipient_key.asc`

 ## encrypt message with recipients key
 message = `echo "#{decrypted}" | gpg -a --yes --batch --trust-model always -r "#{recipient.email}" -e`

 ## mail out the encrypted message
 `echo #{message} | mail -s "ENCRYPTED" #{recipient.email}`

 ## delete recipients key
 # `gpg --yes --batch --delete-keys "#{recipient.email}"`

 # `rm -f /tmp/recipient_key.asc`
end

########################################################################################################################