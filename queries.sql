
use airlines;

-- Customers who completed a flight

SELECT c.name, f.flight_number, b.booking_date
FROM Bookings b
JOIN Customers c ON b.customer_id = c.customer_id
JOIN Flights f ON b.flight_id = f.flight_id
WHERE b.status = 'Completed';


--  Total revenue earned per flight

SELECT f.flight_number, r.total_earned
FROM Revenue r
JOIN Flights f ON r.flight_id = f.flight_id;

-- How many flights were cancelled

SELECT COUNT(*) AS cancelled_flights
FROM Bookings
WHERE status = 'Cancelled';

-- Average rating for each flight

SELECT f.flight_number, AVG(fe.rating) AS average_rating
FROM Feedback fe
JOIN Flights f ON fe.flight_id = f.flight_id
GROUP BY f.flight_number;

-- Number of bookings per day

SELECT booking_date, COUNT(*) AS total_bookings
FROM Bookings
GROUP BY booking_date
ORDER BY booking_date;

-- Most popular destination

SELECT destination, COUNT(*) AS times_booked
FROM Flights f
JOIN Bookings b ON f.flight_id = b.flight_id
GROUP BY destination
ORDER BY times_booked DESC
LIMIT 1;

-- Total revenue loss due to cancellations

SELECT SUM(cancelled_loss) AS total_cancel_loss
FROM Revenue;

-- Flights that caused the most cancellation losses

SELECT f.flight_number, r.cancelled_loss
FROM Revenue r
JOIN Flights f ON r.flight_id = f.flight_id
ORDER BY r.cancelled_loss DESC
LIMIT 3;

-- Customer repeat booking behavior

SELECT c.name, COUNT(b.booking_id) AS total_bookings
FROM Customers c
JOIN Bookings b ON c.customer_id = b.customer_id
GROUP BY c.name
HAVING total_bookings > 1;

--  Feedback summary with sentiment-like filtering

SELECT 
    CASE 
        WHEN rating >= 4 THEN 'Positive'
        WHEN rating = 3 THEN 'Neutral'
        ELSE 'Negative'
    END AS sentiment,
    COUNT(*) AS total_feedbacks
FROM Feedback
GROUP BY sentiment;







