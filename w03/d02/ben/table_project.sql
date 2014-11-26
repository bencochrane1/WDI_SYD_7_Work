CREATE TABLE posts
(
    id SERIAL4 PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    author VARCHAR(50) NOT NULL,
    author_website VARCHAR(255) NOT NULL
);


ALTER TABLE posts ADD COLUMN category VARCHAR(255) NOT NULL;

CREATE TABLE authors
(
    id SERIAL4 PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    website VARCHAR(255) NOT NULL
);

ALTER TABLE posts REMOVE COLUMN author;
ALTER TABLE posts REMOVE COLUMN author_website;

