from django.shortcuts import render, redirect

from .forms import CommentForm, MovieForm
from .models import Movie


def movie_list(request):
    movies = Movie.objects.all()
    return render(request, 'movies/movie_list.html', {'movies': movies})


def movie_detail(request, slug):
    movie = Movie.objects.get(slug=slug)
    comments = movie.comment_set.all()
    if request.method == 'POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            comment = form.save(commit=False)
            comment.movie = movie
            comment.author = request.user
            comment.save()
            return redirect('movie:detail', slug=movie.slug)
    else:
        form = CommentForm()
    return render(request, 'movies/movie_detail.html',
                  {'movie': movie, 'comments': comments, 'form': form})


def create_movie(request):
    if request.method == 'POST':
        form = MovieForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return redirect('movie:home')
    else:
        form = MovieForm()
    return render(request, 'movies/create_movie.html', {'form': form})
