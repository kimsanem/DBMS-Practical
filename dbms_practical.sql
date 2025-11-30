create database prac1;
use prac1;

SELECT @@VERSION;

-- create tables
create table student(
	rollno char(6),
    studentname varchar(20),
    course varchar(10),
    dob date,
    
    primary key(rollno)
);

create table society(
	socid char(6),
    socname varchar(20),
    mentorname varchar(15),
    totalseat integer,
    
    primary key(socid)
);

create table enrollment(
	rollno char(6),
    sid char(6),
    date_of_enrollment date,
    
    primary key (rollno),
    foreign key (rollno) REFERENCES student(rollno),
    foreign key (sid) REFERENCES society(socid)
);

-- insert into each table
INSERT INTO student (rollno, studentname, course, dob) VALUES
('S001','Asha Verma','BSc CS','2003-05-14'),
('S002','Ravi Kumar','BCom','2002-11-23'),
('S003','Meena Patel','BA Eng','2003-07-02'),
('S004','Rahul Singh','BSc CS','2002-03-10'),
('S005','Pooja Sharma','BBA','2003-12-29'),
('S006','Anil Yadav','BSc Phy','2002-06-09'),
('S007','Kiran Das','BSc CS','2003-09-17'),
('S008','Neha Gupta','BCom','2002-04-19'),
('S009','Suresh Rai','BA Hist','2001-12-05'),
('S010','Divya Jain','BSc Math','2003-01-22'),
('S011','Amit Roy','BSc Phy','2003-07-13'),
('S012','Sneha Tiwari','BBA','2003-03-09'),
('S013','Rohit Mehra','BA Eng','2002-09-21'),
('S014','Manish Bansal','BSc CS','2003-11-03'),
('S015','Priya Saini','BCom','2002-05-27'),
('S016','Kavita Nair','BSc Phy','2003-10-15'),
('S017','Harshit Malhotra','BSc Math','2003-02-12'),
('S018','Tanya Sharma','BA Hist','2001-10-06'),
('S019','Gaurav Joshi','BBA','2003-08-18'),
('S020','Sakshi Verma','BSc CS','2002-09-25'),
('S021','Mohit Rana','BSc Phy','2003-04-07'),
('S022','Ananya Singh','BA Eng','2002-01-03'),
('S023','Deepak Chauhan','BCom','2003-07-29'),
('S024','Nisha Gupta','BSc Math','2002-06-11'),
('S025','Abhishek Das','BSc CS','2003-11-26'),
('S026','Kritika Bhat','BSc Phy','2003-12-02'),
('S027','Kunal Jain','BBA','2003-10-19'),
('S028','Shruti Patel','BA Hist','2002-08-30'),
('S029','Vikas Mishra','BSc Math','2003-02-09'),
('S030','Riya Kapoor','BSc CS','2003-03-24');

INSERT INTO society (socid, socname, mentorname, totalseat) VALUES
('SO001','Music Club','Mr. Rao',25),
('SO002','Dance Club','Ms. Neha',20),
('SO003','Drama Society','Mr. Amit',15),
('SO004','Art Circle','Mrs. Joshi',18),
('SO005','Science Forum','Dr. Nair',30),
('SO006','Photography','Mr. Anand',20),
('SO007','Robotics Club','Dr. Mehta',25),
('SO008','Literary Club','Ms. Rekha',20),
('SO009','Coding Hub','Mr. Arjun',30),
('SO010','Eco Society','Dr. Sharma',18),
('SO011','Sports Club','Mr. Raj',40),
('SO012','Yoga Club','Ms. Divya',25),
('SO013','Astronomy','Dr. Kiran',20),
('SO014','Finance Club','Mr. Ravi',25),
('SO015','Film Society','Ms. Priya',15),
('SO016','Social Work','Mr. Suresh',20),
('SO017','AI Club','Dr. Tiwari',25),
('SO018','Math Circle','Dr. Rao',30),
('SO019','Gaming Club','Mr. Nikhil',20),
('SO020','CyberSec Club','Mr. Adarsh',25),
('SO021','Electronics','Dr. Kapil',30),
('SO022','Quiz Club','Ms. Jaya',15),
('SO023','Nature Club','Mr. Ghosh',20),
('SO024','Entrepreneurship','Mr. Manoj',25),
('SO025','Public Speaking','Ms. Anu',20),
('SO026','Film Makers','Mr. Rohan',15),
('SO027','Design Club','Ms. Tanvi',18),
('SO028','Poetry Society','Mr. Vivek',20),
('SO029','Data Science','Dr. Lal',25),
('SO030','Chess Club','Mr. Deep',15);

INSERT INTO enrollment (rollno, sid, date_of_enrollment) VALUES
('S001','SO001','2023-08-01'),
('S002','SO009','2023-08-02'),
('S003','SO004','2023-08-03'),
('S004','SO007','2023-08-03'),
('S005','SO002','2023-08-04'),
('S006','SO005','2023-08-04'),
('S007','SO009','2023-08-05'),
('S008','SO011','2023-08-06'),
('S009','SO015','2023-08-07'),
('S010','SO018','2023-08-07'),
('S011','SO017','2023-08-08'),
('S012','SO006','2023-08-09'),
('S013','SO014','2023-08-09'),
('S014','SO009','2023-08-10'),
('S015','SO010','2023-08-10'),
('S016','SO021','2023-08-11'),
('S017','SO018','2023-08-12'),
('S018','SO023','2023-08-13'),
('S019','SO025','2023-08-14'),
('S020','SO017','2023-08-14'),
('S021','SO029','2023-08-15'),
('S022','SO008','2023-08-16'),
('S023','SO020','2023-08-16'),
('S024','SO018','2023-08-17'),
('S025','SO027','2023-08-17'),
('S026','SO030','2023-08-18'),
('S027','SO003','2023-08-18'),
('S028','SO028','2023-08-19'),
('S029','SO026','2023-08-19'),
('S030','SO001','2023-08-20');



-- command to implenment ddl and dml
select * from student;
select * from society;
select * from enrollment;

# 1
SELECT DISTINCT S.studentname FROM student S JOIN enrollment E ON S.rollno = E.rollno; 

# 2
select socname from society;

# 3
select studentname from student where studentname like 'a%';

# 4
select * from student where course in ('computer science', 'bsc math');

# 5
select studentname from student where (rollno like 'x%9' or rollno like 'z%9');

# 6
SET @n = 20;  -- Example: user inputs 50
select * from society where totalseat > @n;

# 7
update society
set mentorname = 'new mentor' where socid = 'sO001';
select distinct mentorname from society order by socid;

# 8
select s.socname from society s join enrollment e on s.socid = e.sid group by s.socid having count(e.rollno) > 5;

# 9
select s.studentname, s.dob from student s join enrollment e on s.rollno = e.rollno join society so on e.sid = so.socid 
where so.socname = 'nss' order by s.dob desc limit 1;

# 10
select s.socname, count(e.rollno) as total from society s join enrollment e on s.socid = e.sid
group by s.socid order by total desc limit 1;

# 11
select s.socname, count(e.rollno) as total from society s join enrollment e on s.socid = e.sid group by s.socid
order by total asc limit 1;

# 12
select studentname from student where rollno not in (select rollno from enrollment);

# 13
select s.studentname from student s join enrollment e on s.rollno = e.rollno
group by s.rollno having count(e.sid) >= 2;

# 14
select s.socname, count(e.rollno) as total from society s join enrollment e on s.socid = e.sid group by s.socid
having total = (
  select max(cnt)
  from (
    select count(e2.rollno) as cnt
    from enrollment e2
    group by e2.sid
  ) as t
);

# 15
select st.studentname, so.socname from student st
join enrollment e on st.rollno = e.rollno
join society so on e.sid = so.socid;

# 16
select distinct st.studentname from student st
join enrollment e on st.rollno = e.rollno
join society so on e.sid = so.socid
where so.socname in ('debating', 'dancing', 'sashakt');

# 17
select * from society
where mentorname like '%gupta%';

# 18
select s.socname from society s left join enrollment e on s.socid = e.sid group by s.socid, s.socname, s.totalseat
having count(e.rollno) = 0.1 * s.totalseat;

# 19
select s.socname, s.totalseat - count(e.rollno) as vacant_seats from society s left join enrollment e on s.socid = e.sid
group by s.socid;

# 20
update society set totalseat = totalseat * 1.10;
select * from society;

# 21
alter table enrollment
add column feepaid enum('yes', 'no') default 'no';
select * from enrollment;

# 22
update enrollment
set date_of_enrollment = '2018-01-02'
where sid in ('SO001', 'SO002', 'SO003');
-- where sid = 'SO001' or 'SO002' or 'SO003';  -- not optinal recommended
select * from enrollment;

# 23
create view society_enrollment_view as
select s.socname, count(e.rollno) as total_enrolled
from society s
left join enrollment e on s.socid = e.sid
group by s.socid;
select * from society_enrollment_view;

# 24
select s.studentname from student s
join enrollment e on s.rollno = e.rollno
group by s.rollno having count(distinct e.sid) = (select count(*) from society);


# 25
select count(*) as society_count
from (
  select sid
  from enrollment
  group by sid
  having count(rollno) > 5
) as t;

# 26
alter table student add column mobilenumber varchar(15) default '9999999999';
select * from student;
# 27
select count(*) as total_students
from student
where timestampdiff(year, dob, curdate()) > 20;

# 28
select distinct s.studentname
from student s
join enrollment e on s.rollno = e.rollno
where year(s.dob) = 2001;

# 29
select count(*) as total_societies
from society s
join enrollment e on s.socid = e.sid
where s.socname like 's%t'
group by s.socid
having count(e.rollno) >= 5;

# 30
select s.socname, s.mentorname, s.totalseat,
       count(e.rollno) as total_enrolled,
       s.totalseat - count(e.rollno) as unfilled_seats
from society s
left join enrollment e on s.socid = e.sid
group by s.socid;


# ii
CREATE USER 'college_user'@'localhost' IDENTIFIED BY 'password123';
CREATE ROLE 'society_manager';
GRANT SELECT, INSERT, UPDATE, DELETE ON CollegeDB.* TO 'society_manager';
GRANT 'society_manager' TO 'college_user';
REVOKE DELETE ON CollegeDB.* FROM 'society_manager';
CREATE INDEX idx_studentname ON STUDENT(StudentName);