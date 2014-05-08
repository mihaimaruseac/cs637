require 'test_helper'

class EnrolmentsControllerTest < ActionController::TestCase
  setup do
    @enrolment = enrolments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:enrolments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create enrolment" do
    assert_difference('Enrolment.count') do
      post :create, enrolment: { child_id: @enrolment.child_id, course_id: @enrolment.course_id, date: @enrolment.date, parent_id: @enrolment.parent_id, price: @enrolment.price }
    end

    assert_redirected_to enrolment_path(assigns(:enrolment))
  end

  test "should show enrolment" do
    get :show, id: @enrolment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @enrolment
    assert_response :success
  end

  test "should update enrolment" do
    put :update, id: @enrolment, enrolment: { child_id: @enrolment.child_id, course_id: @enrolment.course_id, date: @enrolment.date, parent_id: @enrolment.parent_id, price: @enrolment.price }
    assert_redirected_to enrolment_path(assigns(:enrolment))
  end

  test "should destroy enrolment" do
    assert_difference('Enrolment.count', -1) do
      delete :destroy, id: @enrolment
    end

    assert_redirected_to enrolments_path
  end
end
