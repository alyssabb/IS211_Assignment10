PART 1
CREATE TABLE artists (
  artist_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL
);
----------------------------------------------------------------------
CREATE TABLE albums (
  album_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  artist_id INTEGER NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);
CREATE TABLE songs (
  song_id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  album_id INTEGER NOT NULL,
  track_number INTEGER NOT NULL,
  length INTEGER NOT NULL,
  FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

Insert a new artist
INSERT INTO artists (name) VALUES ('The Beatles');

 Insert a new album for the artist
INSERT INTO albums (name, artist_id) VALUES ('Abbey Road', 1);

 Insert a new song for the album
INSERT INTO songs (name, album_id, track_number, length) VALUES ('Something', 1, 3, 150);

Query all songs for a specific album
SELECT * FROM songs WHERE album_id = 1;
