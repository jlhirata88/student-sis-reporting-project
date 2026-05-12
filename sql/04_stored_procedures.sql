CREATE PROCEDURE sp_GetFailingStudents
AS
BEGIN
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
END;