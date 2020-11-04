/*
How can you produce a list of the start times for bookings by members named 'David Farrell'?
*/

SELECT b.starttime
FROM cd.members m
JOIN cd.bookings b ON b.memid = m.memid
WHERE m.surname = 'Farrell' AND m.firstname = 'David'
ORDER BY b.starttime ASC

