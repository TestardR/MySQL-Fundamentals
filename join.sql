/* CROSS JOIN: all rows from both tables, no WHERE clause, least useful */
/* Bad practice as there is no WHERE */

SELECT p.first_nampe, e.email_address
FROM person p, email_address e;
/* Inefficient, Bad pratice */

SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p, email_address e;
/* Inefficient, Bad pratice */

/* INNER JOIN: typical join, matches column in first table to second */
/* Primary key to foreign key is most common  */

SELECT p.first_nampe, p.last_name, e.email_address
FROM person p
    INNER JOIN
    email_address e
    ON 
p.person_id = e.email_address_person_id;

SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
    INNER JOIN email_address e
    ON 
p.person_id = e.email_address_person_id;

/* OUTER JOIN: INNER JOIN doesn't deal with NULL values, which does OUTER JOIN */
/* OUTER JOIN works even when no match */

/* LEFT OUTER JOIN: All rows from the left side will be returned */

SELECT p.first_name, p.last_name, e.email_address
FROM person p
    LEFT OUTER JOIN
    email_address e
    ON p.person_id = e.email_address_person_id;

SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
    LEFT OUTER JOIN email_address e
    ON 
p.person_id = e.email_address_person_id;

/* Right OUTER JOIN: All rows from the left side will be returned */

SELECT p.first_name, p.last_name, e.email_address
FROM person p
    RIGHT OUTER JOIN
    email_address e
    ON p.person_id = e.email_address_person_id;

SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
    RIGHT OUTER JOIN email_address e
    ON 
p.person_id = e.email_address_person_id;

/* FULL OUTER JOIN, still uncommon query, no support in mySQL */
SELECT p.first_name, p.last_name, e.email_address
FROM person p
    FULL OUTER JOIN
    email_address e
    ON p.person_id = e.email_address_person_id;

/* HERE IS THE WORK AROUND IN mySQL */
SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
    LEFT OUTER JOIN email_address e
    ON 
p.person_id = e.email_address_person_id
UNION DISTINCT
SELECT p.person_first_name, p.person_last_name, e.email_address
FROM person p
    RIGHT OUTER JOIN email_address e
    ON 
p.person_id = e.email_address_person_id;


/* SELF JOIN: JOIN a table on itself, useful when table contains hierarchical data */
/* No special syntax */