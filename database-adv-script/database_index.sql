-- Indexes for optimization
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_bookings_user_id ON bookings(user_id);
CREATE INDEX idx_bookings_property_id ON bookings(property_id);
CREATE INDEX idx_properties_location ON properties(location);

-- Example: Check performance before/after index
EXPLAIN SELECT * FROM bookings WHERE user_id = 5;
