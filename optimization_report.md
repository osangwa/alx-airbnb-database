# Query Optimization Report

## Initial Query
- Joined `bookings`, `users`, `properties`, and `payments`.
- Some joins not necessary for certain analyses.

## Optimization
- Added indexes on join columns.
- Removed redundant joins where not needed.

## Result
- Execution time reduced.
- EXPLAIN shows more efficient query plan.
