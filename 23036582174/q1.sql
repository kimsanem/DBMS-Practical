create database exam;
use exam;

SHOW TABLES;

CREATE TABLE Stud (
    SId INTEGER,
    Sname VARCHAR(200),
    Sex VARCHAR(50),
    PRIMARY KEY(SId)
);

CREATE TABLE Subject (
    SubId INTEGER,
    FacultyId INTEGER,
    SubName VARCHAR(200),
    FacultyName VARCHAR(200),
    PRIMARY KEY (SubId)
);

CREATE TABLE Enrolled (
    SId INTEGER,
    SubId INTEGER,
    FOREIGN KEY (SId) REFERENCES Stud(SId),
    FOREIGN KEY (SubId) REFERENCES Subject(SubId)
);

INSERT INTO Stud(SId, SName, Sex) VALUES
	(1,"A","M"),
    (2,"B","F"),
    (3,"C","F"),
    (4,"D","M"),
    (5,"E","F");
SELECT * FROM Stud;

INSERT INTO Subject(SubId, FacultyId, SubName, FacultyName) VALUES
	(5001, 1, "Computer Science", "Prof. Ravi"),
    (5002, 2, "Mathematics", "Prof. Preeti"),
    (5003, 3, "Physics", "Prof. Ajay"),
    (5004, 4, "Enlgish", "Prof. Raksha"),
    (5005, 5, "Hindi", "Prof. Ved");
SELECT * FROM Subject;

# 1
SELECT Sname, Sex FROM Stud  WHERE SId = 2;

# 2
SELECT s.Sname FROM Stud s 
JOIN Enrolled e ON s.SId = e.SId
JOIN Subject sub ON e.SubId = sub.SubId
WHERE sub.FacultyName = 'Prof. Ravi';

# 3
UPDATE Subject
SET FacultyName = 'Meena Devi'
WHERE SubId = 5003;

SELECT * FROM Subject;

# 4
SELECT COUNT(*) AS total_subjects
FROM Subject;

# 5
ALTER TABLE Subject
DROP COLUMN FacultyName;




