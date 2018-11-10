INSERT INTO EMPLOYEE
VALUES ('John','B','Smith','123456789','1965-01-09',
'731 Fondren, Houston, TX','M','30000','333445555',5);

INSERT INTO EMPLOYEE
VALUES ('Franklin','T','Wong','333445555','1955-12-08',
'638 Voss, Houston, TX','M','40000','888665555',5);

INSERT INTO EMPLOYEE
VALUES ('Alicia','J','Zelaya','999887777','1968-01-19',
'3321 Castle, Spring, TX','F','25000','987654321',4);

INSERT INTO EMPLOYEE
VALUES ('Jennifer','S','Wallace','987654321','1941-06-20',
'291 Berry, Bellair, TX','F','43000','888665555',4);

INSERT INTO EMPLOYEE
VALUES ('Ramesh','K','Narayan','666884444','1962-09-15',
'975 Fire Oak, Humble, TX','M','38000','333445555',5);

INSERT INTO EMPLOYEE
VALUES ('Joyce','A','English','453453453','1972-07-31',
'5631 Rice, Houston, TX','F','25000','333445555',5);

INSERT INTO EMPLOYEE
VALUES ('Ahmad','V','Jabbar','987987987','1969-03-29',
'980 Dallas, Houston, TX','M','25000','987654321',4);

INSERT INTO EMPLOYEE
VALUES ('James','E','Borg','888665555','1937-11-10',
'450 Stone, Houston, TX','M','55000','',1);

INSERT INTO DEPARTMENT
SET Dname = 'Research',Dnumber = 5,Mgr_start_date = '1988-05-22',
Mgr_ssn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Wong');

INSERT INTO DEPARTMENT
SET Dname = 'Administration',Dnumber = 4,Mgr_start_date = '1995-01-01',
Mgr_Ssn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Wallace');

INSERT INTO DEPARTMENT
SET Dname = 'Headquarters',Dnumber = 1,Mgr_start_date = '1981-06-19',
Mgr_Ssn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Borg');

INSERT INTO DEPT_LOCATIONS
SET Dlocation = 'Houston',
Dnumber = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Headquarters');

INSERT INTO DEPT_LOCATIONS
SET Dlocation = 'Stafford',
Dnumber = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Administration');

INSERT INTO DEPT_LOCATIONS
SET Dlocation = 'Bellaire',
Dnumber = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Research');

INSERT INTO DEPT_LOCATIONS
SET Dlocation = 'Sugarland',
Dnumber = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Research');

INSERT INTO DEPT_LOCATIONS
SET Dlocation = 'Houston',
Dnumber = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Research');

INSERT INTO PROJECT
SET Pname = 'ProductX', Pnumber = 1, Plocation = 'Bellaire', 
Dnum = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Research');

INSERT INTO PROJECT
SET Pname = 'ProductY', Pnumber = 2, Plocation = 'Sugarland', 
Dnum = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Research');

INSERT INTO PROJECT
SET Pname = 'ProductZ', Pnumber = 3, Plocation = 'Houston', 
Dnum = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Research');

INSERT INTO PROJECT
SET Pname = 'Computerization', Pnumber = 10, Plocation = 'Stafford', 
Dnum = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Administration');

INSERT INTO PROJECT
SET Pname = 'Reorganization', Pnumber = 20, Plocation = 'Houston', 
Dnum = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Headquarters');

INSERT INTO PROJECT
SET Pname = 'Newbenefits', Pnumber = 30, Plocation = 'Stafford', 
Dnum = (
SELECT D.Dnumber
FROM DEPARTMENT D
WHERE D.Dname = 'Administration');

INSERT INTO WORKS_ON
SET Hours = 32.5,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'John'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.Pname = 'ProductX');

INSERT INTO WORKS_ON
SET Hours = 7.5,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'John'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'ProductY');

INSERT INTO WORKS_ON
SET Hours = 40.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Ramesh'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'ProductZ');

INSERT INTO WORKS_ON
SET Hours = 20.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Joyce'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'ProductX');

INSERT INTO WORKS_ON
SET Hours = 20.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Joyce'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'ProductY');

INSERT INTO WORKS_ON
SET Hours = 10.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Franklin'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'ProductY');

INSERT INTO WORKS_ON
SET Hours = 10.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Franklin'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'ProductZ');

INSERT INTO WORKS_ON
SET Hours = 10.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Franklin'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Computerization');

INSERT INTO WORKS_ON
SET Hours = 10.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Franklin'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Reorganization');

INSERT INTO WORKS_ON
SET Hours = 30.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Alicia'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Newbenefits');

INSERT INTO WORKS_ON
SET Hours = 10.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Alicia'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Computerization');

INSERT INTO WORKS_ON
SET Hours = 35.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Ahmad'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Computerization');

INSERT INTO WORKS_ON
SET Hours = 5.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Ahmad'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Newbenefits');

INSERT INTO WORKS_ON
SET Hours = 20.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Jennifer'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Newbenefits');

INSERT INTO WORKS_ON
SET Hours = 15.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'Jennifer'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Reorganization');

INSERT INTO WORKS_ON
SET Hours = 0.0,
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Fname = 'James'),
Pno = (
SELECT P.pnumber
FROM PROJECT P
WHERE P.pname = 'Reorganization');

INSERT INTO DEPENDENT
SET Dependent_name = 'Alice', Sex = 'F', Bdate = '1986-04-05', Relationship = 'Daughter',
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Wong');

INSERT INTO DEPENDENT
SET Dependent_name = 'Theodore', Sex = 'M', Bdate = '1983-10-25', Relationship = 'Son',
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Wong');

INSERT INTO DEPENDENT
SET Dependent_name = 'Joy', Sex = 'F', Bdate = '1958-05-03', Relationship = 'Spouse',
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Wong');

INSERT INTO DEPENDENT
SET Dependent_name = 'Abner', Sex = 'M', Bdate = '1942-02-28', Relationship = 'Spouse',
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Wallace');

INSERT INTO DEPENDENT
SET Dependent_name = 'Michael', Sex = 'M', Bdate = '1988-01-04', Relationship = 'Son',
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Smith');

INSERT INTO DEPENDENT
SET Dependent_name = 'Alice', Sex = 'F', Bdate = '1988-12-30', Relationship = 'Daughter',
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Smith');

INSERT INTO DEPENDENT
SET Dependent_name = 'Elizabeth', Sex = 'F', Bdate = '1967-05-05', Relationship = 'Spouse',
Essn = (
SELECT E.Ssn
FROM EMPLOYEE E
WHERE E.Lname = 'Smith');

