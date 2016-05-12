# Named course instead of class in order to avoid confusion between Ruby
# reserved words and table names.

class Course < ActiveRecord::Base
  has_many :assignments
  has_many :course_registrations
  belongs_to :teacher

  validates :course_name, presence: true
  validates :semester, presence: true
  validates :year, presence: true

  def roster
    Student.joins(:course_registrations).where("course_id = #{self.id}")
  end
end
