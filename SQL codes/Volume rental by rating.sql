SELECT COUNT (rental_id), 
rating

FROM rental 

INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id

INNER JOIN film
ON inventory.film_id = film.film_id

GROUP BY 
rating

ORDER BY COUNT (rental_id) DESC LIMIT 10	
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
