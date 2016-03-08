![HuddleMail Logo](https://raw.githubusercontent.com/HuddleMail/HuddleMail/master/logo.png)

## Overview

HuddleMail is an encrypted group emailer designed in Ruby on Rails. Our service provides an elegant front end for secured registration and login. Once logged in, you may create email group lists where each recpient is listed with their email address and public key. Once the list is submitted, a public key is created for you to use when emailing to the list. 

## Synopsis

HuddleMail generates a 4096 bit RSA public/private key pair for every distribution group that you create. In the distribution group you provide the email address and public key of each of your recipients. Then you encrypt your mail with the distribution groups public key and send it to your POSTFIX server running HuddleMail. The mail is decrypted using the correct private key from the keychain and is then encrypted and snet out for each recipient of the distribution group.

## Motivation
We at WerePirate built HuddleMail in order to have a method of sending secure emial to a large group of recipents.
Due to a lack of similar available services, we at WerePirate built HuddleMail so that you or your company would be able to send out email to your mailing list without pesky outsiders listening in.
## Installation

```console
git clone https://github.com/HuddleMail/HuddleMail
cd HuddleMail
bundle install
rake db:migrate
rails server
```

## Tests

This is how your run our tests
```console
rake test
```

## Contributors

This project is still in early stages of development and we are not looking for contributers. Feel free to post an issue if you have any concerns or feature requests.

## License
MIT License
