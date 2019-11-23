DROP View if exists all_parties;
Create view all_parties 
as
SELECT first_name AS First_name, last_name AS Last_name , 'Actor' as source
FROM actor
Union 
SELECT first_name
,last_name
,'Staff' as source
FROM staff
Union all
Select first_name 
,last_name
,'Customer' as source 
From customer;
Select * from all_parties;

-- Question 2

SELECT COUNT(*)
FROM city
UNION
SELECT COUNT(*)
FROM country;


-- Question 2

SELECT customer_id
FROM customer
WHERE address_id IN
(
  SELECT address_id
  FROM address
  WHERE city_id IN
  (
    SELECT city_id
    FROM city
    WHERE city = 'London'
  )
)
UNION ALL
SELECT id
FROM customer_list
WHERE city = 'London';



