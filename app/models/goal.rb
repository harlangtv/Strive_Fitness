class Goal < ApplicationRecord
  has_many :tasks
  has_and_belongs_to_many :categories
  belongs_to :user
end
