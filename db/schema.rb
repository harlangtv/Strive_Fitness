
ActiveRecord::Schema.define(version: 2019_01_23_131813) do

  create_table "categories", force: :cascade do |t|
    t.string "goal_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories_goals", id: false, force: :cascade do |t|
    t.integer "goal_id", null: false
    t.integer "category_id", null: false
  end

  create_table "goals", force: :cascade do |t|
    t.string "goal_name"
    t.integer "user_id"
    t.integer "frequency"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string "task_name"
    t.integer "goal_id"
    t.boolean "completed"
    t.date "date"
    t.integer "duration"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
  end

end
