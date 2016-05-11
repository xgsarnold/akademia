require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  test "Teachers exist" do
    assert Student
  end

  test "Teachers have users" do
    teacher = teachers(:geoff)
    user = users(:teacher)
    teacher.users << user
    assert_equal user, teacher.users.first
  end

  test "Teachers must have birthdate" do
    teacher_1 = teachers(:geoff)
    teacher_2 = teachers(:no_birthdate)
    assert teacher_1
    refute teacher_2
  end

  test "Teachers must have first name" do
    teacher_1 = teachers(:geoff)
    teacher_2 = teachers(:no_fname)
    assert teacher_1
    refute teacher_2
  end

  test "Teachers must have last name" do
    teacher_1 = teachers(:geoff)
    teacher_2 = teachers(:no_lname)
    assert teacher_1
    refute teacher_2
  end
end
