from django import forms
from . import models


class CommentForm(forms.ModelForm):
    class Meta:
        model = models.Comment
        fields = ['content']
        labels = {'content': 'Add your comment:', }


class MovieForm(forms.ModelForm):
    class Meta:
        model = models.Movie
        fields = '__all__'
