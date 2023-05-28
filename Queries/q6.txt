SELECT J.ID, J.Fname AS JudgeFirstName, J.Lname AS JudgeLastName
FROM Judge J
WHERE J.ID IN (
    SELECT J.ID
    FROM Judge J
    JOIN Player P ON J.ID = P.coachID
    GROUP BY J.ID
    HAVING COUNT(DISTINCT P.nationality) >= 3
);