require 'test_helper'

class DistGroupControllerTest < ActionController::TestCase

  test "dont save a blank distgroup" do

    dist_group.create(email: "", pub_key: "ysjrjgvjyfhtstratu")
    assert dist_group.invalid?
    assert !dist_group.save
  end
  
  test "works in general1" do
    dist_group.create(email: "test_grouphuddlemail.xyz", pub_key: "yfjfjgvjyfhtstratu")
    assert !dist_group.invalid?
    assert dist_group.save  
  end
  
  test "same pubkey1" do
    dist_group.create(email: "test_grouphuddlemail.xyz", pub_key: 'yfjfjgvjyfhtstratu')
    dist_group.create(email: "test_grouphuddlemail2.xyz", pub_key: 'yfjfjgvjyfhtstratu')
    assert dist_group.invalid?
    assert !dist_group.save  
  end
  
  test "works in general2" do
    dist_group.create(email: "thuddlemail.xyz", pub_key: 'yfjfpovjreststratu')
    assert !dist_group.invalid?
    assert dist_group.save  
  end
  
  test "same pubkey1" do
    dist_group.create(email: 't..a...a..ssddf  mail.xyz', pub_key: 'yssfjgvjyfhtstratu')
    assert dist_group.invalid?
    assert !dist_group.save  
end 

  test "Case insensitive test" do
    dist_group.create(email: "HI.xyz", pub_key: 'yfjfjgvjyfht')
    dist_group.create(email: "hi.xyz", pub_key: 'yfjfjgvxzfht')
    assert dist_group.invalid?
    assert !dist_group.save
  end
end
