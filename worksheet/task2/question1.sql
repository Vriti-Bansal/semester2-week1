-- List all students who enrolled in the year 2022.
-- Expected Columns:
-- StudentId, FirstName, LastName, EnrolmentYear
SELECT Student.StudentId,Student.FirstName,Student.LastName,Student.EnrolmentYear from Student WHERE Student.EnrolmentYear=2022;