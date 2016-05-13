# I decided to go with polymorphism in order to prevent users from having
# to indicate which type of user they would be and thereby to increase security.

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  belongs_to :person, polymorphic: true
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
end
