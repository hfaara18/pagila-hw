/*
 * Count the total number of G rated films.
 * HINT:
 * Use the count() aggregation function and the rating column of the film table.
 */
select count(title) from film where rating='G';
