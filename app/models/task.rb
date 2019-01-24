class Task < ApplicationRecord
  belongs_to :goal

  validates :date, :task_name, :duration, presence: true

end
