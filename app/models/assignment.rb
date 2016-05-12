class Assignment < ActiveRecord::Base
  belongs_to :student
  belongs_to :course

  validates :assignment_name, presence: true
  validates :weight, presence: true
  validates :assigned_at, presence: true
  validates :due_at, presence: true
end
