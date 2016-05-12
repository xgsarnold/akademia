class DashboardController < ApplicationController
  def index
    user = User.find_by(id: params[:id])
    if user.person_type == "Student"
      @student = Student.find_by(id: user.person_id)
      # @student = Student.find_by(id: 1)
      @courses = @student.my_courses
      # @classmates = @student.classmates()
    else
      @teacher = Teacher.find_by(id: user.person_id)
      @courses = @teacher.courses
  end
end
