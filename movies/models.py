from django.db import models

# Create your models here.

class Actor(models.Model):
    name = models.CharField(max_length=500)
    age = models.IntegerField()


class Movie(models.Model):
    title = models.CharField(max_length=500)
    year = models.IntegerField()
    actors = models.ManyToManyField(Actor, related_name='movies')


class Category(models.Model):
    name = models.CharField(max_length=500)
    movies = models.ManyToManyField(Movie, related_name='categories')


class User(models.Model):
    name = models.CharField(max_length=500)
    country = models.CharField(max_length=500)
    email = models.CharField(max_length=500)
    age = models.IntegerField()


#댓글 < 하나의 영화에 여러가지 평가, 댓글이 달리기 때문
class Score(models.Model):
    content = models.CharField(max_length=500)
    value = models.IntegerField()
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    user = models.ForeignKey(User, on_delete=models.CASCADE)
