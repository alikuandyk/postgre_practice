SELECT name
FROM country
WHERE continent = 'Africa' AND population > 100000000 AND lifeexpectancy > 70;

SELECT name
FROM country
WHERE continent = 'Europe' AND (governmentform = 'Constitutional Monarchy' OR governmentform = 'Republic') AND headofstate IS NOT NULL;

SELECT name
FROM country
WHERE continent <> 'Asia' AND gnp > 500000000000 AND surfacearea < 500000;

SELECT name
FROM country
WHERE (name LIKE 'A%' OR name LIKE 'B%') AND indepyear < 1800;

SELECT name
FROM country
WHERE gnp > gnpold AND lifeexpectancy > 78;
