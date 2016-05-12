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
    student_2 = Student.new(first_name: "Geoff", last_name: "Arnold")
    assert student_1
    assert_not student_2.save, "Saved student without birthdate."
  end

  test "Students must have first name" do
    student_1 = students(:geoff)
    student_2 = Student.new(last_name: "Arnold", birthdate: "1988-10-15")
    assert student_1
    assert_not student_2.save, "Saved student without first name."
  end

  test "Students must have last name" do
    student_1 = students(:geoff)
    student_2 = Student.new(first_name: "Geoff", birthdate: "1988-10-15")
    assert student_1
    assert_not student_2.save, "Saved student without last name."
  end

  test "Students can get course grade from assignment grades" do
    student = students(:geoff)
    course = courses(:philosophy)
    assignment_1 = assignments(:cave)
    assignment_2 = assignments(:republic)
    student.assignments << assignment_1
    student.assignments << assignment_2
    course.assignments << assignment_1
    course.assignments << assignment_2
    assert_equal 0.7625, student.course_grade(course.id)
  end

  test "Find student courses" do
    student = students(:geoff)
    course_1 = courses(:philosophy)
    course_2 = courses(:psychology)
    assert_equal [course_1, course_2], student.my_courses
  end

  test "Find student classmates" do
    student_1 = students(:geoff)
    student_2 = students(:scott)
    student_3 = students(:michael)
    course = courses(:philosophy)
    assert_equal [student_2, student_3], student_1.classmates(course.id)
  end
end
