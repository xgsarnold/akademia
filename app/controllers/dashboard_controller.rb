class DashboardController < ApplicationController
  def students
    @student = Student.find_by(id: current_user.person_id)
    @courses = @student.my_courses
  end

  def teachers
    @teacher = Teacher.find_by(id: current_user.person_id)
    @courses = @teacher.courses
  end
end
