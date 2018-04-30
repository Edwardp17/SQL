WITH english_films as (
    SELECT film_id
    FROM film
    WHERE language_id =1
)

, rented_05 AS (
    SELECT film_id
    FROM inventory i
    JOIN rental r
    ON r.inventory_id = i.inventory_id
    WHERE r.rental_date < CAST('2005-05-25' AS timestamp)
)

SELECT f.rental_rate
FROM film f
WHERE f.film_id IN (SELECT film_id FROM english_films)
    AND f.film_id IN (SELECT film_id FROM rented_05);


-------------------------------------------------------

WITH dur_200 AS(
    SELECT rental_duration
        , count(rental_duration) as cnt_dur
        , RANK() OVER (ORDER BY count(rental_duration) ASC) as dur_200_rnk
    FROM film
    GROUP BY rental_duration
    HAVING count(rental_duration) > 200
)

, relevant_durations AS (
    SELECT rental_duration
    FROM dur_200
    WHERE dur_200_rnk <=2
)

, actor_1_films AS (
    SELECT f.film_id
    , f.length
    , RANK() OVER (ORDER BY f.length DESC) as length_rnk
    FROM film f
    JOIN film_actor fa
    ON fa.film_id = f.film_id
    WHERE fa.actor_id = 6
)

, relevant_films AS(
    SELECT film_id
    FROM actor_1_films
    WHERE length_rnk <= 5
)

SELECT AVG(f.replacement_cost)
FROM film f
WHERE f.rental_duration IN (SELECT rental_duration FROM relevant_durations)
AND f.film_id IN (SELECT film_id FROM relevant_films);
