DROP TABLE movies;
DROP TABLE people;

CREATE TABLE movies (
	id SERIAL8 PRIMARY KEY,
	title VARCHAR(255),
	year INT2,
	show_time VARCHAR(255)
);

CREATE TABLE people (
	id SERIAL8 PRIMARY KEY,
	name VARCHAR(255)
);INSERT INTO people (name) VALUES ('Ewan Bailey');
INSERT INTO people (name) VALUES ('Stuart Bell');
INSERT INTO people (name) VALUES ('Ian Bone');
INSERT INTO people (name) VALUES ('Collin Bull');
INSERT INTO people (name) VALUES ('Kimberly Clarke');
INSERT INTO people (name) VALUES ('Eloise Coveny');
INSERT INTO people (name) VALUES ('James Davidson');
INSERT INTO people (name) VALUES ('Kyle Johnston');
INSERT INTO people (name) VALUES ('Heather Malloch');
INSERT INTO people (name) VALUES ('Simon McBride');
INSERT INTO people (name) VALUES ('John Smith');
INSERT INTO people (name) VALUES ('Carme Mias');
INSERT INTO people (name) VALUES ('John Page');
INSERT INTO people (name) VALUES ('Delia Paternina');
INSERT INTO people (name) VALUES ('Robert Templeton');
INSERT INTO people (name) VALUES ('Neil Watkins');

INSERT INTO movies (title, year, show_time) VALUES ('Iron Man', 2008, '20:30');
INSERT INTO movies (title, year, show_time) VALUES ('The Incredible Hulk', 2008, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 2', 2010, '19:40');
INSERT INTO movies (title, year, show_time) VALUES ('Thor', 2011, '14:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The First Avenger', 2011, '17:55');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers Assemble', 2012, '16:50');
INSERT INTO movies (title, year, show_time) VALUES ('Iron Man 3', 2013, '23:10');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: The Dark World', 2013, '22:20');
INSERT INTO movies (title, year, show_time) VALUES ('Batman Begins', 2005, '12:50');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: The Winter Soldier', 2014, '15:30');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy', 2014, '22:50');
INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Age of Ultron', 2015, '23:45');
INSERT INTO movies (title, year, show_time) VALUES ('Ant-Man', 2015, '16:20');
INSERT INTO movies (title, year, show_time) VALUES ('Captain America: Civil War', 2016, '22:25');
INSERT INTO movies (title, year, show_time) VALUES ('Doctor Strange', 2016, '12:50');
INSERT INTO movies (title, year, show_time) VALUES ('Guardians of the Galaxy 2', 2017, '22:10');
INSERT INTO movies (title, year, show_time) VALUES ('Spider-Man: Homecoming', 2017, '15:40');
INSERT INTO movies (title, year, show_time) VALUES ('Thor: Ragnarok', 2017, '19:35');
INSERT INTO movies (title, year, show_time) VALUES ('Black Panther', 2018, '16:50');

