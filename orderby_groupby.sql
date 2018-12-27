/* ORDER BY */

SELECT p.last_name, p.first_name
FROM person p
ORDER BY p.last_name;

SELECT p.person_first_name, p.person_last_name
FROM person p
ORDER BY p.person_first_name;

/*  Set functions : COUNT, MAX, MIN, AVG, SUM */
SELECT SUM(p.contacter_number)
FROM person p;

-- COUNT
SELECT COUNT(p.person_first_name)
FROM person p
WHERE p.person_last_name = 'Ahern';
-- MAX
SELECT MAX(p.person_contacted_number)
FROM person p;
-- MIN
SELECT MIN(p.person_contacted_number)
FROM person p;
-- AVG
SELECT AVG(p.person_contacted_number)
FROM person p;
-- SUM
SELECT SUM(p.person_contacted_number)
FROM person p;

/* Set Function And Qualifiers */
SELECT COUNT(DISTINCT p.first_name)
FROM person p;

SELECT COUNT(DISTINCT p.person_first_name)
FROM person p;

/* GROUP BY : create subset*/
SELECT COUNT(p.first_name),
    p.first_name
FROM person p
GROUP BY p.first_name;

SELECT COUNT(p.person_first_name),
    p.person_first_name
FROM person p
GROUP BY p.person_first_name;

/* Having : to restrict GROUP BY*/
SELECT
    COUNT(DISTINC p
.first_name),
p.first_name
FROM person p
GROUP BY p.first_name
HAVING COUNT
(DISTINCT p.first_name) >= 5;

SELECT COUNT(p.person_first_name) as COUNT,
    p.person_first_name
FROM person p
GROUP BY p.person_first_name
HAVING p.person_first_name = 'Jon';

SELECT COUNT(p.person_first_name) as COUNT,
    p.person_first_name
FROM person p
GROUP BY p.person_first_name
HAVING COUNT(p.person_first_name) > 1; 