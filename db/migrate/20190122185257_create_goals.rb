class CreateGoals < ActiveRecord::Migration[5.2]
  def change
    create_table :goals do |t|
      t.string :goal_name
      t.integer :user_id
      t.integer :frequency
      t.integer :duration

      t.timestamps
    end
  end
end
