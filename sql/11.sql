/* 
 * Use a JOIN to list the number of copies of each film in the inventory system that begins with the letter h.
 * Use tables inventory and film.
 * Order by film title alphabetically.
 */
select film.film_id, film.title, count(film.film_id) from inventory inner join film on film.film_id=inventory.film_id where film.title like 'H%' group by film.film_id order by film.title DESC;
