USE master
/*
1- How many Animals in the DB per animal Name(1 row for each unique Animal_Name, 2 rows)
*/
SELECT Animal_Name, COUNT(Animal_Population) AS 'Total_Animal_Number'
FROM dbo.Animals
GROUP BY Animal_Name
-- There are 2 kinds of animals in the database, Bear is 8 and Deer is 4.

/*
2- All the Animals whose population worldwide is less than 500(Think if you have to use Having?)
*/
SELECT Animal_Name
	  , SUM ( 
			Animal_Population
			) AS 'Total_Animal_Number'
FROM dbo.Animals
GROUP BY Animal_Name
HAVING 
	SUM (
		   Animal_Population
	   ) < 500

/*
3- All the continents which have more than 500 animal
*/
SELECT Animal_Continent
	  , SUM (
			Animal_Population
			) AS 'Total_Animal_Number'
FROM dbo.Animals
GROUP BY Animal_Continent
HAVING 
	SUM (
		   Animal_Population
	   ) > 500

/*
4- Select all the continents which have more than 400 endangered animal
*/
SELECT Animal_Continent
	   , SUM (
			 Animal_Population * CASE WHEN Animal_Endangered= 'Y' THEN 1 END
		 ) AS 'Total_Endangered_Animal'
FROM dbo.Animals
GROUP BY Animal_Continent
HAVING
    SUM (
        Animal_Population * CASE WHEN Animal_Endangered= 'Y' THEN 1 END
    ) > 400