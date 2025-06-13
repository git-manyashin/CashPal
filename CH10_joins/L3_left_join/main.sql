SELECT users.name, SUM(transactions.amount) AS sum, count(transactions.id) AS count
FROM users
LEFT JOIN transactions
ON users.id = transactions.user_id
GROUP BY users.id
ORDER BY sum DESC;
