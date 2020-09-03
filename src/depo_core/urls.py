"""depo_core URL Configuration
"""

from django.urls import include, path
from . import views

urlpatterns = [
    path('', views.index)
]
