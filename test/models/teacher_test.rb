require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  test "Teachers exist" do
    assert Student
  end

  test "Teachers have users" do
    teacher = teachers(:aristotle)
    user = users(:teacher)
    teacher.users << user
    assert_equal user, teacher.users.first
  end

  test "Teachers must have birthdate" do
    teacher_1 = teachers(:aristotle)
    teacher_2 = Teacher.new(first_name: "Geoff", last_name: "Arnold")
    assert teacher_1
    assert_not teacher_2.save, "Saved teacher without birthdate."
  end

  test "Teachers must have first name" do
    teacher_1 = teachers(:aristotle)
    teacher_2 = Teacher.new(last_name: "Arnold", birthdate: "1988-10-15")
    assert teacher_1
    assert_not teacher_2.save, "Saved teacher without first name."
  end

  test "Teachers must have last name" do
    teacher_1 = teachers(:aristotle)
    teacher_2 = Teacher.new(first_name: "Geoff", birthdate: "1988-10-15")
    assert teacher_1
    assert_not teacher_2.save, "Saved teacher without last name."
  end

  test "Teachers have many courses" do
    teacher = teachers(:aristotle)
    course_1 = courses(:philosophy)
    course_2 = courses(:psychology)
    teacher.courses << course_1
    teacher.courses << course_2
    assert_equal 2, teacher.courses.length
  end

  test "Teachers have many assignments through courses" do
    teacher = teachers(:aristotle)
    course = courses(:philosophy)
    assignment_1 = assignments(:cave)
    assignment_2 = assignments(:republic)
    teacher.courses << course
    course.assignments << assignment_1
    course.assignments << assignment_2
    assert_equal 2, teacher.assignments.length
  end
end
