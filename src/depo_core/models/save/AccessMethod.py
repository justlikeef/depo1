from django.db import models

class AccessMethod(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25, unique=True)
    operatingSystem = models.ManyToManyField("DeviceAttributeType")
    description = models.TextField
    
