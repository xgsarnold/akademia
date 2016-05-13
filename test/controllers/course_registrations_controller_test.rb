require 'test_helper'

class CourseRegistrationsControllerTest < ActionController::TestCase
  setup do
    @course_registration = course_registrations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:course_registrations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create course_registration" do
    assert_difference('CourseRegistration.count') do
      post :create, course_registration: {  }
    end

    assert_redirected_to course_registration_path(assigns(:course_registration))
  end

  test "should show course_registration" do
    get :show, id: @course_registration
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @course_registration
    assert_response :success
  end

  test "should update course_registration" do
    patch :update, id: @course_registration, course_registration: {  }
    assert_redirected_to course_registration_path(assigns(:course_registration))
  end

  test "should destroy course_registration" do
    assert_difference('CourseRegistration.count', -1) do
      delete :destroy, id: @course_registration
    end

    assert_redirected_to course_registrations_path
  end
end
