SELECT users.id,
   users.name,
   users.age,
   users.username,
   countries.name as country_name,
   SUM(transactions.amount) as balance
FROM users
LEFT JOIN transactions
ON transactions.user_id = users.id
INNER JOIN countries
ON users.country_code = countries.country_code
WHERE users.id = 6 AND transactions.was_successful;