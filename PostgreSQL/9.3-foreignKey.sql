-- Active: 1747587952649@@127.0.0.1@5432@ph
CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
)


CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title text NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE SET DEFAULT DEFAULT 2
)

insert INTO "user"(username) VALUES
('akash'),
('batash'),
('sagor'),
('nodi');

INSERT INTO post (title, user_id) VALUES
('Introduction to Web Development', 2),
('Advanced Techniques in JavaScript', 1),
('Building RESTful APIs with Node.js', 3),
('Responsive Web Design Principles', 4);


SELECT * FROM "user";
SELECT * FROM post;
DROP TABLE "user";
DROP TABLE post;


INSERT INTO post (title, user_id) VALUES('test', NULL)




-- Insertion constraint on INSERT post
-- Attempting to insert a post with a user ID that does not exist
-- Inserting a post with




















 a valid user ID
-- Attempting to insert a post without specifying a user ID


DELETE FROM "user" 
    WHERE id = 4;


-- Deletion constraint on DELETE user
-- Cascading Deletion -> ON DELETE CASCADE
-- Restrict Deletion -> ON DELETE RESTRICT / ON DELETE NO ACTION (default)
-- Setting NULL -> ON DELETE SET NULL
-- Set Default value -> ON DELETE SET DEFAULT