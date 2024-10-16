from django.urls import path
from . import views

app_name='movie'
urlpatterns = [
    path('', views.movie_list, name='home'),
    path('create/', views.create_movie, name='create'),
    path('<slug:slug>/', views.movie_detail, name='detail')
]
