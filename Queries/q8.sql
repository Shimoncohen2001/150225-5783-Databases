SELECT C.ID, C.Fname AS CoachFirstName, C.Lname AS CoachLastName, (C.wins / (C.wins + C.losses)) * 100 AS WinPercentage
FROM Coach C
WHERE C.ID IN (
    SELECT coachID
    FROM Player
    GROUP BY coachID
    HAVING COUNT(DISTINCT nationality) >= 3
) AND (C.wins / (C.wins + C.losses)) * 100 > (
    SELECT AVG(wins / (wins + losses)) * 100
    FROM Coach
);