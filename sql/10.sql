/*
 * Use a JOIN to list each film and the number of actors who are listed for that film.
 * Use tables film and film_actor.
 */
select film.title, film.film_id, count(film_actor.actor_id) as actor_count from film inner join film_actor on film.film_id=film_actor.film_id group by film.film_id order by actor_count, title;
