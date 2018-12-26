SELECT p.last_name
FROM person p
WHERE p.first_name = 'Jon';

/* It works with Boolean Operators */
/* The AND keyword */
SELECT p.first_name, p.last_name
FROM person p
WHERE p.first_name = 'Jon' AND p.birthdate > '12/31/1965';

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name = 'Jon'
    AND
    p.person_contacted_number >= 5;

/* The OR keyword */
SELECT p.first_name, p.last_name
FROM person p
WHERE p.first_name = 'Jon' OR p.last_name = 'Flanders';

SELECT p.person_last_name
FROM person p
WHERE p.person_first_name = 'Jon'
    OR
    p.person_contacted_number >= 1;

/* BETWEEN : Acts on column and two values (it is inclusive) */
SELECT p.first_name, p.last_name
FROM person p
WHERE p.contacted 
BETWEEN 1 AND 20;

USE contacts;
SELECT p.person_last_name
FROM person p
WHERE p.person_contacted_number
BETWEEN 1 AND 5;

/* LIKE */
SELECT p.first_name,
    p.last_name
FROM person p
WHERE p.first_name
LIKE 'J%';

USE contacts;
SELECT p.person_last_name
FROM person p
WHERE p.person_first_name
LIKE '%i%';

/* IN */
SELECT p.first_name,
    p.last_name
FROM person p
WHERE p.first_name
IN ('Jon', 'Fritz');

USE contacts;
SELECT p.person_last_name
FROM person p
WHERE p.person_first_name
IN ('Jon', 'Fritz');

/* IS : equals */
SELECT p.first_name, p.last_name
FROM perosn p
WHERE p.last_name
IS NULL;

SELECT e.email_address_person_id, e.email_address
FROM email_address e
WHERE e.email_address_person_id
IS NULL;



/* IS NOT : not equals*/
SELECT p.first_name, p.last_name
FROM perosn p
WHERE p.last_name
IS NOT NULL;

SELECT e.email_address_person_id, e.email_address
FROM email_address e
WHERE e.email_address_person_id
IS NOT NULL;
