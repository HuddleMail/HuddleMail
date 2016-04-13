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

## Read in Encrypted Message from STDIN and store in file
incoming = $stdin.read
incomingout = File.open('/tmp/incoming.out', 'w+')
incomingout.puts incoming
incomingout.close

## Pull out the username from the To: field
regex = /To: "*([\w.!#$%&'*+-\/=?^`{|}~]+)@/
tmp = regex.match(incoming)
result = tmp[1]

## Decrypt the received message and store in file
decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`
plaintext = File.open('/tmp/decrypted.out', 'w')
plaintext.puts decrypted
plaintext.close

## Query for the distgroup where dist_name == emailLocalPart
dg = DistGroup.find_by_sql "SELECT  dist_groups.* FROM dist_groups WHERE dist_name = '#{result}' LIMIT 1"
dist_group = dg[0]

## Query all the recipients in the found dist_group
recipients = Recipient.find_by_sql "SELECT recipients.* FROM recipients WHERE dist_group_id = '#{dist_group.id}'"

## Imports recipient.pub_key to public keyring and then encrypts the message
recipients.each do |recipient|

  # store the recipient's public key in a file
  recipientPubKey = File.open('/tmp/recipientpubkey.out', 'w')
  recipientPubKey.puts recipient.pub_key
  recipientPubKey.close

  # import recipient's public key
  `gpg --import /tmp/recipientpubkey.out`

  # encrypt the message for the recipient and store in file
  `gpg --always-trust --yes -e -a -r "#{recipient.email}" /tmp/decrypted.out`
  
  # delete the recipients public key from the keyring
  `gpg --yes --batch --delete-keys "#{recipient.email}"`

  # mail out the encrypted message
  `cat /tmp/decrypted.out.asc | mail -s "ENCRYPTED" #{recipient.email}`
end

`rm -f /tmp/incoming.out`
`rm -f /tmp/recipientpubkey.out`
`rm -f /tmp/decrypted.out.asc`
`rm -f /tmp/decrypted.out`
