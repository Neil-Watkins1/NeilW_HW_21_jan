# SQL Homework

The local cinema are having a Marvel Movie Marathon! They have asked you to help maintain their database of movies with times and attendees.

## To access the database:

First, create a database called 'marvel'

```
# terminal
createdb marvel
```

Next, run the provided SQL script to populate your database:

```
# terminal
psql -d marvel -f marvel.sql
```

Use the supplied data as the source of data to answer the questions. Copy the SQL command you have used to get the answer, and paste it below the question, along with the result they gave.

marvel=# SELECT * FROM movies;

 id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 20:30
  2 | The Incredible Hulk                 | 2008 | 16:50
  3 | Iron Man 2                          | 2010 | 19:40
  4 | Thor                                | 2011 | 14:20
  5 | Captain America: The First Avenger  | 2011 | 17:55
  6 | Avengers Assemble                   | 2012 | 16:50
  7 | Iron Man 3                          | 2013 | 23:10
  8 | Thor: The Dark World                | 2013 | 22:20
  9 | Batman Begins                       | 2005 | 12:50
 10 | Captain America: The Winter Soldier | 2014 | 15:30
 11 | Guardians of the Galaxy             | 2014 | 22:50
 12 | Avengers: Age of Ultron             | 2015 | 23:45
 13 | Ant-Man                             | 2015 | 16:20
 14 | Captain America: Civil War          | 2016 | 22:25
 15 | Doctor Strange                      | 2016 | 12:50
 16 | Guardians of the Galaxy 2           | 2017 | 22:10
 17 | Spider-Man: Homecoming              | 2017 | 15:40
 18 | Thor: Ragnarok                      | 2017 | 19:35
 19 | Black Panther                       | 2018 | 16:50
(19 rows)



## Questions

1.  Return ALL the data in the 'movies' table.
SELECT * FROM movies;

 id |                title                | year | show_time
----+-------------------------------------+------+-----------
  1 | Iron Man                            | 2008 | 20:30
  2 | The Incredible Hulk                 | 2008 | 16:50
  3 | Iron Man 2                          | 2010 | 19:40
  4 | Thor                                | 2011 | 14:20
  5 | Captain America: The First Avenger  | 2011 | 17:55
  6 | Avengers Assemble                   | 2012 | 16:50
  7 | Iron Man 3                          | 2013 | 23:10
  8 | Thor: The Dark World                | 2013 | 22:20
  9 | Batman Begins                       | 2005 | 12:50
 10 | Captain America: The Winter Soldier | 2014 | 15:30
 11 | Guardians of the Galaxy             | 2014 | 22:50
 12 | Avengers: Age of Ultron             | 2015 | 23:45
 13 | Ant-Man                             | 2015 | 16:20
 14 | Captain America: Civil War          | 2016 | 22:25
 15 | Doctor Strange                      | 2016 | 12:50
 16 | Guardians of the Galaxy 2           | 2017 | 22:10
 17 | Spider-Man: Homecoming              | 2017 | 15:40
 18 | Thor: Ragnarok                      | 2017 | 19:35
 19 | Black Panther                       | 2018 | 16:50
(19 rows)

2.  Return ONLY the name column from the 'people' table

SELECT name FROM people;
       name       
------------------
 Ewan Bailey
 Stuart Bell
 Ian Bone
 Collin Bull
 Kimberly Clarke
 Eloise Coveny
 James Davidson
 Kyle Johnston
 Heather Malloch
 Simon McBride
 John Smith
 Carme Mias
 John Page
 Delia Paternina
 Robert Templeton
 Neil Watkins
(16 rows)



3.  Oops! Someone at CodeClan spelled Kimberly's name wrong! Change it to reflect the proper spelling ('Kimberly Clarke' should be 'Kimberly Clark').

UPDATE people SET name = 'Kimberly Clark' WHERE name = 'Kimberly Clarke';
UPDATE 1


4.  Return ONLY your name from the 'people' table.

 SELECT * FROM people WHERE name = 'Neil Watkins';
 id |     name     
----+--------------
 16 | Neil Watkins

5.  The cinema is showing 'Batman Begins', but Batman is DC, not Marvel! Delete the entry from the 'movies' table.

 DELETE from movies WHERE title = 'Batman Begins';
DELETE 1


6.  Create a new entry in the 'people' table with the name of one of the instructors.

INSERT INTO people (name) VALUES ('John McCollum');
INSERT 0 1


7.  John Smith has decided to hijack our movie evening, Remove him from the table of people.

DELETE from people WHERE name = 'John Smith';
DELETE 1


8.  The cinema has just heard that they will be holding an exclusive midnight showing of 'Avengers: Infinity War'!! Create a new entry in the 'movies' table to reflect this.

INSERT INTO movies (title, year, show_time) VALUES ('Avengers: Infinity War', 2017, ' 00:00');
INSERT 0 1


9.  The cinema would also like to make the Guardians movies a back to back feature. Find out the show time of "Guardians of the Galaxy" and set the show time of "Guardians of the Galaxy 2" to start two hours later.

SELECT * FROM movies WHERE title = 'Guardians of the Galaxy';
 id |          title          | year | show_time
----+-------------------------+------+-----------
 11 | Guardians of the Galaxy | 2014 | 22:50
(1 row)

UPDATE movies SET show_time = '00:50' WHERE title = 'Guardians of the Galaxy 2';
UPDATE 1


## Extension

1.  Research how to delete multiple entries from your table in a single command.

DELETE from people WHERE id BETWEEN 1 AND 3;
DELETE 3
