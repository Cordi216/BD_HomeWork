SELECT * FROM hotels;
SELECT * FROM rooms WHERE hotelid = 1 AND isbooked = FALSE;
SELECT * FROM hotels ORDER BY rating DESC;
SELECT h.hotelname, COUNT(r.isbooked) AS num_booked_rooms 
FROM hotels h 
JOIN rooms r ON h.hotelid = r.hotelid 
WHERE r.isbooked = TRUE 
GROUP BY h.hotelid 
HAVING COUNT(r.isbooked) > 2;
