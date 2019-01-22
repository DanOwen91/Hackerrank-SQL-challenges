# Solutions to challenges here: https://www.hackerrank.com/domains/sql?filters%5Bsubdomains%5D%5B%5D=select
# All Easy Challenges

#Revising the Select Query I
SELECT id, name, countrycode, district, population FROM CITY
WHERE population > 100000 AND countrycode = 'USA'

#Revising the Select Query II
SELECT name FROM CITY
WHERE countrycode = 'USA' AND population > 120000

#Select All
SELECT * FROM CITY

#Select By ID
SELECT * FROM CITY
WHERE id = 1661

#Japanese Cities' Attributes
SELECT * FROM CITY
WHERE countrycode = 'JPN'

#Japanese Cities' Names
SELECT name FROM CITY
WHERE countrycode = 'JPN'

#Weather Observation Station 1
SELECT city, state FROM station

#Weather Observation Station 3 (where is 2?)
SELECT DISTINCT city FROM station
WHERE MOD(id, 2) = 0 

#Weather Observation Station 4
SELECT COUNT(city) - COUNT(DISTINCT city) FROM station

#Weather Observation Station 5
SELECT city, LENGTH(city) FROM station
ORDER BY LENGTH(city), city LIMIT 1;
SELECT city, LENGTH(city) FROM station
ORDER BY LENGTH(city) DESC, city LIMIT 1;

#Weather Observation Station 6
SELECT DISTINCT city FROM station
WHERE city LIKE 'a%' OR
city LIKE 'e%' OR
city LIKE 'i%' OR
city LIKE 'o%' OR
city LIKE 'u%'

#Weather Observation Station 7
SELECT DISTINCT city FROM station
WHERE city LIKE '%a' OR
city LIKE '%e' OR
city LIKE '%i' OR
city LIKE '%o' OR
city LIKE '%u'

#Weather Observation Station 8
SELECT DISTINCT city 
FROM station 
where (city LIKE 'a%' OR 
city LIKE 'e%' OR
city LIKE 'i%' OR
city LIKE 'o%' OR
city LIKE 'u%') 
AND(
city LIKE '%a' OR
city LIKE '%e' OR
city LIKE '%i' OR
city LIKE '%o' OR
city LIKE '%u')

#Weather Observation Station 9
SELECT DISTINCT city 
FROM station 
where city NOT LIKE 'a%' AND 
city NOT LIKE 'e%' AND
city NOT LIKE 'i%' AND
city NOT LIKE 'o%' AND
city NOT LIKE 'u%'

#Weather Observation Station 10
SELECT DISTINCT city 
FROM station 
where city NOT LIKE '%a' AND 
city NOT LIKE '%e' AND
city NOT LIKE '%i' AND
city NOT LIKE '%o' AND
city NOT LIKE '%u'

#Weather Observation Station 11
SELECT DISTINCT city 
FROM station 
where (city NOT LIKE '%a' AND 
city NOT LIKE '%e' AND
city NOT LIKE '%i' AND
city NOT LIKE '%o' AND
city NOT LIKE '%u') 
OR (
city NOT LIKE 'a%' AND 
city NOT LIKE 'e%' AND
city NOT LIKE 'i%' AND
city NOT LIKE 'o%' AND
city NOT LIKE 'u%')

#Weather Observation Station 12
SELECT DISTINCT city 
FROM station 
where (city NOT LIKE '%a' AND 
city NOT LIKE '%e' AND
city NOT LIKE '%i' AND
city NOT LIKE '%o' AND
city NOT LIKE '%u') 
AND (
city NOT LIKE 'a%' AND 
city NOT LIKE 'e%' AND
city NOT LIKE 'i%' AND
city NOT LIKE 'o%' AND
city NOT LIKE 'u%')

#Higher Than 75 Marks
SELECT name FROM students
WHERE marks > 75 ORDER BY SUBSTRING(name, -3), id;

#Employee Names
SELECT name FROM Employee 
ORDER BY name ASC

#Employee Salaries
SELECT name FROM Employee
WHERE salary > 2000 AND months < 10
ORDER BY employee_id ASC
