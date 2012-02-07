from django.db import models

class User(models.Model):
    name = models.CharField(max_length=50)
    creation_date = models.DateTimeField()

class Keypress(models.Model):
    user = models.ForeignKey(User)
    key = models.IntegerField()
    keydown = models.IntegerField()
    keyup = models.IntegerField()
