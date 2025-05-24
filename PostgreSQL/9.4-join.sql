-- Active: 1747587952649@@127.0.0.1@5432@ph
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


-- SELECT title, username FROM post   
-- SELECT * FROM post   
-- SELECT post.id FROM post   
-- SELECT "user".id FROM post   
SELECT * FROM post as p
-- JOIN "user" as u on p.user_id = u.id;
INNER JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
-- JOIN "user" as u on p.user_id = u.id;
LEFT OUTER JOIN "user" as u on p.user_id = u.id;

SELECT * FROM post as p
-- JOIN "user" as u on p.user_id = u.id;
-- RIGHT JOIN "user" as u on p.user_id = u.id;
RIGHT OUTER JOIN "user" as u on p.user_id = u.id;


SELECT * FROM post as p
FULL OUTER JOIN "user" as u on p.user_id = u.id;


INSERT INTO post (id, title, user_id) VALUES
(5, 'this is a test post title', NULL)