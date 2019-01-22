class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :task_name
      t.integer :goal_id
      t.boolean :completed
      t.date :date
      t.integer :duration

      t.timestamps
    end
  end
end
