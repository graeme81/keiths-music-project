DROP TABLE IF EXISTS albums;
DROP TABLE IF EXISTS artists;

CREATE TABLE artists(
  id SERIAL4 primary key,
  name VARCHAR(255)
);

CREATE TABLE albums(
  id SERIAL4 primary key,
  title VARCHAR(255),
  quantity INT4,
  artist_id INT4 REFERENCES artists(id) ON DELETE CASCADE
);

INSERT INTO artists (name) VALUES ('The Rolling Stones');
INSERT INTO artists (name) VALUES ('The Who');
INSERT INTO artists (name) VALUES ('Keith Jarrett');
INSERT INTO artists (name) VALUES ('Keith Emerson');
