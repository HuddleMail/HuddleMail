# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


DistGroup.create(dist_name: 'test', pub_key: 'rngjkrngjrngerekng', user_id: '1')
Recipient.create(email: 'recipient1@test.com', pub_key: 'hfsadohaidheefhjb', dist_group_id: 1)
Recipient.create(email: 'recipient2@test.com', pub_key: 'sfsfsefrgregegrge', dist_group_id: 1)
Recipient.create(email: 'recipient3@test.com', pub_key: 'htrhyhtrhhrthtrht', dist_group_id: 1)
Recipient.create(email: 'recipient4@test.com', pub_key: '34r3243gegdgdfggg', dist_group_id: 1)
Recipient.create(email: 'recipient5@test.com', pub_key: 'etewtewrtewtrewte', dist_group_id: 1)
