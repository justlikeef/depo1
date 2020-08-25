from django.db import models

class DeviceAttributes(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25, unique=True)
    value = models.TextField
    device = models.ForeignKey("Device", on_delete=models.CASCADE)
    deviceAttributeType = models.ForeignKey("DeviceAttributeTypes", on_delete=models.PROTECT)
