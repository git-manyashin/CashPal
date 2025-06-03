SELECT *,
  CASE
    WHEN age > 55 OR country_code = 'CA' THEN true
    ELSE false
  END AS discount_eligible
FROM users;

/* SELECT *, IIF(age > 55 OR country_code = 'CA', true, false) AS discount_eligible
FROM users; */
