class CreateCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :categories do |t|
      t.string :goal_type

      t.timestamps
    end
  end
end
