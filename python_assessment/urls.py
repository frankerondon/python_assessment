from django.contrib import admin
from django.urls import path, include
from django.views.generic import RedirectView

urlpatterns = [
    path('', RedirectView.as_view(url='/videos/', permanent=True)),
    path('videos/', include(('videos.urls', 'videos'),namespace='videos')),
    path('admin/', admin.site.urls),
    path('users/',include(('profiles.urls', 'profiles'),namespace='profiles')),

]
