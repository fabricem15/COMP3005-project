-- 1. View all exercises from workout number 1
select * from exercises 
natural join workouts 
where workout_id=1

-- 2. List all members registered in the Yoga Flow class
SELECT members.* FROM members 
NATURAL JOIN MEMBER_CLASSES NATURAL JOIN CLASSES
WHERE CLASSES.class_name='Yoga Flow'

-- 3. Get all classes scheduled on a tuesday
select * from classes
natural join bookings
where bookings.day_of_week='Tuesday'


-- 4. update member profile for Bob Williams after a 10kg weight loss 
UPDATE members 
SET weight = members.weight - 10 
where members.first_name = 'Bob' AND members.last_name='Williams'


-- 5. Get the member with the most workouts
SELECT members.*, COUNT(*) as num_workouts 
from members natural join workout_history 
group by member_id 
order by num_workouts desc limit 1


-- 6. add new workout history for Jane Smith who is a gym rat and loves HIIT
INSERT into workout_history (member_id, workout_id) 
values ((select member_id from members where first_name='Jane'and last_name='Smith'),
        (select workout_id from workouts where workout_name='HIIT Workout'));
        

-- 7. Add new member goal
INSERT INTO fitness_goals (member_id, goal_name, goal_description, goal_type_id, target_value, start_date, end_date, achieved)
VALUES (2, 'Improve Running Pace', 'Training to reduce running time for a 5K race', 3, NULL, '2023-11-01', '2023-12-31', FALSE)


-- 8. Delete the Taekwando class -> deletes every booking that references it 
DELETE FROM classes where class_name = 'Taekwando'


-- 9. Insert class notes for trainer with id 3
INSERT INTO class_history (trainer_id, class_id, notes, attendance) values (3, 2, 'Great class today! Focused on core exercises and cardio. Encouraged proper form throughout the session.', 25) 

-- 10. Update a class by changing the trainer
UPDATE classes 
SET trainer_id = 7
where class_id = 1 

-- 11. Delete injury rehabilitation goal type 
DELETE FROM goal_type where goal_title = 'Injury Rehabilitation'
