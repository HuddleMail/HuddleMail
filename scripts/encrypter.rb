#!/bin/ruby

## Read in Encrypted Message from STDIN
incoming = ARGF.read
puts incoming

`echo "#{incoming}" > output`

## Encrypt the message for Recipient
encrypted = `echo "#{incoming}" | gpg --no-batch -a -e -r "nealio"`
puts encrypted

## Decrypt the Incoming Group Message
decrypted = `echo "#{encrypted}" | gpg -a --no-batch -d`
puts decrypted

## Email Encrypted Message to Recipient
`echo "#{encrypted}" | mail -s "ENCRYPTED" nealiof1000@gmail.com`

## Email Decrypted copy for testing purposes. DELETE THIS FOR PRODUCTION!!!
`echo "#{decrypted}" | mail -s "DECRYPTED" nealiof1000@gmail.com`
