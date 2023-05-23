USE master
/*
1- What is the total Population of ALL the Animals in the DB in total
(1 Row - Only select the total number of animals)
*/
SELECT Animal_Population, SUM(Animal_Population) AS 'Animal_Population'
FROM dbo.Mammals
GROUP BY Animal_Population

/*
2- What is the total population of animals by Animal_Name?
(2 Rows - Select Animal_Name and total population of that animal)
*/
SELECT Animal_Name, SUM(Animal_Population) AS 'Animal_Population'
FROM dbo.Mammals
GROUP BY Animal_Name

/*
3- How many animals are in each country
(Hint - 1 row for each unique country - 6 rows, Select the Animal_Country 
and the total population of the animals in that country)
*/
SELECT Animal_Country, SUM(Animal_Population) AS 'Animal_Population'
FROM dbo.Mammals
GROUP BY Animal_Country
-- There are 200 animals in Canada, 100 in China, 300 in India, 100 in Maxico, 100 in Russia, 400 in the U.S..

/*
4- How many animals are in each continent
(Hint - 1 row for each unique continent - 2 rows, Select the Animal_Continent 
and the total population of the animals in that continent)
*/
SELECT Animal_Continent, SUM(Animal_Population) AS 'Animal_Number'
FROM dbo.Mammals
GROUP BY Animal_Continent
-- There are 500 animals in Asia and 700 in NA.

/*
5- How many animals are in each continent and animal name
(Hint - 1 row for each Animal_Name and Continent unique combination.
That is rows for (Bear NA, Bear ASIA, Deer NA etc, Select the Animal_Name, 
Animal_Continent and the total population of the animals based on 
Animal_Name and Animal_Continent)
*/
SELECT Animal_Name, Animal_Continent, SUM(Animal_Population) AS 'Total_Animal_Number'
FROM dbo.Mammals
GROUP BY Animal_Name, Animal_Continent
-- There are Asia Bear 300, Asia Deer 200, NA Bear 500, NA Deer 200.

/*
6- Find the number of Endangered animals per continent
(1 row for each continent only count Animal_Endangered='Y'
2 rows)
*/
SELECT Animal_Continent, SUM (CASE WHEN Animal_Endangered= 'Y' THEN 1 END) AS 'Total_Endangered_Animal'
FROM dbo.Mammals
GROUP BY Animal_Continent

/*
7- Find the number of Endangered animals overall
(Only count Animal_Endangered='Y', 1 row)
*/
SELECT SUM (CASE WHEN Animal_Endangered= 'Y' THEN 1 END) AS 'Total_Endangered_Animal'
FROM dbo.Mammals
