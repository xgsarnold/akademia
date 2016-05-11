class Teacher < ActiveRecord::Base
  has_many :users, as: :person
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :birthdate, presence: true
end
