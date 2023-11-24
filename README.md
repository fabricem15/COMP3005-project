# COMP3005-project


## Setup instructions 



## Database Schema 

--- Main entities
Members: 
(member_id, first_name, last_name, birth_date, sex, height, weight, signup_date, email, password)
Trainers:
(trainer_id, first_name, last_name, birt_date, sex, email, password, hire_date, contract_type, phone_number, bio)
Staff: 
(staff_id, first_name, last_name, birt_date, sex, email, password, hire_date, salary)
Classes: 
(class_id, class_name, day, time, room_id, trainer_id)
Rooms: 
(room_id, room_name, capacity)
Equipment: 
(equipment_id, equipment_name, room_id, quantity, purchase_date,)
Workouts: 
(workout_id, workout_name, duration)
Exercises: 
(exercise_id, exercise_name, reps, sets)
Fitness goals: 
(goal_id, goal_title, goal_type, due_date)
--- need some kind of metric here

Transaction_history: 
(transaction_id, date, transaction_amount, transaction_type, member_id)

---Relational/entities
Member_workouts:
(member_id, workout_id)
Bookings: 
(room_id, day, time, class_id)

Training_sesions: 
(trainer_id, class_id, notes, attendance)

-- consider the personal training one rescheduling
Workout_history: 
(member_id, date, workout_id)

