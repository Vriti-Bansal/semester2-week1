-- List all students along with the names of the courses they are enrolled in.
-- Expected Columns:
-- StudentId, FirstName, LastName, CourseName
SELECT Student.StudentId,Student.FirstName,Student.LastName,Course.CourseName from Student JOIN Enrolment ON Student.StudentId=Enrolment.StudentId JOIN Course ON Enrolment.Courseid=Course.Courseid;