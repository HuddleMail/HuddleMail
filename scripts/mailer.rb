#!/bin/ruby

ENV['RAILS_ENV'] = "production"
require '../config/environment.rb'
distGroupName = ""

## Read in Encrypted Message from STDIN
incoming = $stdin.read

## Decrypt the Incoming Group Message
decrypted = `echo "#{incoming}" | gpg -a --no-batch -d`

## Somehow figure out which Distribution group to use here

  # Regular Expression used to extract the local part of the addressed email
  regexLocalPart = /Delivered-To: ([\w.!#$%&'*+-\/=?^`{|}~]+)@/

  # Store the local part of the addressed email
  localPart = decrypted.match regexLocalPart

  # Nil test for local part. Set result to empty string if nil, otherwise set result to first match.
  if localPart.nil?
    result = ""
  else
    distGroupName = localPart[1]
  end

##########################################################################

## for each recipient encrypt and send
Recipient.find_each do |recipient|

 # Encrypt the message for Recipient
  encrypted = `echo "#{incoming}" | gpg --no-batch -a -e -r "#{recipient.pub_key}"`

 # Email Encrypted Message to Recipient
  `echo "#{encrypted}" | mail -s "ENCRYPTED" #{recipient}.email`

end
