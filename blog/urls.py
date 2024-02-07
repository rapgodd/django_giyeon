from django.urls import path
from . import views

urlpatterns = [
    path('', views.index), #FBV를 할때에는 이렇게 적는다.
    path('<int:pk>/', views.single_post_page),
]