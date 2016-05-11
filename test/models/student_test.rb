require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  test "Students exist" do
    assert Student
  end

  test "Students have users" do
    student = Student.new(first_name: "Geoff", last_name: "Arnold", birthdate: "1988-10-15")
    user = User.new(email: "geoffrey.s.arnold@gmail.com", password: "monkey", person_id: student.id, person_type: "Student")
    assert_equal user, student.users.first
  end
end
