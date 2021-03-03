/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */
select country.country, sum(payment.amount) as profit from country
    left join city on country.country_id=city.country_id
    left join address on city.city_id=address.city_id
    left join customer on customer.address_id=address.address_id
    left join rental on rental.customer_id=customer.customer_id
    left join payment on payment.rental_id=rental.rental_id where payment.amount >= 0
group by country.country
order by country.country;
