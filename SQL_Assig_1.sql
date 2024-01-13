--Week 5 - Monday Questions 




--1. How many actors are there with the last name ‘Wahlberg’? 
select count(*) 
from actor
where last_name ='Wahlberg'

--2. How many payments were made between $3.99 and $5.99? 
select count(*)
from payment 
where amount >3.99 and amount <5.99

select * 
from payment 
--3. What film does the store have the most of? (search in inventory) 

select title, count(title) as frequentfilm
from film 
group by title

--4. How many customers have the last name ‘William’? 
select count(*)
from customer
where last_name = 'William'

select *
from customer

--What store employee (get the id) sold the most rentals? 
select * from rental 

select count(staff_id) as NumberOfEmployee
from rental 
group by staff_id

--6. How many different district names are there?
select count(distinct first_name)
from actor 

--7. What film has the most actors in it? (use film_actor table and get film_id) 

select film_id, count(actor_id) as NumberOfActors 
from film_actor
group by film_id ; 


Select film_id
From (
  SELECT film_id, COUNT(actor_id) AS NumberOfActors 
  FROM film_actor
  GROUP BY film_id
) AS subquery
ORDER BY NumberOfActors DESC
LIMIT 1


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table) 

Select COUNT(*) 
from customer 
Where store_id = 1 AND last_name Like '%on';

select * from customer
--How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers  with ids between 380 and 430? (use group by and having > 250) 
Select amount, COUNT(*) 
From payment
Where customer_id Between 380 And 430 
group by amount 
having COUNT(*) > 250;

select * from payment 

--10. Within the film table, how many rating categories are there? And what rating has the most  movies total?
Select Count (DISTINCT rating) As rating_categories
FROM film;

select * from film 