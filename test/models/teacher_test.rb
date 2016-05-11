require 'test_helper'

class TeacherTest < ActiveSupport::TestCase
  test "Teachers exist" do
    assert Student
  end

  test "Teachers have users" do
    teacher = Teacher.new(first_name: "Geoff", last_name: "Arnold", birthdate: "1988-10-15")
    user = User.new(email: "geoffrey.s.arnold@gmail.com", password: "monkey", person_id: teacher.id, person_type: "Teacher")
    assert_equal user, teacher.users.first
  end
end
