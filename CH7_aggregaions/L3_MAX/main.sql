SELECT name, MAX(age) as age
FROM users
WHERE is_admin = true;
