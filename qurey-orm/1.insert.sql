--SQL
-- INSERT INTO movies_movie (title, year)
-- VALUES ('up', 2000);

--ORM
--Movie.objects.create(title='up', year=2001)

-- INSERT INTO movies_actor (name, age)
-- VALUES('Leonardo DiCaprio', 47)

-- SELECT COUNT(*)
-- FROM movies_actor

-- SELECT *
-- FROM movies_movie
-- WHERE title='Inception';

-- INSERT INTO movies_movie (title, year)
-- VALUES ('Inception', 2010);

-- INSERT INTO movies_movie_actors(movie_id, actor_id)
-- VALUES (
--     (SELECT id FROM movies_movie WHERE title = 'Inception'),
--     (SELECT id FROM movies_actor WHERE name = 'Leonardo Dicaprio')
-- );