SELECT
  users.name,
  users.username,
  COUNT(*) AS support_ticket_count
FROM users
INNER JOIN support_tickets
  ON users.id = support_tickets.user_id
WHERE support_tickets.issue_type != 'Account Access'
GROUP BY users.id, users.name, users.username
HAVING COUNT(*) > 1
ORDER BY support_ticket_count DESC;