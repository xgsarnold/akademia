class Teacher < ActiveRecord::Base
  has_many :users, as: :person
  has_many :courses
  has_many :assignments, through: :courses

  # accepts_nested_attributes_for :users

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true
end
