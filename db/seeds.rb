# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(email: 'email', encrypted_password: 'test password', sign_in_count: 0)
dg = DistGroup.create(dist_name: 'test', pub_key: 'rngjkrngjrngerekng', user_id: '1')
dg.recipients.create(email: 'recipient1@test.com', pub_key: 'hfsadohaidheefhjb')
dg.recipients.create(email: 'recipient2@test.com', pub_key: 'sfsfsefrgregegrge')
dg.recipients.create(email: 'recipient3@test.com', pub_key: 'htrhyhtrhhrthtrht')
dg.recipients.create(email: 'recipient4@test.com', pub_key: '34r3243gegdgdfggg')
dg.recipients.create(email: 'recipient5@test.com', pub_key: 'etewtewrtewtrewte')
