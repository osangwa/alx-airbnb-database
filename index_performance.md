# Index Performance

## Before Indexes
- Queries on `users.email`, `bookings.user_id`, and `properties.location` are slower due to full table scans.

## After Indexes
- `CREATE INDEX` commands applied.
- EXPLAIN shows usage of indexes.
- Query times significantly improved on large datasets.
