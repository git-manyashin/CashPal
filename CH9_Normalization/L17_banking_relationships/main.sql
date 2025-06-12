CREATE TABLE banks (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  routing_number INTEGER NOT NULL
);

CREATE TABLE users_banks (
  user_id INTEGER,
  bank_id INTEGER,
  UNIQUE(user_id, bank_id)
);
