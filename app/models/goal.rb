class Goal < ApplicationRecord
  has_many :tasks
  has_many :goal_categories
  has_many :categories, through: :goal_categories
  belongs_to :user
end
