-- Q1. To load the databse 
USE happyanalysis;
SELECT * from data2022;

-- Q2. Find the total number of columns ?
SELECT count(*) as Number_Of_Columns
FROM information_schema.columns
WHERE table_name='data2022';

-- Q3. Find out the total Number of Rows ?
SELECT count(*) as Number_Of_Columns
FROM data2022; 

-- Q4. To get more column data information  ?
SHOW columns FROM data2022;

-- Q5. Checking null values present in happiness_score column ?
SELECT *
FROM data2022
where happiness_score IS NULL OR happiness_score=" ";

-- Q6.  Print the entire record of India ?
SELECT *
FROM data2022
WHERE Country="India";

-- Q7. Analyzing the data, 
--     Top 5 countries with highest happiness score ?
SELECT ID_RANK,Country,Happiness_score
FROM data2022
order by Happiness_score desc limit 5;

-- Q8. Top 5 countries with least score ?
SELECT ID_RANK,Country,Happiness_score
FROM data2022
order by Happiness_score limit 5;  

-- Q9. SCORE and RANK of INDIA ?
SELECT ID_RANK,Country,Happiness_score
FROM data2022
where Country="India";  

-- Q10. Top 5 countries in GDP_pc ?
SELECT ID_RANK,Country,GDP_pc
FROM data2022
ORDER by GDP_pc DESC LIMIT 5;

-- Q11.Top 5 countries in Social_support ?
SELECT ID_RANK,Country,Social_support
FROM data2022
ORDER by Social_support DESC LIMIT 5;

-- Q12. what is the perception_of_corruption score of INDIA ?
SELECT Country,Perceptions_of_corruption
FROM data2022
where Country="India"
Order by Perceptions_of_corruption; 


-- Q13.Find the Social_support for India ?
SELECT ID_RANK,Country,Social_support
FROM data2022
WHERE Country= "India";  

-- Q14. -- Exploring the min, max and avg Health_life_expectancy score ?
SELECT Country,max(Healthy_life_expectancy)
FROM data2022
GROUP by Country; 

SELECT Country,min(Healthy_life_expectancy)
FROM data2022
GROUP by Country; 

SELECT Country,avg(Healthy_life_expectancy)
FROM data2022
GROUP by Country; 

-- Q15. Top 5 countries in freedom_to_choose ?
SELECT ID_RANK,Country,freedom_to_choose
FROM data2022
order by freedom_to_choose desc 
limit 5; 

-- Q16. Top 5 countries in Generosity ?
SELECT COuntry,Generosity
FROM data2022
Order by Generosity desc limit 5;

-- Q17. Top 3 countries with highest perception_of_corruption ?
SELECT Country,Perceptions_of_corruption
FROM data2022
Order by Perceptions_of_corruption desc limit 3; 

-- Q18. Top 3 countries with lowest perception_of_corruption ?
SELECT Country,Perceptions_of_corruption
FROM data2022
Order by Perceptions_of_corruption limit 3;






















