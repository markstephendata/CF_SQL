SELECT SUM (amount),
rental_duration

FROM payment 

INNER JOIN rental
ON payment.rental_id = rental.rental_id

INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id

INNER JOIN film
ON inventory.film_id = film.film_id

GROUP BY 
rental_duration

ORDER BY SUM (amount) DESC LIMIT 5					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
					
