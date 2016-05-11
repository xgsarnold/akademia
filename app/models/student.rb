class Student < ActiveRecord::Base
  has_many :users, as: :person
end
