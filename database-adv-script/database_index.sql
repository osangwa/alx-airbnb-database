-- =========================
-- Create Indexes
-- =========================
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_location ON properties(location);

-- =========================
-- Measure performance before and after indexes
-- =========================

-- Example 1: Bookings by user_id
EXPLAIN ANALYZE
SELECT * 
FROM bookings
WHERE user_id = 5;

-- Example 2: Users by email
EXPLAIN ANALYZE
SELECT *
FROM users
WHERE email = 'guest@example.com';

-- Example 3: Properties by location
EXPLAIN ANALYZE
SELECT *
FROM properties
WHERE location = 'Kigali';
