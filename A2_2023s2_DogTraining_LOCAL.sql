-- 1. List all events that were conducted at the venues in the suburbs starting with A. 
--    Show Suburb and postcode of the venue, as well as description and date of the event. 
--    Order alphabetically by suburb and by event date within each suburb.

SELECT '1398875' AS StuID, v.Suburb, v.Postcode, e.Description, e.date
FROM event8875 e
INNER JOIN venue8875 v ON e.VenueID = v.venueID
WHERE v.Suburb LIKE 'A%'
ORDER BY v.Suburb, e.date;


-- 2. List all services that have never been requested at the venue located in Keilor Downs. 
--    Show package name and individual lesson cost ordered alphabetically by package name.

SELECT '1398875' AS StuID, s.PackageName, s.IndividualLessonCost
FROM services8875 s
WHERE s.ID NOT IN (
    SELECT sr.ServiceID
    FROM servicesrequested8875 sr
    JOIN booking8875 b ON sr.BookingID = b.BookingID
    JOIN venue8875 v ON b.VenueID = v.venueID
    WHERE v.Suburb = 'Keilor Downs'
)
ORDER BY s.PackageName;


-- 3. List all events in order of their popularity (most to least popular). 
--    Popularity = number of attendees (dogs) across all venues.

SELECT '1398875' AS StuID, e.Description, COUNT(a.DogID) AS Popularity
FROM event8875 e
INNER JOIN attendance8875 a ON e.EventID = a.EventID
GROUP BY e.Description
ORDER BY Popularity DESC;


-- 4. List trainers who provided more than 20 sessions/bookings. 
--    Show trainer full name, suburb, and number of sessions. 
--    Order from highest to lowest.

SELECT '1398875' AS StuID, CONCAT(t.SFirstName, ' ', t.SLastName) AS SFullName, v.Suburb, COUNT(b.Trainer) AS NumberOfSessions
FROM trainer8875 t
JOIN booking8875 b ON t.StaffID = b.Trainer
JOIN venue8875 v ON t.VenueID = v.venueID
GROUP BY SFullName, v.Suburb
HAVING NumberOfSessions > 20
ORDER BY NumberOfSessions DESC;


-- 5. List all venues and total for all lessons they provided in the previous year using Group lesson cost data. 
--    Only include lessons that offer group mode. 
--    Show venue ID, suburb, and total amount, ordered ascending by total.

SELECT '1398875' AS StuID, v.VenueID, v.Suburb, SUM(s.GroupLessonCost) AS TotalAmount
FROM venue8875 v
INNER JOIN booking8875 b ON v.VenueID = b.VenueID
INNER JOIN servicesrequested8875 sr ON b.BookingID = sr.BookingID
INNER JOIN services8875 s ON sr.ServiceID = s.ID
WHERE YEAR(b.ApptDate) = YEAR(CURRENT_DATE) - 1 
  AND s.GroupLessonCost IS NOT NULL
GROUP BY v.VenueID, v.Suburb
ORDER BY TotalAmount ASC;


-- 6. List all owners and their dogs who booked any type of obedience lesson at the Caulfield venue. 
--    Show owner full name, dog name, and package name. 
--    Order alphabetically by owner last name.

SELECT DISTINCT '1398875' AS StuID, CONCAT(o.OFirstName, ' ', o.OLastName) AS OFullName, d.DName, s.PackageName
FROM owner8875 o
LEFT OUTER JOIN dog8875 d ON o.ownerID = d.ownerID
LEFT OUTER JOIN booking8875 b ON d.DogID = b.DogID
LEFT OUTER JOIN venue8875 v ON b.VenueID = v.VenueID
LEFT OUTER JOIN servicesrequested8875 sr ON b.BookingID = sr.BookingID
LEFT OUTER JOIN services8875 s ON sr.ServiceID = s.ID
WHERE s.PackageName LIKE '%obedience%' 
  AND v.Suburb = 'Caulfield'
ORDER BY o.OLastName ASC;


-- 7. List all owners and their dogs who participated in lessons at Brighton venue in Q2 2023 (Apr–Jun). 
--    Show owner full name, dog name, breed, and lesson date. 
--    Order by lesson date.

SELECT '1398875' AS StuID,
       CONCAT(o.OFirstName, ' ', o.OLastName) AS OFullName,
       d.DName,
       d.Breed,
       b.ApptDate
FROM owner8875 o
INNER JOIN dog8875 d ON o.OwnerID = d.OwnerID
INNER JOIN booking8875 b ON d.DogID = b.DogID
INNER JOIN venue8875 v ON b.VenueID = v.VenueID
WHERE v.Suburb = 'Brighton'
  AND b.ApptDate > '2023-03-31'
  AND b.ApptDate <= '2023-06-30'
ORDER BY b.ApptDate;


-- 8. List all owners who attended at least one event or had at least one booking in January of the previous year. 
--    Show owner full name and appointment/attendance date. 
--    Duplicates allowed.

SELECT '1398875' AS StuID, CONCAT(o.OFirstName, ' ', o.OLastName) AS OFullName, e.Date AS AppAttDate
FROM owner8875 o
INNER JOIN dog8875 d ON o.OwnerID = d.OwnerID
INNER JOIN attendance8875 a ON d.DogID = a.DogID
INNER JOIN event8875 e ON a.EventID = e.EventID
WHERE YEAR(CURRENT_DATE) - 1 = YEAR(e.Date) 
  AND MONTH(e.Date) = 01
UNION
SELECT '1398875' AS StuID, CONCAT(o.OFirstName, ' ', o.OLastName) AS OFullName, b.ApptDate AS AppAttDate
FROM owner8875 o
INNER JOIN dog8875 d ON o.OwnerID = d.OwnerID
INNER JOIN booking8875 b ON d.DogID = b.DogID
WHERE YEAR(CURRENT_DATE) - 1 = YEAR(b.ApptDate) 
  AND MONTH(b.ApptDate) = 01;


-- 9. Which dogs attended National Dog Day in the past 3 years (current, previous, one before)? 
--    Show dog name and breed, sorted by breed then name.

SELECT '1398875' AS StuID, d.DName, d.Breed
FROM dog8875 d
INNER JOIN attendance8875 a ON d.DogID = a.DogID
INNER JOIN event8875 e ON a.EventID = e.EventID
WHERE e.Description LIKE '%National Dog Day%' 
  AND YEAR(e.Date) = YEAR(CURRENT_DATE) - 2 
  AND d.DogID IN (
    SELECT d1.DogID
    FROM dog8875 d1
    INNER JOIN attendance8875 a2 ON d1.DogID = a2.DogID
    INNER JOIN event8875 e1 ON a2.EventID = e1.EventID
    WHERE e1.Description LIKE '%National Dog Day%' 
      AND YEAR(e1.Date) = YEAR(CURRENT_DATE) - 1 
      AND d1.DogID IN (
        SELECT d2.DogID
        FROM dog8875 d2
        INNER JOIN attendance8875 a3 ON d2.DogID = a3.DogID
        INNER JOIN event8875 e2 ON a3.EventID = e2.EventID
        WHERE e2.Description LIKE '%National Dog Day%' 
          AND YEAR(e2.Date) = YEAR(CURRENT_DATE)
      )
  )
ORDER BY d.Breed ASC, d.DName ASC;


-- 10a. Create a view that lists dog breed and number of bookings for the service “Advanced Obedience” across all venues.

CREATE VIEW DogBreedBookings AS
SELECT d.Breed, COUNT(*) AS BookingCount
FROM booking8875 b
INNER JOIN dog8875 d ON b.DogID = d.DogID
INNER JOIN servicesrequested8875 sr ON b.BookingID = sr.BookingID
INNER JOIN services8875 s ON sr.ServiceID = s.ID
WHERE s.PackageName = 'Advanced Obedience'
GROUP BY d.Breed;


-- 10b. Using the view, list the breeds with the highest number of bookings. 
--      Show breed name and number of lessons booked.

SELECT '1398875' AS StuID, Breed, BookingCount
FROM DogBreedBookings
WHERE BookingCount = (SELECT MAX(BookingCount) FROM DogBreedBookings);
