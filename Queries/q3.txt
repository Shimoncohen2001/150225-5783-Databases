SELECT P.position, AVG(P.height) AS AverageHeight, C.Fname AS CoachFirstName, C.Lname AS CoachLastName, P2.ID, P2.Fname, P2.Lname, P2.awardsFROM Player P
JOIN Coach C ON P.coachID = C.ID
JOIN Player P2 ON P.coachID = P2.coachID
WHERE (C.wins / (C.wins + C.losses)) * 100 > 95
GROUP BY P.position, C.Fname, C.Lname, P2.ID, P2.Fname, P2.Lname, P2.awards
ORDER BY P2.awards DESC
FETCH FIRST 5 ROWS ONLY;