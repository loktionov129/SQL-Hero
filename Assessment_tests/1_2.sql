/*
2. How many films begin with the letter J?

The answer should be 20.
*/

SELECT COUNT(film_id)
FROM film
WHERE title LIKE 'J%'

