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

# ## Decrypt the Incoming Group Message
decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`
f = File.open('/tmp/decrypted.out', 'w')
f.puts decrypted

## Pull out the local part
regex = /To: ([\w.!#$%&'*+-\/=?^`{|}~]+)@/
tmp = regex.match(incoming)
result = tmp[1]


`echo "#{decrypted}" | mail -s "DECRYPTED" nealiof1000@gmail.com`


# params[:id] = "dist_name = 'test'"
# dg = DistGroup.find_by params[:id]


# dgRelation = DistGroup.where(:dist_name => 'test') ##maybe works??
# dg = DistGroup.find_by dist_name: result

# puts dg.dist_name

##########################################################################

## for each recipient encrypt and send
# Recipient.find_each do |recipient|
#
#  # Encrypt the message for Recipient
#   encrypted = `echo "#{incoming}" | gpg --no-batch -a -e -r "#{recipient.pub_key}"`
#
#  # Email Encrypted Message to Recipient
#   `echo "#{encrypted}" | mail -s "ENCRYPTED" #{recipient}.email`
#
# end
