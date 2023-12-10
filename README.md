# COMP3005-project



## Database Schema 

1. Members: 
(member_id, first_name, last_name, birth_date, sex, height, weight, signup_date, phone, email, password)

2. Trainers:
(trainer_id, first_name, last_name, birt_date, sex, email, password, hire_date, phone, bio)

3. Staff: 
(staff_id, first_name, last_name, birt_date, sex, email, password, hire_date, salary)

4. Classes: 
(class_id, class_name, day, time, room_id, trainer_id, class_type, price)

5. Rooms: 
(room_id, room_name, capacity)

6. Equipment: 
(equipment_id, equipment_name, room_id, quantity, purchase_date)

7. Workouts: 
(workout_id, workout_name, duration)

8. Exercises: 
(exercise_id, exercise_name, reps, sets, workout_id)

9. Fitness goals: 
(goal_id, goal_title, goal_type, unit)

10. Transactions: 
(transaction_id, date, transaction_amount, transaction_type, member_id)


11. Member_classes:
(member_id, class_id)

12. Member_goals:
(member_id, goal_id, amount, due_date)

13. Workout_history:
(member_id, workout_date, workout_id)

14. Bookings:
(class_id, day_of_week, time_of_day, room_id)

15. Training_sesions_history: 
(trainer_id, class_id, notes, attendance)

