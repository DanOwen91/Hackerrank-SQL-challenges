# Solutions to challenges here: https://www.hackerrank.com/domains/sql?filters%5Bsubdomains%5D%5B%5D=select
SELECT id, name, countrycode, district, population FROM CITY
WHERE population > 100000 AND countrycode = 'USA'
