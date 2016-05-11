require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "Students exist" do
    assert Student
  end

  test "Students have users" do
    student = students(:geoff)
    user = users(:student)
    student.users << user
    assert_equal user, student.users.first
  end

  test "Students must have birthdate" do
    student_1 = students(:geoff)
    student_2 = Student.create(first_name: "Geoff", last_name: "Arnold")
    assert student_1
    refute student_2
  end

  test "Students must have first name" do
    student_1 = students(:geoff)
    student_2 = Student.create(last_name: "Arnold", birthdate: "1988-10-15")
    assert student_1
    refute student_2
  end

  test "Students must have last name" do
    student_1 = students(:geoff)
    student_2 = Student.create(first_name: "Geoff", birthdate: "1988-10-15")
    assert student_1
    refute student_2
  end
end
