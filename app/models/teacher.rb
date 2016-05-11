class Teacher < ActiveRecord::Base
  has_many :users, as: :person
end
