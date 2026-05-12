-- Validation 1: Confirm row counts for core tables

SELECT 'Students' AS TableName, COUNT(*) AS TotalRows FROM Students
UNION ALL
SELECT 'Teachers', COUNT(*) FROM Teachers
UNION ALL
SELECT 'Courses', COUNT(*) FROM Courses
UNION ALL
SELECT 'Sections', COUNT(*) FROM Sections
UNION ALL
SELECT 'Enrollments', COUNT(*) FROM Enrollments
UNION ALL
SELECT 'Grades', COUNT(*) FROM Grades
UNION ALL
SELECT 'Attendance', COUNT(*) FROM Attendance;

-- Validation 2: Check for invalid grade values

SELECT
    GradeID,
    StudentID,
    SectionID,
    FinalGrade
FROM Grades
WHERE FinalGrade < 0
   OR FinalGrade > 100;

   -- Validation 3: Check for invalid attendance values

SELECT
    AttendanceID,
    StudentID,
    SectionID,
    DaysPresent,
    DaysAbsent
FROM Attendance
WHERE DaysPresent < 0
   OR DaysAbsent < 0;

   -- Validation 4: Enrollments without matching grade records

SELECT
    e.EnrollmentID,
    e.StudentID,
    s.FirstName,
    s.LastName,
    e.SectionID
FROM Enrollments e
JOIN Students s
    ON e.StudentID = s.StudentID
LEFT JOIN Grades g
    ON e.StudentID = g.StudentID
    AND e.SectionID = g.SectionID
WHERE g.GradeID IS NULL;