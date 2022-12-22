--ANSWERS TO 10 QUESTIONS
-- Question # 1
select count(last_name)
from actor
where last_name like 'Wahlberg'; --Answer is 2

--Question #2
select count(amount)
from payment
where amount >= 3.99 and amount <= 5.99; -- Answer is 4,802

--Question 3
select film_id, count(film_id)
from inventory
group by film_id
order by count(film_id) desc; --Answer is film_id 193 with 8 copies

--Question 4
select count(last_name)
from actor
where last_name like 'William'; -- Answer is 0

--Question 5
select count(rental_id)
from rental
where staff_id = 1; -- Answer is staff_id # 1 with 8,040 rentals

--Question 6
select count(distinct district)
from address a; --Answer is 378

--Question 7
select film_id, count(film_id)
from film_actor
group by film_id
order by count(film_id) desc; -- Answer is film_id #508 with 15 actors

--Question 8
select store_id, count(store_id)
from customer c
where last_name like '%es'
group by store_id; -- Answer is 13 customer have the last name ending in 'es' at store_id 1.

--Question 9
select amount, count(amount)
from payment p 
where customer_id >= 380 and customer_id <= 430
group by amount
order by count(amount) desc; -- Answer is 3

--Question 10
select rating, count(rating)
from film f
group by rating
order by count(rating) desc; --There are 5 ratings with PG-13 having the most total movies