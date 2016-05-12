# Created this as join table to resolve has_many to has_many relationship
# between students and courses.

class CourseRegistration < ActiveRecord::Base
  belongs_to :student
  belongs_to :course
end
