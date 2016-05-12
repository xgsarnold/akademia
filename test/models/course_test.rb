require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  test "Courses exist" do
    assert Course
  end

  test "Courses have assignments" do
    course = courses(:philosophy)
    assignment_1 = assignments(:cave)
    assignment_2 = assignments(:republic)
    course.assignments << assignment_1
    course.assignments << assignment_2
    assert_equal 2, course.assignments.length
  end

  test "Courses belong to teacher" do
    course = courses(:philosophy)
    teacher = teachers(:aristotle)
    teacher.courses << course
    assert_equal teacher, course.teacher
  end

  test "Courses must have course names" do
    course = Course.new(course_name: "Philosophy", semester: "Fall", year: Time.now.year)
    assert_not course.save, "Save course without course name."
  end

  test "Courses must have semester" do
    course = Course.new(course_name: "Philosophy", semester: "Fall", year: Time.now.year)
    assert_not course.save, "Save course without semester."
  end

  test "Courses must have year" do
    course = Course.new(course_name: "Philosophy", semester: "Fall", year: Time.now.year)
    assert_not course.save, "Save course without year."
  end
end
