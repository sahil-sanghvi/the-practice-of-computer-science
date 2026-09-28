--------------------------------------
--------------------------------------
--      a6_olympics_queries.sql     --
--     CSC 106 - Spring 2024        --
--                                  --
-- File for Assignment 6 queries.   --
--                                  --
--       A. Estey - 2024/03/22      --
--                                  --
--------------------------------------
--------------------------------------

.read olympics.sql

.mode column
.header on

--------------------------------------------------
-- Example of how to write queries in this file --
--------------------------------------------------

.print ''
.print 'Demonstration query'
-- The following query produces the name, age, country,  
-- and type of events the athletes from Canada compete in.
.width 16 3 8 14

select distinct name, age, country, category
from athletes natural join events natural join registration
where country = 'Canada'
order by name;



----------------------------
-- Put your answers below --
----------------------------

.print ''
-- Question 1 --
.print 'Question 1'
.width 24 3 16

SELECT name, age, country
FROM athletes
ORDER BY age DESC, name;


.print ''
-- Question 2 --
.print 'Question 2'
.width 16 3 14

SELECT name, age, country
FROM athletes
ORDER BY age DESC, name
LIMIT 5;




.print ''
-- Question 3 --
.print 'Question 3'
.width 16

SELECT DISTINCT country
FROM athletes
ORDER BY country;




.print ''
-- Question 4 --
.print 'Question 4'
.width 24 8 12

SELECT athletes.name,athletes.country, registration.date
FROM athletes
JOIN registration ON athletes.athleteID = registration.athleteID
WHERE athletes.country = 'USA'
ORDER BY registration.date, athletes.name;




.print ''
-- Question 5 --
.print 'Question 5'
.width 18 6 12 16

SELECT athletes.name, medals.place, events.eventName, events.category
FROM athletes
JOIN medals ON athletes.athleteID = medals.athleteID
JOIN events ON medals.eventID = events.eventID
WHERE athletes.name IN ('Usain Bolt', 'Michael Phelps')
ORDER BY medals.place, events.eventName;





.print ''
-- Question 6 --
.print 'Question 6'
.width 24 6 12 12

SELECT athletes.name, medals.place, events.eventName, events.category
FROM athletes
JOIN medals ON athletes.athleteID = medals.athleteID
JOIN events ON medals.eventID = events.eventID
WHERE events.category = 'Gymnastics'
ORDER BY events.eventName, medals.place;




.print ''
-- Question 7--
.print 'Question 7'
.width 18 10 16 12

SELECT athletes.name, events.eventName, events.category, registration.date
FROM athletes
JOIN registration ON athletes.athleteID = registration.athleteID
JOIN events ON registration.eventID = events.eventID
WHERE registration.date BETWEEN '2024-07-30' AND '2024-08-01'
ORDER BY registration.date;





.print ''
-- Question 8 --
.print 'Question 8'
.width 14 10

SELECT country, COUNT(*) AS athletes
FROM athletes
GROUP BY country
ORDER BY athletes DESC, country;




.print ''
-- Question 9 --
.print 'Question 9'
.width 24 8

SELECT athletes.name, COUNT(*) AS medals
FROM athletes
JOIN medals ON athletes.athleteID = medals.athleteID
GROUP BY athletes.name
ORDER BY medals DESC, athletes.name;




.print ''
-- Question 10 --
.print 'Question 10'
.width 16 6

SELECT athletes.name, COUNT(*) AS medals
FROM athletes
JOIN medals ON athletes.athleteID = medals.athleteID
WHERE medals.place = '1st'
GROUP BY athletes.name
ORDER BY medals DESC
LIMIT 1;




.print ''
-- Question 11 --
.print 'Question 11'
.width 16 10

SELECT country, ROUND(AVG(age), 1) AS averageAge
FROM athletes
GROUP BY country
ORDER BY averageAge DESC, country
LIMIT 5;



.print ''
-- Question 12 --
.print 'Question 12'
.width 16 6

SELECT athletes.country, COUNT(*) AS medals
FROM athletes
JOIN medals ON athletes.athleteID = medals.athleteID
GROUP BY athletes.country
HAVING COUNT(*) > 4
ORDER BY medals DESC, athletes.country;



.print ''
-- Question 13 --
.print 'Question 13'
.width 16 6

SELECT athletes.name, COUNT(*) AS medals
FROM athletes
JOIN medals ON athletes.athleteID = medals.athleteID
WHERE athletes.age <= 25
GROUP BY athletes.name
HAVING COUNT(*) > 2
ORDER BY medals DESC, athletes.name;



.print ''
-- Question 14 --
.print 'Question 14'
.width 16 10

SELECT competitor_names.name, events.eventName
FROM (
    SELECT DISTINCT registration.athleteID, athletes.name
    FROM registration
    JOIN athletes ON registration.athleteID = athletes.athleteID
    WHERE registration.eventID IN (
        SELECT eventID
        FROM registration
        JOIN athletes ON registration.athleteID = athletes.athleteID
        WHERE athletes.name = 'Vera Caslavaska'
    ) AND athletes.name != 'Vera Caslavaska'
) AS competitor_names
JOIN registration ON competitor_names.athleteID = registration.athleteID
JOIN events ON registration.eventID = events.eventID
ORDER BY competitor_names.name, events.eventName;





.print ''
-- Question 15 --
.print 'Question 15'
.width 16 10

SELECT competitor_names.name, COUNT(DISTINCT registration.eventID) AS events
FROM (
    SELECT DISTINCT registration.athleteID, athletes.name
    FROM registration
    JOIN athletes ON registration.athleteID = athletes.athleteID
    WHERE registration.eventID IN (
        SELECT eventID
        FROM registration
        JOIN athletes ON registration.athleteID = athletes.athleteID
        WHERE athletes.name = 'Vera Caslavaska'
    ) AND athletes.name != 'Vera Caslavaska'
) AS competitor_names
JOIN registration ON competitor_names.athleteID = registration.athleteID
GROUP BY competitor_names.name
ORDER BY competitor_names.name;





.print ''
-- Question 16 --
.print 'Question 16'
.width 26 10

SELECT athletes.name, athletes.country
FROM athletes
JOIN (
    SELECT country
    FROM athletes
    GROUP BY country
    HAVING COUNT(*) >= 3
) AS countries_with_3_athletes ON athletes.country = countries_with_3_athletes.country
ORDER BY athletes.country, athletes.name;


