SELECT 1 + 1;

SELECT name FROM Person;

SELECT 
	name,
	death_year
FROM 
	Person p;

SELECT * FROM Person;

SELECT 
	birth_year,
	death_year,
	name AS Historiens
FROM 
	Person p ;

SELECT 
	birth_year,
	death_year,
	name Historiens
FROM 
	Person p ;

SELECT 
	name
FROM 
	Person AS P;

SELECT 
	name
FROM 
	Person p 
ORDER BY 
	name DESC ;

SELECT 
	name,
	birth_year 
FROM 
	Person p 
ORDER BY 
	name ASC,
	birth_year DESC ;

SELECT 
	name,
	birth_year 
FROM 
	Person p 
ORDER BY 
	1,
	2;

SELECT DISTINCT siege
FROM Institution i 
ORDER BY i.siege ;

SELECT DISTINCT  
	siege,
	type
FROM 
	Institution
ORDER BY 
	siege ;
	

