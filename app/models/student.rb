class Student < ActiveRecord::Base
  has_many :users, as: :person
  has_many :assignments
  has_many :course_registrations

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true
end
