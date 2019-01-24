Category.delete_all
Task.delete_all
Goal.delete_all
User.delete_all

puts "got rid of everything"

Category.create(goal_type:"Flexibility")
Category.create(goal_type:"Weight-Training")
Category.create(goal_type:"Endurance")
Category.create(goal_type:"Cardio")
Category.create(goal_type:"Group_Fitness")

puts "creating categories"

Goal.create(id: 1, goal_name:"Run three times a week", user_id: 1, frequency: 3, duration: 30 )
Goal.create(id: 2, goal_name:"Yoga once a week", user_id: 2, frequency: 1 , duration: 30 )
Goal.create(id: 3, goal_name:"Go to a kicboxing class twice a month", user_id: 4, frequency: 2 , duration: 60)
Goal.create(id: 4, goal_name:"Attend a cycling class twice a month", user_id: 3 ,frequency: 2, duration: 45)

puts "creating goals"

Task.create(task_name: "1. Run", goal_id:1, completed: 1, date: Date.new(2019, 01, 28), duration: 30)
Task.create(task_name: "2. Run", goal_id:1, completed: 1, date: Date.new(2019, 02, 01), duration: 30)
Task.create(task_name: "3. Run", goal_id:1, completed: 1, date: Date.new(2019, 02, 03), duration: 30)
Task.create(task_name: "1. Attend a yoga class", goal_id: 2, completed: 1, date: Date.new(2019, 01, 27) , duration: 60)
Task.create(task_name: "1. Attend a kickboxing class", goal_id: 3, completed: 1, date: Date.new(2019, 02, 01), duration: 60)
Task.create(task_name: "2. Attend a kickboxing class", goal_id: 3, completed: 1, date: Date.new(2019, 02, 13), duration: 60)
Task.create(task_name: "1. Attend a cycling class", goal_id: 4, completed: 1, date: Date.new(2019, 01, 29), duration: 45)
Task.create(task_name: "2. Attend a cycling class", goal_id: 4, completed: 1, date: Date.new(2019, 02, 27), duration: 45 )

puts "creating tasks"

User.create(id:1, first_name: "Tom", last_name: "Hanks" , email: "T@hanks.com", password_digest: "password", photo: "na")
User.create(id: 2, first_name: "Joe" , last_name: "Carrey", email: "J@carrey.com", password_digest: "password", photo: "na")
User.create(id: 3, first_name: "Lisa", last_name: "Dane", email: "L@dane.com", password_digest: "password" , photo: "na")
User.create(id: 4, first_name: "Nancy", last_name: "Smith", email: "N@smith.com", password_digest: "password" , photo: "na")
User.create(id: 5, first_name: "Jenna", last_name: "Jones", email: "J@jones.com", password_digest: "password" , photo: "na")

puts "created everything"
