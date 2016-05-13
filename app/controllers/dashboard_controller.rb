class DashboardController < ApplicationController
  def students
    if current_user && current_user.person_type == "Teacher"
      redirect_to dashboard_teachers_path
    else
      @student = Student.find_by(id: current_user.person_id)
      @courses = @student.my_courses
    end
  end

  def teachers
    if current_user && current_user.person_type == "Student"
      redirect_to dashboard_students_path
    else
      @teacher = Teacher.find_by(id: current_user.person_id)
      @courses = @teacher.courses
    end
  end
end
