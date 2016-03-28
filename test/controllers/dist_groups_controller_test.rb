require 'test_helper'

class DistGroupsControllerTest < ActionController::TestCase
  setup do
    @dist_group = dist_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dist_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dist_group" do
    assert_difference('DistGroup.count') do
      post :create, dist_group: {  }
    end

    assert_redirected_to dist_group_path(assigns(:dist_group))
  end

  test "should show dist_group" do
    get :show, id: @dist_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dist_group
    assert_response :success
  end

  test "should update dist_group" do
    patch :update, id: @dist_group, dist_group: {  }
    assert_redirected_to dist_group_path(assigns(:dist_group))
  end

  test "should destroy dist_group" do
    assert_difference('DistGroup.count', -1) do
      delete :destroy, id: @dist_group
    end

    assert_redirected_to dist_groups_path
  end
end
