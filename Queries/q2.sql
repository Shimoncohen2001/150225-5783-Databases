SELECT P.position, P.Fname, P.Lname, P.birthday
FROM Player P
WHERE P.birthday = (SELECT MIN(birthday) FROM Player WHERE position = P.position)
GROUP BY P.position, P.Fname, P.Lname, P.birthday;