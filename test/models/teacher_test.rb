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
    teacher_2 = Teacher.create(first_name: "Geoff", last_name: "Arnold")
    assert teacher_1
    refute teacher_2
  end

  test "Teachers must have first name" do
    teacher_1 = teachers(:geoff)
    teacher_2 = Teacher.create(last_name: "Arnold", birthdate: "1988-10-15")
    assert teacher_1
    refute teacher_2
  end

  test "Teachers must have last name" do
    teacher_1 = teachers(:geoff)
    teacher_2 = Teacher.create(first_name: "Geoff", birthdate: "1988-10-15")
    assert teacher_1
    refute teacher_2
  end
end
