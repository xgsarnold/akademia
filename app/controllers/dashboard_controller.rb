class DashboardController < ApplicationController
  def students
    user = User.find_by(id: params[:id])
    @student = Student.find_by(id: user.person_id)
    # @student = Student.find_by(id: 1)
    @courses = @student.my_courses
    # @classmates = @student.classmates()
    @teacher = Teacher.find_by(id: user.person_id)
    @courses = @teacher.courses
  end

  def professors
    user = User.find_by(id: params[:id])
    @teacher = Teacher.find_by(id: user.person_id)
    @courses = @teacher.courses
  end
end
