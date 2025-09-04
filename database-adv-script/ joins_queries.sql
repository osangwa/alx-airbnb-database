-- INNER JOIN: Retrieve all bookings with respective users
SELECT b.id AS booking_id, u.name AS guest_name, u.email, b.check_in, b.check_out
FROM bookings b
INNER JOIN users u ON b.user_id = u.id;

-- LEFT JOIN: Retrieve all properties and their reviews, including properties with no reviews
SELECT p.id AS property_id, p.title, r.rating, r.comment
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- FULL OUTER JOIN simulation using UNION (MySQL lacks direct FULL OUTER JOIN)
SELECT u.id AS user_id, u.name, b.id AS booking_id, b.check_in
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
UNION
SELECT u.id AS user_id, u.name, b.id AS booking_id, b.check_in
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id;
