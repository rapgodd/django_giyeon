from django.urls import path
from . import views

urlpatterns = [
    #path('', views.index), #FBV를 할때에는 이렇게 적는다.
    path('category/<str:slug>/', views.category_page),
    path('<int:pk>/', views.PostDetail.as_view()),
    path('', views.PostList.as_view()),
]