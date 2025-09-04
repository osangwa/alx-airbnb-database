-- Non-correlated subquery: Properties with average rating > 4.0
SELECT p.id, p.title
FROM properties p
WHERE (
    SELECT AVG(r.rating)
    FROM reviews r
    WHERE r.property_id = p.id
) > 4.0;

-- Correlated subquery: Users with more than 3 bookings
SELECT u.id, u.name
FROM users u
WHERE (
    SELECT COUNT(*)
    FROM bookings b
    WHERE b.user_id = u.id
) > 3;
