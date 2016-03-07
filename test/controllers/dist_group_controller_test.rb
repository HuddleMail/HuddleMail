require 'test_helper'

class DistGroupControllerTest < ActionController::TestCase
  test "dont save a blank distgroup" do
    dist_group = DistGroup.create
    assert dist_group.invalid?
    assert !dist_group.save
  end
end
