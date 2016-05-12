require 'test_helper'

class AssignmentTest < ActiveSupport::TestCase
  test "Assignments exist" do
    assert Assignment
  end

  test "Assignments belong to students" do
    student = students(:geoff)
    assignment = assignments(:cave)
    student.assignments << assignment
    assert_equal student, assignment.student
  end

  test "Assignments belong to courses" do
    course = courses(:philosophy)
    assignment = assignments(:cave)
    course.assignments << assignment
    assert_equal course, assignment.course
  end

  test "Assignments must have weight" do
    assignment = Assignment.new(assignment_name: "Plato Cave", assigned_at: Time.now.yesterday, due_at: Time.now.tomorrow)
    assert_not assignment.save, "Save assignment without weight."
  end

  test "Assignments must have assign date" do
    assignment = Assignment.new(assignment_name: "Plato Cave", due_at: Time.now.tomorrow, weight: 0.25)
    assert_not assignment.save, "Save assignment without assign date."
  end

  test "Assignments must have due date" do
    assignment = Assignment.new(assignment_name: "Plato Cave", assigned_at: Time.now.yesterday, weight: 0.25)
    assert_not assignment.save, "Save assignment without due date."
  end

  test "Assignments must have assignment name" do
    assignment = Assignment.new(assigned_at: Time.now.yesterday, due_at: Time.now.tomorrow, weight: 0.25)
    assert_not assignment.save, "Save assignment without assignment name."
  end
end
