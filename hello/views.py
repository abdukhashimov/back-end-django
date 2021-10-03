from hello.models import HelloModel
from hello.serializers import HelloModelSerializer
from rest_framework.viewsets import ModelViewSet

class HelloModelViewSet(ModelViewSet):
    queryset = HelloModel.objects.all()
    serializer_class = HelloModelSerializer

