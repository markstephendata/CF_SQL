"SELECT COUNT (customer_id), 
country

FROM customer 

INNER JOIN address
ON customer.address_id = address.address_id

INNER JOIN city
ON address.city_id = city.city_id

INNER JOIN country
ON city.country_id = country.country_id

GROUP BY 
country

ORDER BY COUNT (customer_id) DESC LIMIT 10"	


	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
