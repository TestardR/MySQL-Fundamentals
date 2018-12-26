SELECT 'Hello', 'World';

/* SELECT <COLUMN_NAME>, <COLUMN_NAME> FROM <TABLE_NAME>; */
SELECT first_name, last_name
FROM person;
SELECT person_first_name, person_last_name
FROM person;

/* SELECT List Wilcard (*) pulls all the columns from a table. It is a bad practice. */

/* Qualifying Column Name with Table Name is a good practice */
SELECT person.first_name, person.last_name
FROM person;

/* Aliasing the Table Name allows for less typing, best pratice */
SELECT p.first_name, p.last_name
FROM person p;

SELECT 'Hello' as FirstWord, 'World' as SecondWord;

SELECT p.person_first_name as FirstName
FROM person p;

/* DISTINCT : all unique first names of the people I know */

SELECT DISTINCT p.first_name
FROM person p;

SELECT DISTINCT p.person_first_name, p.person_last_name as FirstName
FROM person p;