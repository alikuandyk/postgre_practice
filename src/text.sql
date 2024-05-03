SELECT name
FROM country
WHERE name LIKE '%a%a%' AND name NOT LIKE '%a%a%a%';

SELECT name
FROM country
WHERE name LIKE '%a%' AND name NOT LIKE '%e%';

SELECT name
FROM country
WHERE name ilike '_%a' AND name ilike '%a_';

SELECT name
FROM country
ORDER BY name DESC;

SELECT concat(name, ' ', code) AS country_and_code
FROM country;

