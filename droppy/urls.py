# from django.urls import path
# from .views import BlogListView,  BlogCreateView  # new

# urlpatterns = [
#     path('post/new/', BlogCreateView.as_view(), name='post_new'),  # new\
#     path('', BlogListView.as_view(), name='home'),

# ]


from django.urls import path

from . import views
from .views import PrintListView

urlpatterns = [
    path('', PrintListView.as_view(), name='home'),
    path('add/', views.person_create_view, name='post_new'),
    path('<int:pk>/', views.person_update_view, name='person_change'),
    path('ajax/load-states/', views.load_states,
         name='ajax_load_states'),  # AJAX
    path('ajax/load-districts/', views.load_districts,
         name='ajax_load_districts'),
    path('ajax/load-cities/', views.load_cities,
         name='ajax_load_cities'),
]
