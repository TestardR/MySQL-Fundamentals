/* CRUD */
/* SELECT, INSERT, UPDATE, DELETE */

/* INSERT */

INSERT INTO 
person
    (person_id, first_name, contacter_number, date_last_contacted, date_added)
VALUES
    (1, 'Romain', 'Testard', 0, NULL, '2016-05-14 11:43:31');

INSERT INTO
person
    (
    person_id,
    person_first_name,
    person_last_name,
    person_contacted_number,
    person_date_last_contacted,
    person_date_added

    )
VALUES
    (
        5,
        'Romain',
        'Testard',
        0,
        '2017-05-14 11:43:42',
        '2017-05-14 11:43:42'
);

/* BULK INSERT: Insert multiple rows with one statement */
INSERT INTO 
person
p
SELECT *
FROM old_person op
WHERE op.person_id > 300;

INSERT INTO
person
    (
    person_id,
    person_first_name,
    person_last_name,
    person_contacted_number,
    person_date_last_contacted,
    person_date_added

    )
VALUES
    (
        6,
        'Romain1',
        'Testard',
        0,
        '2017-05-14 11:43:42',
        '2017-05-14 11:43:42'
),
    (
        7,
        'Romain2',
        'Testard',
        0,
        '2017-05-14 11:43:42',
        '2017-05-14 11:43:42'
),
    (
        8,
        'Romain3',
        'Testard',
        0,
        '2017-05-14 11:43:42',
        '2017-05-14 11:43:42'
);

/* UPDATE: Modifies column(s) in a single table */
UPDATE
email_address e
SET
e
.email_address = 'aaron@mail.com'
WHERE
e.email_address_id = 5;

UPDATE 
person p
SET
p
.person_first_name = 'Banana',
p.person_last_name = 'Joe'
WHERE
p.person_id = 6;

/* DELETE: One or more rows in a table */

DELETE FROM person p 
WHERE
p.id = 5;

DELETE FROM person
WHERE person_id > 5;
