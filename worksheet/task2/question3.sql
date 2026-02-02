-- For each department, calculate the number of enrolments in its courses.
-- Expected Columns:
-- DepartmentName, TotalEnrolments
SELECT Department.DepartmentName,COUNT(Enrolment.Enrolmentid) AS TotalEnrolments from Department JOIN Enrolment ON Enrolment.Courseid=Course.Courseid JOIN Course ON Course.Departmentid=Department.Departmentid GROUP BY Department.DepartmentName;