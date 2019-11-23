Create view amt_of_copies as
SELECT title,
(SELECT COUNT(inventory.film_id)
	FROM inventory
	WHERE film.film_id = inventory.film_id ) AS "Copies"
FROM film;
Select * from amt_of_copies;
select title, "Copies" 
from amt_of_copies 
Where "Copies" =7;