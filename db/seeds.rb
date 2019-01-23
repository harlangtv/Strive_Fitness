# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#User.create(first_name: "Dania", last_name: "Herrera" , email: "danherrera0@gmail.com", photo: "na" )
#User.create(first_name: "Harlan",last_name: "Green-Taub", email: "Harlan@gmail.com", photo: "na")
#User.create(first_name: "Test1_first", last_name: "Test1_last" , email: "Test1@gmail.com", photo:"na")
#User.create(first_name: "Test2_second", last_name: "Test2_last" , email: "Test2@gmail.com", photo: "na")

#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)



Category.create(goal_type:"Flexibility")
Category.create(goal_type:"Strength")
Category.create(goal_type:"Core")
Category.create(goal_type:"Cardio")
Category.create(goal_type:"Group_Fitness")

Goal.create(id: 1, goal_name:"Run three times a week", user_id: , frequency: , duration: )
Goal.create(id: 2, goal_name:"Yoga once a week", user_id: , frequency: , duration: )
Goal.create(id: 3, goal_name:"Go to a kicboxing class twice a month", user_id: , frequency: , duration: )
Goal.create(id: 4, goal_name:"Attend a cycling class twice a month", user_id: , frequency: , duration: )

Task.create(task_name: "1. Run", goal_id:1, completed: 1, date:Date.new(2019, 02, 28), duration: 30)
Task.create(task_name: "2. Run", goal_id:1 completed: 1, date:Date.new(2019, 02, 28), duration: 30)
Task.create(task_name: "3. Run3", goal_id:1 completed: 1, date:Date.new(2019, 02, 28), duration: 30)
Task.create(task_name: "1. Attend a yoga class", goal_id: 2, completed: 1, date: , duration: 60)
Task.create(task_name: "1. Attend a kickboxing class", goal_id: 3, completed: 1, date:, duration: 60)
Task.create(task_name: "2. Attend a kickboxing class", goal_id: 3, completed: 1, date:, duration: 60)
Task.create(task_name: "1. Attend a cycling class", goal_id: 4, completed: 1, date:, duration: 45)
Task.create(task_name: "2. Attend a cycling class", goal_id: 4, completed: 1, date:, duration: 45 )
