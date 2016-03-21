# Movie SQL Search Part 2

## Description

The goal for this assignment is to understand aggregations as well as database modification.

## Objectives

### Learning Objectives

After completing this assignment, you should understand:

* Table Creation
* ALTER Tables
* Updates
* Inserts

## Details

### Deliverables

* A Git repo fork of movie-sql-part-2
* A .sql (text) file with each of the required queries 

### Requirements  

* Need to work on provided database

## Normal Mode

Complete the following modification objectives:

* Create a new table called actors (We are going to pretend the actor can only play in one movie)
The table should include name, character name, foreign key to movies and date of birth at least plus an id field.

* Pick 3 movies and create insert statements for 10 actors each.  You should use the multi value insert statements

* Create a new column in the movie table to hold the MPAA rating.
UPDATE 5 different movies to their correct rating


## Hard Mode
* Create a new field on the movies table for the year.  Using an update query and a substring method update that column for every movie with the year found in the title column.
HINT: The pattern needed is '\d{4}' and depending on how your Datagrip was set up you may need to use the psql command line to get the query to work.

* Now that we know we can add actors create a join table between actors and movies.  This table should not only have the foreign keys for each of the tables, include an extra field for the character name for the actor.  Use the current actor table to populate the join table with data including the character’s name

* Once you have completed the new year column go through the title column and strip out the year.

* Create a new column in the movies table and store the average review for each and every movie. 
