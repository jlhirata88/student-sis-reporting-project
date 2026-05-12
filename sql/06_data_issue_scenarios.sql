-- Data Issue Scenario:
-- Possible duplicate student records based on matching first name, last name, and date of birth.

SELECT
    FirstName,
    LastName,
    DOB,
    COUNT(*) AS DuplicateCount
FROM Students
GROUP BY FirstName, LastName, DOB
HAVING COUNT(*) > 1;

-- Integration Failure Scenario:
-- A third-party grading system failed to send one or more final grades.
-- This query identifies enrolled students who have NULL final grades.

SELECT
    s.StudentID,
    s.FirstName,
    s.LastName,
    c.CourseName,
    sec.Term,
    g.FinalGrade,
    'Possible grading system sync issue' AS IssueType
FROM Students s
JOIN Enrollments e
    ON s.StudentID = e.StudentID
JOIN Sections sec
    ON e.SectionID = sec.SectionID
JOIN Courses c
    ON sec.CourseID = c.CourseID
LEFT JOIN Grades g
    ON s.StudentID = g.StudentID
    AND sec.SectionID = g.SectionID
WHERE g.FinalGrade IS NULL;