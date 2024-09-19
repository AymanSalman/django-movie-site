from django.db import models
from django.contrib.auth.models import User

class Movie(models.Model):
    title = models.CharField(max_length=200)
    slug = models.SlugField()
    description = models.TextField()
    director = models.CharField(max_length=100)
    actor_1 = models.CharField(max_length=100)
    actor_2 = models.CharField(max_length=100)
    actor_3 = models.CharField(max_length=100)
    actor_4 = models.CharField(max_length=100)
    year_of_release = models.IntegerField()
    thump = models.ImageField(default='default.png', blank=True)

    def __str__(self):
        return f'Movie Name: "{self.title}"'


class Comment(models.Model):
    movie = models.ForeignKey(Movie, on_delete=models.CASCADE)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    content = models.TextField()
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f'Comment by "{self.author}" on movie name: "{self.movie}"'
