#!/bin/ruby

# ENV['RAILS_ENV'] = "production"
# require '../config/environment.rb'

## Read in Encrypted Message from STDIN
# incoming = $stdin.read

## Decrypt the Incoming Group Message
# decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`

incoming = "From: neal friedman <nealiof1000@gmail.com>
Date: Fri, 8 Apr 2016 08:54:55 -0600
Message-ID: <CA+GV4WqXHt7sHAGCXVwydcOyqkHjo-7DK3ht18tWtvJc5j36Vg@mail.gmail.com>
Subject: this is a test
To: hello@huddlemail.xyz"

## Pull out the local part
regex = /To: ([\w.!#$%&'*+-\/=?^`{|}~]+)@/
tmp = regex.match(incoming)
result = tmp[1]



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
