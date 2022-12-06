select count(*) from film
where length > (select avg(length) from film);


select count(*) from film where rental_rate = (select max(rental_rate) from film); 

select * from film where rental_rate =(select min(rental_rate) from film) and replacement_cost = (select min(replacement_cost) from film);

SELECT customer.first_name, customer.last_name, payment.customer_id, COUNT(payment.customer_id)
FROM payment, customer
WHERE customer.customer_id = payment.customer_id
GROUP BY customer.first_name, customer.last_name, payment.customer_id
ORDER BY COUNT(payment.customer_id) DESC;



