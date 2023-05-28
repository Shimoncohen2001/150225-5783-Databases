SELECT C.nationality, AVG(C.experience) AS AvgCoachExperience
FROM Coach C
GROUP BY C.nationality;