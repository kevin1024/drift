from django.conf.urls.defaults import *
urlpatterns = patterns('',
     (r'^get_tile/(?P<x>-?[\d]+)/(?P<y>-?[\d]+)', 'planets.views.get_tile'),
     (r'^get_all_tiles/', 'planets.views.get_all_tiles'),
)
