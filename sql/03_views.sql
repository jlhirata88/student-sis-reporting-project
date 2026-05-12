--run each create view separately in SSMS

CREATE VIEW vw_StudentPerformance AS
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
    ON sec.CourseID = c.CourseID;
GO

CREATE VIEW vw_AttendanceSummary AS
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
    ON sec.CourseID = c.CourseID;
GO