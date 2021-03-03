/*
 * Use a JOIN to count the number of English language films in each category.
 * Use table category, film_category, film, and language.
 */
select category.name, count(category.name) as sum from film left join film_category on film.film_id=film_category.film_id left join category on film_category.category_id=category.category_id left join language on language.language_id=film.language_id where language.name='English' group by category.name order by category.name;
