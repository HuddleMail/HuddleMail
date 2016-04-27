require 'test_helper'

class RecipientControllerTest < ActionController::TestCase
  test "Don't save a blank distgroup" do
	User.create! :email => ''
    assert dist_group.invalid?
    assert !dist_group.save
  end
  
  test "Works in general" do
	User.create! :email => 'testhuddle@HuddleMail.com' :pub_key => 'sfsfjgvjyfhtstratu'
    assert !dist_group.invalid?
    assert dist_group.save
  end
  
  test "Works in general" do
	User.create! :email => 'testhuddle@HuddleMail.com' :pub_key => 'sfsrbgvjyfhtstratu'
    User.create! :email => 'testP.money@HuddleMail.com' :pub_key =>'sfsrbgvjyfhtstratu'
    assert !dist_group.invalid?
    assert dist_group.save
  end
  test "Works on case sensitivity" do
    User.create! :email => 'HI@abc.com' :pub_key =>'sfsqqgvqyfh'
    User.create! :email => 'hi@abc.com' :pub_key =>'sfsrbgvjyfh'
    assert dist_group.invalid?
    assert !dist_group.save


end
