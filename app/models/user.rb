class User < ActiveRecord::Base
  belongs_to :person, polymorphic: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
