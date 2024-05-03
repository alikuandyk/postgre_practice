SELECT AVG(surfacearea) AS average_surface_area
FROM country
WHERE governmentform = 'Republic';

SELECT SUM(population) AS total_population
FROM country
WHERE lifeexpectancy > 75;

SELECT MAX(gnp) AS max_gnp
FROM country
WHERE indepyear > 1950;

SELECT MIN(gnpold) AS min_gnp_old
FROM country
WHERE continent = 'Europe';

SELECT COUNT(*) AS num_countries
FROM country
WHERE continent = 'Africa' AND headofstate IS NULL;
