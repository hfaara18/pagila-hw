/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */
select film.title, sum(payment.amount) as profit from film left join inventory on film.film_id=inventory.film_id left join rental on inventory.inventory_id=rental.inventory_id left join payment on payment.rental_id=rental.rental_id where payment.amount>= 0 group by film.title order by profit DESC;
