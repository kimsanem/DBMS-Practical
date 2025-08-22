create database company;
use company;

create table dept (
	deptno integer,
    dname varchar(200),
    loc varchar(200),
    primary key(deptno)
);
create table emp(
	empno integer,
    ename varchar(200),
    job varchar(200),
    mgr varchar(200),
    hiredate date,
    sal decimal,
    comm decimal,
    deptno integer,
    primary key(empno),
    foreign key(deptno) references dept(deptno)
);

insert into dept(deptno, dname, loc) values 
	(10, 'ACCOUNTING', 'NEW YORK'),
	(20, 'RESEARCH', 'DALLAS'),
	(30, 'SALES', 'CHICAGO'),
	(40, 'OPERATIONS', 'BOSTON');

insert into emp(empno, ename, job, mgr, hiredate, sal, comm, deptno) values
	(7369, 'SMITH', 'CLERK', 7902, '1980-12-17', 800, NULL, 20),
	(7499, 'ALLEN', 'SALESMAN', 7698, '1981-02-20', 1600, 300, 30),
	(7521, 'WARD', 'SALESMAN', 7698, '1981-02-22', 1250, 500, 30),
	(7566, 'JONES', 'MANAGER', 7839, '1981-04-02', 2975, NULL, 20),
	(7654, 'MARTIN', 'SALESMAN', 7698, '1981-09-28', 1250, 1400, 30),
	(7698, 'BLAKE', 'MANAGER', 7839, '1981-05-01', 2850, NULL, 30),
	(7782, 'CLARK', 'MANAGER', 7839, '1981-06-09', 2450, NULL, 10),
	(7788, 'SCOTT', 'ANALYST', 7566, '1982-12-09', 3000, NULL, 20),
	(7839, 'KING', 'PRESIDENT', NULL, '1981-11-17', 5000, NULL, 10),
	(7844, 'TURNER', 'SALESMAN', 7698, '1981-09-08', 1500, 0, 30),
	(7876, 'ADAMS', 'CLERK', 7788, '1983-01-12', 1100, NULL, 20),
	(7900, 'JAMES', 'CLERK', 7698, '1981-12-03', 950, NULL, 30),
	(7902, 'FORD', 'ANALYST', 7566, '1981-12-04', 3000, NULL, 20),
	(7934, 'MILLER', 'CLERK', 7782, '1982-01-23', 1300, NULL, 10);

select*from dept;
select*from emp;

drop table dept;
drop table emp;

select ename from emp;

select deptno, empno, mgr from emp;

select dname, loc from dept;

select ename, sal from emp;

select ename, sal, sal*0.1 from emp;

select ename, sal, sal*0.1 as "PF" from emp;

select empno, sal, comm, sal+comm "Total Salary" from emp;

select empno, sal, comm, ifnull(comm,0)+sal as "Total Salary" from emp;


-- operator used
select * from emp where deptno=20;

select ename, sal from emp where sal>1000;

select ename, job from emp where job='clerk' and deptno=30;

select ename, job from emp where job='salesman' or job='analyst';

select empno, ename from emp where job!='manager';

select ename, empno from emp where empno=7369 or empno=7521 or empno=7839 or empno=7934;

select ename, empno from emp where empno in(7369,7521,7839,7934);

select * from emp where deptno not in (10,30,40);

select * from emp where sal>=1000 and sal<=2000;

select * from emp where sal between 1000 and 2000;

select ename from emp where ename like 's%';

select ename from emp where ename like '_i%';

select * from emp where ename like '____';

select job from emp;
select distinct job from emp;

select * from emp where mgr is NULL;

select * from emp order by ename;

