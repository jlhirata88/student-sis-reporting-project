SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseName,
    g.FinalGrade
FROM Students s
JOIN Grades g
    ON s.StudentID = g.StudentID
JOIN Sections sec
    ON g.SectionID = sec.SectionID
JOIN Courses c
    ON sec.CourseID = c.CourseID
WHERE g.FinalGrade < 70
ORDER BY g.FinalGrade ASC;

SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseName,
    a.DaysPresent,
    a.DaysAbsent,
    CAST(a.DaysPresent * 100.0 / (a.DaysPresent + a.DaysAbsent) AS DECIMAL(5,2)) AS AttendanceRate
FROM Students s
JOIN Attendance a
    ON s.StudentID = a.StudentID
JOIN Sections sec
    ON a.SectionID = sec.SectionID
JOIN Courses c
    ON sec.CourseID = c.CourseID
WHERE CAST(a.DaysPresent * 100.0 / (a.DaysPresent + a.DaysAbsent) AS DECIMAL(5,2)) < 90
ORDER BY AttendanceRate ASC;

SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseName,
    g.FinalGrade
FROM Students s
JOIN Grades g
    ON s.StudentID = g.StudentID
JOIN Sections sec
    ON g.SectionID = sec.SectionID
JOIN Courses c
    ON sec.CourseID = c.CourseID
WHERE g.FinalGrade IS NULL;