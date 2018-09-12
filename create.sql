CREATE TABLE books (
    id SERIAL PRIMARY KEY,
    isbn VARCHAR NOT NULL,
    title VARCHAR NOT NULL,
    author INTEGER NOT NULL,
    year INTEGER NOT NULL
);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR NOT NULL,
    password VARCHAR NOT NULL
);

CREATE TABLE reviews (
    id SERIAL PRIMARY KEY,
    reviewtext VARCHAR NOT NULL,
    books_id INTEGER REFERENCES books,
    users_id INTEGER REFERENCES users
);
