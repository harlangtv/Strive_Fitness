class Goal < ApplicationRecord
  has_many :tasks
  has_and_belongs_to_many :categories
  belongs_to :user

  validates :name , presence: true
  validates :name , uniqeness: true

  def goal_tasks
    puts self.tasks
  end

  def task_count
    self.tasks.count
  end

end
