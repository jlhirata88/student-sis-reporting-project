CREATE TABLE Students (
    StudentID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    DOB DATE NOT NULL,
    GradeLevel INT NOT NULL,
    Status VARCHAR(20) NOT NULL
);

CREATE TABLE Teachers (
    TeacherID INT PRIMARY KEY IDENTITY(1,1),
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Department VARCHAR(50) NOT NULL
);

CREATE TABLE Courses (
    CourseID INT PRIMARY KEY IDENTITY(1,1),
    CourseName VARCHAR(100) NOT NULL,
    Subject VARCHAR(50) NOT NULL
);

CREATE TABLE Sections (
    SectionID INT PRIMARY KEY IDENTITY(1,1),
    CourseID INT NOT NULL,
    TeacherID INT NOT NULL,
    Term VARCHAR(20) NOT NULL,
    FOREIGN KEY (CourseID) REFERENCES Courses(CourseID),
    FOREIGN KEY (TeacherID) REFERENCES Teachers(TeacherID)
);

CREATE TABLE Enrollments (
    EnrollmentID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,
    SectionID INT NOT NULL,
    EnrollmentDate DATE NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SectionID) REFERENCES Sections(SectionID)
);

CREATE TABLE Grades (
    GradeID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,
    SectionID INT NOT NULL,
    FinalGrade INT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SectionID) REFERENCES Sections(SectionID)
);

CREATE TABLE Attendance (
    AttendanceID INT PRIMARY KEY IDENTITY(1,1),
    StudentID INT NOT NULL,
    SectionID INT NOT NULL,
    DaysPresent INT NOT NULL,
    DaysAbsent INT NOT NULL,
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (SectionID) REFERENCES Sections(SectionID)
);