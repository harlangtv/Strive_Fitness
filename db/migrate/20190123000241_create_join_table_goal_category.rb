class CreateJoinTableGoalCategory < ActiveRecord::Migration[5.2]
  def change
    create_join_table :goals, :categories do |t|
      # t.index [:goal_id, :category_id]
      # t.index [:category_id, :goal_id]
    end
  end
end
