# CF_SQL

#SQL queries created during the CareerFoundry DA course

#The code and queries youl'll find here relate to a fictitious video rental company called Rockbuster. 

#We extracted information relating to sales insights, customer locations, market performances, rental durations, performances with titles and genres and also title age ratings. Thrse scripts/ queries were then used to provide a visual story via Tableau to the stakeholders of the company for review along with some suggestions on improving performance and sales.

# Revenue by rental duration

"SELECT SUM (amount),
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

ORDER BY SUM (amount) DESC LIMIT 5"					
					
# Rental Volume by Genre					
					
"SELECT COUNT (rental_id), 
name

FROM rental 

INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id

INNER JOIN film_category
ON inventory.film_id = film_category.film_id

INNER JOIN category
ON film_category.category_id = category.category_id

GROUP BY 
name

ORDER BY COUNT (rental_id) DESC LIMIT 10"					
					
# Top ten revenue movie titles					
					
"SELECT SUM (amount), 
title

FROM payment 

INNER JOIN rental
ON payment.rental_id = rental.rental_id

INNER JOIN inventory
ON rental.inventory_id = inventory.inventory_id

INNER JOIN film
ON inventory.film_id = film.film_id

GROUP BY 
title

ORDER BY SUM (amount) DESC LIMIT 10"				
				
# Customer Base top ten countries				
				
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
	
# Rent volume by Age rating

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	![image](https://github.com/markstephendata/CF_SQL/assets/145265412/b923be87-f786-45ec-a0d9-40fcfcd1ab20)

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	![image](https://github.com/markstephendata/CF_SQL/assets/145265412/8ed3580c-beb7-43c1-9478-e9e50dc1414d)
				
				
				
				
				
				
				
				
				
				
				
				
				
				![image](https://github.com/markstephendata/CF_SQL/assets/145265412/64bc1f27-4c26-4296-98c0-f3b8407c2ceb)
					
					
					
					
					
					
					
					
					
					
					
					
					
					![image](https://github.com/markstephendata/CF_SQL/assets/145265412/e4f99877-47b0-4bfb-9d16-a17732b0e5e5)
					
					
					
					
					
					
					
					
					
					
					
					
					
