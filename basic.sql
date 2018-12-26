/* Basic SQL Commands */

SELECT first_name, last_name
FROM person;
/* works on multiple tables */

INSERT INTO contacts
    (first_name, last_name)
VALUES
    ('Fritz', 'Onion');
/* works only on a single table */

UPDATE contacts SET last_name ='Ahern' WHERE id = 1;

DELETE FROM contacts WHERE id = 2;