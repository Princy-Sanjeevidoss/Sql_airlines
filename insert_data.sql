
use airlines;

INSERT INTO Flights (flight_number, origin, destination, price) VALUES
('UA112', 'New York', 'Los Angeles', 480.00),
('BA205', 'London', 'New York', 650.00),
('AF303', 'Paris', 'Dubai', 780.00),
('SQ421', 'Singapore', 'Sydney', 820.00);


INSERT INTO Customers (name, email) VALUES
('Emily Watson', 'emily.watson@example.com'),
('Liam Johnson', 'liam.johnson@example.com'),
('Olivia Smith', 'olivia.smith@example.com'),
('Noah Brown', 'noah.brown@example.com');


INSERT INTO Bookings (flight_id, customer_id, booking_date, status) VALUES
(1, 1, '2025-07-10', 'Booked'),
(2, 2, '2025-07-09', 'Completed'),
(3, 3, '2025-07-08', 'Cancelled'),
(4, 4, '2025-07-07', 'Completed'),
(1, 2, '2025-07-11', 'Cancelled');


INSERT INTO Feedback (customer_id, flight_id, rating, comment) VALUES
(1, 1, 5, 'Excellent service and smooth flight.'),
(2, 2, 4, 'Good experience but boarding was slow.'),
(3, 3, 2, 'Flight cancelled, disappointed.'),
(4, 4, 5, 'Top-notch comfort and food!');


INSERT INTO Revenue (flight_id, total_earned, cancelled_loss) VALUES
(1, 960.00, 480.00),
(2, 650.00, 0.00),
(3, 0.00, 780.00),
(4, 820.00, 0.00);
