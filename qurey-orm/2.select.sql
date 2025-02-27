SELECT *
FROM movies_movie JOIN movies_movie_actors
ON movies_movie.id = movies_movie_actors.movie_id
JOIN movies_actor
ON movies_actor.id = movies_movie_actors.actor_id
WHERE movies_actor.name = 'Robert Thomas';

-- Movie.objects.all()
-- SELECT * FROM movies_movie;

-- User.objects.all()
-- SELECT * FROM movies_user;

-- Movie.objects.all().order_by('year')
-- SELECT * FROM movies_movie
-- ORDER By year DESC;
-- Movie.objects.all().order_by('-year')

-- Movie.objects.filter(year=2000)
-- SELECT * FROM movies_movie
-- WHERE year=2000;

--User.objects.filter(age=30)
-- SELECT * FROM movies_user
-- WHERE age=30;

--lt: < / lte: <= / gt: > / gte: >=
-- Movie.objects.filter(year__lt=2000)
-- SELECT * FROM movies_movie
-- WHERE year < 2000;

-- Movie.objects.filter(year__gte=2000, year__lte=2010)
-- SELECT * FROM movies_movie
-- WHERE year >= 2000 AND year <= 2010;

-- Movie.objects.filter(Q(year__lte=2000, year__gte=2010) | Q(year__gte=2010))
-- SELECT * FROM movies_movie
-- WHERE year <= 2000 OR year >= 2010;

-- User.objects.exclude(age__gt=30)
-- SELECT * FROM movies_user
-- WHERE NOT age > 30;

-- Movie.objects.aggregate(Avg('year'))
-- SELECT AVG(year) FROM movies_movie;

-- Movie.objects.aggregate(Max('year'))
-- SELECT MAX(year) FROM movies_movie;

-- -- Score.objects.filter(movie_id=1).aggregate(Avg('value'))
-- SELECT AVG(value) FROM movies_score
-- WHERE movie_id=1;

-- Movie.objects.filter(title__contains='the')
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%the%';

-- Movie.objects.filter(title__startswith='the')
-- SELECT * FROM movies_movie
-- WHERE title Like 'the%';

-- 상세 표현식
-- SELECT * FROM movies_movie
-- WHERE title LIKE '%g__d%';

-- Movie.objects.filter(year__in=[2000, 2001])
-- SELECT * FROM movies_movie
-- WHERE year IN(2000, 2001);

-- Movie.objects.filter(year__range=[1990, 2000])
-- SELECT * FROM movies_movie
-- WHERE year BETWEEN 1990 AND 2000;