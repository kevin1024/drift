from appengine_django.models import BaseModel
from google.appengine.ext import db

# Create your models here.

class Planet(db.Model):
    x = db.IntegerProperty()
    y = db.IntegerProperty()
    color_r = db.IntegerProperty()
    color_g = db.IntegerProperty()
    color_b = db.IntegerProperty()

    def __str__(self):
       return "planet at %s,%s" % (self.x,self.y)

