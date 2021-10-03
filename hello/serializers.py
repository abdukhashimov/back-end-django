from django.db.models import fields
from hello.models import HelloModel
from rest_framework.serializers import ModelSerializer


class HelloModelSerializer(ModelSerializer):
    class Meta:
        model = HelloModel
        fields = '__all__'
