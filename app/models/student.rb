class Student < ActiveRecord::Base
  has_many :users, as: :person
  has_many :assignments
  has_many :course_registrations

  # accepts_nested_attributes_for :users

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true

  def course_grade(course_id)
    weighted_grades = []
    self.assignments.where(course_id: course_id).each do |a|
      weighted_grades << a.grade * a.weight
    end
    weighted_grades.sum
  end

  def my_courses
    courses = []
    self.course_registrations.each do |r|
      courses << Course.find_by(id: r.course_id)
    end
    courses
  end

  def classmates(course_id)
    Student.joins(:course_registrations).where("course_id = #{course_id}")
  end
end
