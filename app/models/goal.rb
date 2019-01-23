class Goal < ApplicationRecord
  has_many :tasks
  has_and_belongs_to_many :categories
  belongs_to :user

# Trying to make a dropdown of categories, that will show up when a user tries to make a new goal
  def category_name=(name)
    self.category = Category.find_by(goal_type: name)
  end

  # def category_name
  #   self.category ? self.category.goal_type : nil
  # end

end
