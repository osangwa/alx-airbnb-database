# Partition Performance

## Approach
- Partitioned `bookings` table by YEAR(check_in).

## Test Query
- SELECT bookings WHERE YEAR(check_in) = 2024.

## Result
- Queries on specific years now access only relevant partitions.
- Reduced I/O and improved query speed.
