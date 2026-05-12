INSERT INTO Students (FirstName, LastName, DOB, GradeLevel, Status) VALUES
('Emma', 'Carter', '2010-03-14', 10, 'Active'),
('Liam', 'Johnson', '2009-07-22', 11, 'Active'),
('Olivia', 'Martinez', '2011-01-09', 9, 'Active'),
('Noah', 'Brown', '2010-11-30', 10, 'Active'),
('Ava', 'Davis', '2008-05-17', 12, 'Active'),
('Sophia', 'Wilson', '2009-02-11', 11, 'Active'),
('Mason', 'Taylor', '2011-08-19', 9, 'Active'),
('Isabella', 'Anderson', '2010-12-02', 10, 'Active'),
('James', 'Thomas', '2009-04-05', 11, 'Active'),
('Mia', 'Jackson', '2008-09-21', 12, 'Active'),
('Emma', 'Carter', '2010-03-14', 10, 'Active'),
('Lucas', 'White', '2010-06-10', 10, 'Inactive');

INSERT INTO Teachers (FirstName, LastName, Department) VALUES
('Sarah', 'Miller', 'Math'),
('David', 'Moore', 'English'),
('Karen', 'Clark', 'Science'),
('Brian', 'Hall', 'History');

INSERT INTO Courses (CourseName, Subject) VALUES
('Algebra II', 'Math'),
('English II', 'English'),
('Biology', 'Science'),
('US History', 'History');

INSERT INTO Sections (CourseID, TeacherID, Term) VALUES
(1, 1, 'Fall 2026'),
(2, 2, 'Fall 2026'),
(3, 3, 'Fall 2026'),
(4, 4, 'Fall 2026');

INSERT INTO Enrollments (StudentID, SectionID, EnrollmentDate) VALUES
(1, 1, '2026-08-15'),
(1, 2, '2026-08-15'),
(2, 1, '2026-08-15'),
(2, 3, '2026-08-15'),
(3, 2, '2026-08-15'),
(3, 4, '2026-08-15'),
(4, 1, '2026-08-15'),
(4, 3, '2026-08-15'),
(5, 2, '2026-08-15'),
(5, 4, '2026-08-15'),
(6, 1, '2026-08-15'),
(7, 3, '2026-08-15'),
(8, 2, '2026-08-15'),
(9, 4, '2026-08-15'),
(10, 1, '2026-08-15');

INSERT INTO Grades (StudentID, SectionID, FinalGrade) VALUES
(1, 1, 88),
(1, 2, 91),
(2, 1, 64),
(2, 3, 72),
(3, 2, 95),
(3, 4, NULL),
(4, 1, 58),
(4, 3, 61),
(5, 2, 84),
(5, 4, 79),
(6, 1, 67),
(7, 3, 90),
(8, 2, 73),
(9, 4, 69),
(10, 1, 100);

INSERT INTO Attendance (StudentID, SectionID, DaysPresent, DaysAbsent) VALUES
(1, 1, 45, 3),
(1, 2, 46, 2),
(2, 1, 38, 10),
(2, 3, 40, 8),
(3, 2, 47, 1),
(3, 4, 44, 4),
(4, 1, 35, 13),
(4, 3, 37, 11),
(5, 2, 43, 5),
(5, 4, 42, 6),
(6, 1, 39, 9),
(7, 3, 48, 0),
(8, 2, 41, 7),
(9, 4, 36, 12),
(10, 1, 48, 0);