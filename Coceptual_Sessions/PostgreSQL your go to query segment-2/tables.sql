-- Active: 1744058703059@@127.0.0.1@5432@b5_psql_cs
-- Create table: publishers
CREATE DATABASE b5_psql_cs;

CREATE TABLE publishers (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL
);

-- Create table: books
CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title TEXT NOT NULL,
  author_name TEXT,
  published_year INT,
  price NUMERIC(6, 2),
  in_stock BOOLEAN,
  publisher_id INT,
  FOREIGN KEY (publisher_id) REFERENCES publishers(id)
);

DROP TABLE books;

DROP TABLE publishers;
