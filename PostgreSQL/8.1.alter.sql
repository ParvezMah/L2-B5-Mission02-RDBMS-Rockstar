
SELECT * from person2;

ALTER TABLE person2
    ADD COLUMN email VARCHAR(25) DEFAULT 'default@gmail.com' NOT NULL;

ALTER TABLE person2 
    DROP COLUMN email;

ALTER TABLE person2
    RENAME COLUMN age to user_age;

ALTER TABLE person2 
    ALTER COLUMN user_name TYPE VARCHAR(50);

ALTER TABLE person2 
    ALTER COLUMN user_age set NOT NULL;

ALTER TABLE person2 
    ALTER COLUMN user_age DROP NOT NULL;

ALTER TABLE person2
    ADD CONSTRAINT unique_person2_user_age UNIQUE(user_age);

ALTER TABLE person2
    DROP CONSTRAINT unique_person2_user_age;

TRUNCATE TABLE person2;

INSERT INTO person2 values(8, 'test2', 55, 'test2@gmail.com')

DELETE FROM person2
    WHERE id=3;