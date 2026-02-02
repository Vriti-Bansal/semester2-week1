-- Find the 5 youngest students in the database.
-- Expected Columns:
-- StudentId, FirstName, LastName, DateOfBirth
SELECT Student.StudentId,Student.FirstName,Student.LastName,Student.DateOfBirth from Student ORDER BY DateOfBirth DESC LIMIT 5;