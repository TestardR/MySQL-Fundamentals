/* CREATE DATBASE */
CREATE DATABASE Contact;

USE DATABASE Contact;
SELECT *
FROM person p;

SELECT *
FROM
    Contact.person p;

CREATE DATABASE contacts_v2;

/* CREATE TABLE */
CREATE TABLE email_address
(
    email_address_id INTEGER,
    email_address_person_id INTEGER,
    email_address VARCHAR(55)
);

USE contacts_v2;

CREATE TABLE person
(
    person_id INTEGER,
    person_first_name VARCHAR(256),
    person_lastname VARCHAR(256)
);

/* NULL VALUES */
-- Default values for colum definitio
-- Don't insert NULL values
-- NOT NULL while creating a table means the field is required

CREATE TABLE email_address
(
    email_address_id INTEGER NOT NULL,
    email_address_person_id INTEGER,
    email_address VARCHAR(55) NOT NULL
);

/* PRIMARY KEY */
-- Must be unique
-- Must be not null

CREATE TABLE email_address
(
    email_address_id INTEGER PRIMARY KEY,
    email_address_person_id INTEGER,
    email_address VARCHAR(55) NOT NULL
);

/* CONSTRAINT */
-- Way to add keys in one grouping 
-- Primary or foreign keys

CREATE TABLE phone_number
(
    phone_number_id INTEGER NOT NULL,
    phone_number_person_id INTEGER NOT NULL,
    phone_number VARCHAR(55) NOT NULL,
    CONSTRAINT PK_phone_number PRIMARY KEY (phone_number_id)
);

/* ALTER TABLE: Used to change an existing table */
ALTER TABLE
email_address
ADD CONSTRAINT
FK_email_address_person 
FOREIGN KEY
(email_address_person_id)
REFERENCES
person
(person_id);

/* DROP TABLE: Removes table and all data from database */
DROP TABLE person;