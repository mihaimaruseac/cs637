require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get for_parents" do
    get :for_parents
    assert_response :success
  end

  test "should get for_children" do
    get :for_children
    assert_response :success
  end

  test "should get for_instructors" do
    get :for_instructors
    assert_response :success
  end

end
