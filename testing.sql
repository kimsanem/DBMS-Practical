-- test

create database kim;
use kim;
show tables;

CREATE TABLE `department` (
  `dno` int(3) NOT NULL,
  `dname` varchar(50) DEFAULT NULL,
  `location` varchar(50) DEFAULT 'New Delhi'
);

INSERT INTO `department` (`dno`, `dname`, `location`) VALUES
(10, 'Accounting', 'New York'),
(20, 'Research', 'Dallas'),
(30, 'Sales', 'Chicago'),
(40, 'Operation', 'Boston'),
(50, 'Purchase', 'New Delhi');
	
-- complete department table create + insert
    
CREATE TABLE `employee` (
  `eno` char(3) NOT NULL,
  `ename` varchar(50) NOT NULL,
  `job_type` varchar(50) NOT NULL,
  `supervisonENO` char(3) DEFAULT NULL,
  `Hire_date` date NOT NULL,
  `Dno` int(3) DEFAULT NULL,
  `Commission` decimal(10,2) DEFAULT NULL,
  `Salary` decimal(7,2) NOT NULL
);

INSERT INTO `employee` (`eno`, `ename`, `job_type`, `supervisonENO`, `Hire_date`, `Dno`, `Commission`, `Salary`) VALUES
('736', 'Smith', 'Clerk', '790', '1981-12-17', 20, '0.00', '1000.00'),
('749', 'Allan', 'Sales_man', '769', '1981-02-20', 30, '300.00', '2000.00'),
('752', 'Ward', 'Sales_man', '769', '1981-02-22', 30, '500.00', '1300.00'),
('756', 'Jones', 'Manager', '783', '1981-04-02', 20, '0.00', '2300.00'),
('765', 'Martin', 'Sales_man', '784', '1981-04-22', 30, '1400.00', '1250.00'),
('769', 'Blake', 'Manager', '783', '1981-05-01', 30, '0.00', '2870.00'),
('778', 'Clark', 'Manager', '783', '1981-06-09', 10, '0.00', '2900.00'),
('783', 'King', 'President', NULL, '1981-11-17', 10, '0.00', '2950.00'),
('784', 'Turner', 'Sales_man', '769', '1981-09-08', 30, '0.00', '1450.00'),
('787', 'Adams', 'Clerk', '778', '1983-01-12', 20, '0.00', '1150.00'),
('788', 'Scott', 'Analyst', '756', '1982-12-09', 20, '0.00', '2850.00'),
('790', 'James', 'Clerk', '769', '1981-12-03', 30, '0.00', '950.00'),
('792', 'Ford', 'Analyst', '756', '1981-12-03', 20, '0.00', '2600.00'),
('793', 'Miller', 'Clerk', '788', '1982-01-23', 40, '0.00', '1300.00');

-- complete create and dumpting for table employee




select * from employee;
select * from department;




--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`dno`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`eno`),
  ADD KEY `Dno` (`Dno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Dno`) REFERENCES `department` (`dno`);
COMMIT;
ROLLBACK;
