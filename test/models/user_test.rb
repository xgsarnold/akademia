require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Users exist" do
    assert User
  end

  test "Users belong to students" do
    student = students(:geoff)
    user = users(:student)
    student.users << user
    assert_equal student, user.person
  end

  test "Users belong to teachers" do
    teacher = teachers(:geoff)
    user = users(:teacher)
    teacher.users << user
    assert_equal teacher, user.person
  end

  test "Users must have emails" do
    user_1 = users(:student)
    user_2 = users(:no_email)
    assert user_1
    refute user_2
  end

  test "Users must have passwords" do
    user_1 = users(:student)
    user_2 = users(:no_password)
    assert user_1
    refute user_2
  end
end
