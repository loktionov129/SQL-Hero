/*
Produce a list of facilities with more than 1000 slots booked.
Produce an output table consisting of facility id and total slots, sorted by facility id.
*/

SELECT facid, SUM(slots) cslots
FROM cd.bookings b
GROUP BY facid
HAVING SUM(SLOTS) >= 1000
ORDER BY cslots DESC

