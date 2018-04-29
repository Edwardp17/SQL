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
