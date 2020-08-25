from django.db import models

class DeviceTagOptions(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25, unique=True)
    device = models.ManyToManyField("Device")
    description = models.TextField
    