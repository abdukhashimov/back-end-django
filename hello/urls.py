from hello.views import HelloModelViewSet
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register('hello', HelloModelViewSet, basename='hello')
urlpatterns = router.urls
