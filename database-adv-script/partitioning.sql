-- Partition bookings table by YEAR(check_in)
ALTER TABLE bookings
PARTITION BY RANGE (YEAR(check_in)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION pmax VALUES LESS THAN MAXVALUE
);

-- Test: Fetch bookings in 2024
SELECT * FROM bookings
WHERE YEAR(check_in) = 2024;
