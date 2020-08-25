from django.db import models

class DeviceType(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25, unique=True)
    description = models.TextField
    device = models.ManyToManyField("Device")