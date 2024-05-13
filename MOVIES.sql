create table entertainment(
	movies_id int not null primary key,
	title varchar(100)  not null,
	Director varchar(100) not null,
	year int not null,
	length_minutes int not null
)
insert into entertainment
(movies_id,title,Director,year,length_minutes)
values(1 ,'Toy Story', 'John Lasseter', 1995 ,81),
(2 , 'A Bugs Life','John Lasseter', 1998, 95),
(3 , 'Toy Story 2', 'John Lasseter', 1999, 93),
(4, 'Monsters, Inc.', 'Pete Docter', 2001, 92),
(5, 'Finding Nemo Andrew', 'Stanton', 2003, 107),
(6, 'The Incredibles', 'Brad Bird', 2004, 116),
(7, 'Cars', 'John Lasseter', 2006, 117),
(8, 'Ratatouille', 'Brad Bird', 2007 ,115),
(9, 'WALL-E', 'Andrew Stanton', 2008, 104),
(10,'Up',' Pete Docter', 2009, 101),
(11, 'Toy Story 3', 'Lee Unkrich', 2010, 103),
(12, 'Cars 2', 'John Lasseter', 2011, 120),
(13 ,'Brave Brenda', 'Chapman', 2012, 102),
(14, 'MonstersUniversity','Dan Scanlon', 2013 ,110);

--1. Find the title of each film
select title
from entertainment;

--2. Find the director of each film
select Director
from entertainment
--3. Find the title and director of each film
select title, director
from entertainment
--4. Find the title and year of each film
select title, year
from entertainment;

--5. Find all the information about each film
select *
from entertainment
--6. Find the movie with a row id of 6
select *
from entertainment
where movies_id=6
--7. Find the movies released in the years between 2000 and 2010
select *
from entertainment
where year between 2000 and 2010
--8. Find the movies not released in the years between 2000 and 2010
select *
from entertainment
where year not between 2000 and 2010;


--9. Find the first 5 Pixar movies and their release year
select top 5 title, year
from entertainment;

--10. Find all the Toy Story movies
select *
from entertainment
where title like 'Toy%'

--11. Find all the moviesdirected by John Lasseter
select *
from entertainment
where director = 'John Lasseter';

--12. Find all the movies (and director) not directed by John Lasseter
select *
from entertainment
where director != 'John Lasseter';

--13. Find all the WALL-* movies
select *
from entertainment
where title like 'WALL%';

--14. List all directors of Pixar movies (alphabetically), without duplicates
select distinct director
from entertainment;
--15. List the last four Pixar movies released (ordered from most recent to least)
select top 4 *
from entertainment
order by year desc;

select *
from entertainment
ORDER BY YEAR
OFFSET 10 ROWS
FETCH NEXT 4 ROWS ONLY
--16. List the first five Pixar movies sorted alphabetically
SELECT TOP 5*
FROM entertainment
ORDER BY title

--17. List the next five Pixar movies sorted alphabetically
SELECT *
FROM entertainment
ORDER BY TITLE
OFFSET 5 ROWS
FETCH NEXT 5 ROWS ONLY















































