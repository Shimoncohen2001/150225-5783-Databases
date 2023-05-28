SELECT P.ID, P.Fname, P.Lname, P.position, C.Fname AS CoachFirstName, C.Lname AS CoachLastName, C.experience
FROM Player P
JOIN Coach C ON P.coachID = C.ID
WHERE C.experience >= 25;