SELECT C.ID AS CoachID, C.Fname AS CoachFirstName, C.Lname AS CoachLastName,
       P.ID AS PlayerID, P.Fname AS PlayerFirstName, P.Lname AS PlayerLastName, P.awards
FROM Coach C
JOIN Player P ON C.ID = P.coachID
WHERE P.awards > 0 AND C.ID IN (
    SELECT coachID
    FROM Player
    WHERE awards > 0
    GROUP BY coachID
    HAVING COUNT(*) > 1
);