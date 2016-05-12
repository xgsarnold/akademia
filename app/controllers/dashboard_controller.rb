class DashboardController < ApplicationController
  def students
    @student = Student.find_by(id: current_user.person_id)
    # @student = Student.find_by(id: 1)
    @courses = @student.my_courses
    # @classmates = @student.classmates()
    # @teacher = Teacher.find_by(id: current_user.person_id)
    # @courses = @teacher.courses
  end

  def teachers
    @teacher = Teacher.find_by(id: current_user.person_id)
    @courses = @teacher.courses
  end
end
