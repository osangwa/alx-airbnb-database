-- Initial complex query: All bookings with user, property, and payment details
SELECT b.id AS booking_id,
       u.name AS guest_name,
       u.email,
       p.title AS property_title,
       p.location,
       pay.amount AS payment_amount,
       pay.status AS payment_status,
       b.check_in,
       b.check_out
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
INNER JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;
