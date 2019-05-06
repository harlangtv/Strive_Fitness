class DropGoalCategories < ActiveRecord::Migration[5.2]
  def change
    drop_table :goal_categories
  end
end
