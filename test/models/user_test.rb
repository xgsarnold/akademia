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
    teacher = teachers(:aristotle)
    user = users(:teacher)
    teacher.users << user
    assert_equal teacher, user.person
  end

  test "Users must have emails" do
    user_1 = users(:student)
    user_2 = User.new(password: "monkey")
    assert user_1
    assert_not user_2.save, "Saved user without email."
  end

  test "Users must have passwords" do
    user_1 = users(:student)
    user_2 = User.new(email: "geoffrey.s.arnold@gmail.com")
    assert user_1
    assert_not user_2.save, "Saved user without password."
  end

  test "Users cannot have same email" do
    user_1 = users(:student)
    user_2 = User.new(email: "geoffrey.s.arnold@gmail.com", password: "monkey")
    assert user_1
    assert_not user_2.save, "Saved user with duplicate email."
  end
end
