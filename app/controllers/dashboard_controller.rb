class DashboardController < ApplicationController
  def index
    @user = User.find_by(id: params[:id])
    if @user.person_type == "Student"
      @student = Student.find_by(id: @user.person_id)
      @courses = @student.my_courses
      @classmates = 
  end
end
