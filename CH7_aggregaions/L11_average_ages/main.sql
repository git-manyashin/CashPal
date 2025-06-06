SELECT ROUND(AVG(age)) AS average_age, country_code
FROM users
GROUP BY country_code