# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# User.create!(email: "neal@huddlemail.xyz", password: "testing123")
User.create! :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

DistGroup.create! :email => 'test_group@huddlemail.xyz', :pub_key => 'yfjfjgvjyfhtstratu'

