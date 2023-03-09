CREATE DATABASE IF NOT EXISTS xampp;

USE xampp;

CREATE TABLE Books (
  id INTEGER PRIMARY KEY,
  Title TEXT,
  Author TEXT,
  Publisher TEXT,
  PublicationYear INTEGER,
  ISBN TEXT
);

INSERT INTO Books (id, Title, Author, Publisher, PublicationYear, ISBN)
VALUES (1, 'Harry Potter and the Philosopher''s Stone', 'J.K. Rowling', 'Bloomsbury Publishing', 1997, '9780747532743');

INSERT INTO Books (id, Title, Author, Publisher, PublicationYear, ISBN)
VALUES (2, 'The Catcher in the Rye', 'J.D. Salinger', 'Little, Brown and Company', 1951, '0316769487');

INSERT INTO Books (id, Title, Author, Publisher, PublicationYear, ISBN)
VALUES (3, 'To Kill a Mockingbird', 'Harper Lee', 'J.B. Lippincott & Co.', 1960, '0446310786');

INSERT INTO Books (id, Title, Author, Publisher, PublicationYear, ISBN)
VALUES (4, '1984', 'George Orwell', 'Secker and Warburg', 1949, '9780451524935');

INSERT INTO Books (id, Title, Author, Publisher, PublicationYear, ISBN)
VALUES (5, 'Pride and Prejudice', 'Jane Austen', 'T. Egerton, Whitehall', 1813, '9780141439518');

