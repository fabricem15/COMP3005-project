-- 1. View all exercises from workout number 1
select * from exercises 
natural join workouts 
where workout_id=1
-- 2. List all members registered in the Pilates Power class
SELECT members.* FROM members NATURAL JOIN MEMBER_CLASSES NATURAL JOIN CLASSES WHERE CLASSES.class_name='Yoga Flow'

-- 3. Get all classes scheduled on a tuesday
select * from classes natural join bookings where bookings.day_of_week='Tuesday'

-- 4. update member profile for Bob Williams after a 10kg weight loss 
UPDATE members 
SET weight = members.weight - 10 
where members.first_name = 'Bob' AND members.last_name='Williams'

-- 5. Get the member with the most workouts
SELECT members.*, COUNT(*) as num_workouts 
from members natural join workout_history 
group by member_id 
order by num_workouts desc limit 1

-- 5. add new workout history for Jane Smith who is a gym rat and loves HIIT
INSERT into workout_history (member_id, workout_id) 
values ((select member_id from members where first_name='Jane'and last_name='Smith'),
		(select workout_id from workouts where workout_name='HIIT Workout'));
		
-- 6. Add new member goal


		