class User < ApplicationRecord
  has_many :goals
  has_many :tasks, through: :goals

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true, presence: true

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def user_goals
    goals = self.goals
  end

  def user_task_info
    task_info = self.tasks.map {|t| [t.date, t.task_name]}
    task_info.sort
    #this returns an array of task arrays for the specified user sorted by date
  end




end
