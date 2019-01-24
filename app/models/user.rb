class User < ApplicationRecord
  has_many :goals
  has_many :tasks, through: :goals

  validates :first_name, :last_name, presence: true
  validates :email, uniqueness: true

  has_secure_password

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def user_goals
    goals = self.goals
  end

  def user_task_info
    task_info = self.tasks.map {|t| [t.task_name, t.date]}
    #this returns an array of task arrays for the specified user
    task_item = task_info.each {|i| puts "Task Name: #{i[0]}, Task Date: #{i[1].strftime("%b %d, %Y")}"}
    # task item is the individual task - task_name, task_date
  end




end
