DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE albums(
  id SERIAL4 primary key,
  name VARCHAR(255),
  Quantity INT4
);

CREATE TABLE artists(
  id SERIAL4 primary key,
  name VARCHAR(255)
);