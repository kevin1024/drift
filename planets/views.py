import random
from django.http import HttpResponse
from planets.models import Planet
import json

# Create your views here.

def print_tile(t):
    return json.write({'planet':{'color':{'r':t.color_r,'g':t.color_g,'b':t.color_b}}})

def create_rand_tile():
    create_planet = random.randrange(0,4)

def get_tile(request,x,y):
    x = int(x)
    y = int(y)
    planets = Planet.all()
    planets.filter('x = ',x)
    planets.filter('y = ',y)
    t = planets.get()
    if t: return HttpResponse(print_tile(t))
    t = Planet(x=x,y=y,color_r=random.randrange(0,255),color_g=random.randrange(0,255),color_b=random.randrange(0,255))
    t.put()
    return HttpResponse(print_tile(t))


def get_all_tiles(request):
    planets = Planet.all()
    out = ','.join([str(p) for p in planets]) 
    return HttpResponse(out)
        
