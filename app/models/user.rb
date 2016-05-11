class User < ActiveRecord::Base
  belongs_to :person, polymorphic: true
  validates :email, presence: true
  validates :password, presence: true, uniqueness: true
end
