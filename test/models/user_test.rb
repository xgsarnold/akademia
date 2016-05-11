require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "Users exist" do
    assert User
  end

  test "Users belong to students" do
    student = Student.new(first_name: "Geoff", last_name: "Arnold", birthdate: "1988-10-15")
    user = User.new(email: "geoffrey.s.arnold@gmail.com", password: "monkey", person_id: student.id, person_type: "Student")
    assert_equal student, user.person
  end

  test "Users belong to teachers" do
    teacher = Teacher.new(first_name: "Geoff", last_name: "Arnold", birthdate: "1988-10-15")
    user = User.new(email: "geoffrey.s.arnold@gmail.com", password: "monkey", person_id: student.id, person_type: "Student")
    assert_equal user, user.person
  end
end
