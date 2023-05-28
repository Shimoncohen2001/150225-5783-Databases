SELECT C.ID, C.Fname, C.Lname, (C.wins / (C.wins + C.losses)) * 100 AS WinPercentage
FROM Coach C
ORDER BY WinPercentage DESC
FETCH FIRST 5 ROWS ONLY;