class Category < ApplicationRecord
  has_and_belongs_to_many :goals

  def goal_count
    self.goals.count
  end
  
end
