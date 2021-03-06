
Create Database Jaisingh;
Use Jaisingh;

CREATE TABLE EMP(
	E_NO INT,
	NAME VARCHAR(30),
	DEPT_ID INT
)

CREATE TABLE DEPT(
	DEPT_ID INT,
	DEPT_NAME VARCHAR(30)
)

INSERT INTO EMP VALUES(4578,'JAISINGH',01 )
INSERT INTO EMP VALUES(7698,'AYAAN',10 )
INSERT INTO EMP VALUES( 1268,'VATSALA',05)
INSERT INTO EMP VALUES( 1865,'AKSHARA',02)

INSERT INTO DEPT VALUES( 01,'ANALYTICS')
INSERT INTO DEPT VALUES( 05,'DATA')
INSERT INTO DEPT VALUES( 07,'LINUX')
INSERT INTO DEPT VALUES( 02,'WINDOWS')


SELECT * FROM EMP

SELECT * FROM DEPT


--INNER JOIN

SELECT E.E_NO, E.NAME, D.DEPT_NAME, E.DEPT_ID
FROM EMP E --THIS IS LEFT TABLE SINCE IT IS WRITTEN FIRST
INNER JOIN DEPT D
ON E.DEPT_ID = D.DEPT_ID;

--OUTER JOIN

SELECT * FROM EMP

SELECT * FROM DEPT

SELECT E.E_NO, E.NAME, D.DEPT_NAME, E.DEPT_ID
FROM EMP E --THIS IS LEFT TABLE SINCE IT IS WRITTEN FIRST
OUTER JOIN DEPT D
ON E.DEPT_ID = D.DEPT_ID;

--LEFT JOIN

SELECT * FROM EMP

SELECT * FROM DEPT

SELECT E.E_NO, E.NAME, D.DEPT_NAME, E.DEPT_ID
FROM EMP E --THIS IS LEFT TABLE SINCE IT IS WRITTEN FIRST
LEFT JOIN DEPT D
ON E.DEPT_ID = D.DEPT_ID;

--RIGHT JOIN

SELECT * FROM EMP

SELECT * FROM DEPT

SELECT E.E_NO, E.NAME, D.DEPT_NAME, E.DEPT_ID
FROM EMP E --THIS IS LEFT TABLE SINCE IT IS WRITTEN FIRST
RIGHT JOIN DEPT D
ON E.DEPT_ID = D.DEPT_ID;

--FULL JOIN

SELECT * FROM EMP

SELECT * FROM DEPT

SELECT E.E_NO, E.NAME, D.DEPT_NAME, E.DEPT_ID
FROM EMP E --THIS IS LEFT TABLE SINCE IT IS WRITTEN FIRST
FULL JOIN DEPT D
ON E.DEPT_ID = D.DEPT_ID;

--SELF JOIN

--WILDCARD

SELECT *
FROM EMP
WHERE NAME LIKE 'A%' --% CAN TAKE ANY LENGTH

SELECT *
FROM EMP
WHERE NAME LIKE 'A______' --UNDERSCORE HAS TO BE A SPECIFIC LENGTH

INSERT INTO EMP VALUES(5645,'ABHISHEK',16 )
INSERT INTO EMP VALUES( 1563,'ABHILASHA', 17)

SELECT *
FROM EMP
WHERE NAME LIKE 'A__I%'

--AGGREGATE FUCNTIONS 
--AGGREGATE FUNCTIONS ONLY RUN ON NUMERICAL DATA

CREATE TABLE AGG(
	RNO INT,
	NAME VARCHAR(30),
	MARKS INT
)


INSERT INTO AGG VALUES(01,'JAISINGH',100 )
INSERT INTO AGG VALUES( 02,'ROSHAN',75)
INSERT INTO AGG VALUES( 03,'AYAAN',85)
INSERT INTO AGG VALUES( 04,'AKSHARA',90)
INSERT INTO AGG VALUES( 05,'VATSALA',80)

SELECT NAME, MAX(MARKS) FROM AGG

SELECT *  FROM AGG


  



SELECT NAME ,MARKS FROM AGG ORDER BY MARKS

INSERT INTO AGG VALUES(01,'JAISINGH',75 )
INSERT INTO AGG VALUES( 02,'ROSHAN',55)
INSERT INTO AGG VALUES( 03,'AYAAN',45)
INSERT INTO AGG VALUES( 04,'AKSHARA',60)
INSERT INTO AGG VALUES( 05,'VATSALA',70)


CREATE TABLE MSC(
	SUB VARCHAR(10),
	NAME VARCHAR(30),
	MARKS INT
)


INSERT INTO MSC VALUES('ENG','JAISINGH',85 )
INSERT INTO MSC VALUES('ENG','ROSHAN',78)
INSERT INTO MSC VALUES('ENG','AYAAN',82)
INSERT INTO MSC VALUES('ENG','AKSHARA',92)
INSERT INTO MSC VALUES('ENG','VATSALA',86)
INSERT INTO MSC VALUES('HIN','JAISINGH',72 )
INSERT INTO MSC VALUES( 'HIN','ROSHAN',80)
INSERT INTO MSC VALUES( 'HIN','AYAAN',64)
INSERT INTO MSC VALUES( 'HIN','AKSHARA',89)
INSERT INTO MSC VALUES( 'HIN','VATSALA',86)
INSERT INTO MSC VALUES('MATHS','JAISINGH',95 )
INSERT INTO MSC VALUES( 'MATHS','ROSHAN',92)
INSERT INTO MSC VALUES( 'MATHS','AYAAN',83)
INSERT INTO MSC VALUES( 'MATHS','AKSHARA',77)
INSERT INTO MSC VALUES( 'MATHS','VATSALA',65)

SELECT * FROM MSC

SELECT MIN(MARKS) AS MIN_MARKS ,MAX(MARKS) AS MAX_MARKS,SUB FROM MSC GROUP BY SUB

SELECT MIN(MARKS) AS MIN_MARKS ,MAX(MARKS) AS MAX_MARKS,NAME FROM MSC GROUP BY NAME

SELECT SUM(MARKS) AS TOTAL, AVG(MARKS) AS AVG ,NAME FROM MSC GROUP BY NAME

--
