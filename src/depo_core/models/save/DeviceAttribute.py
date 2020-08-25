from django.db import models

class DeviceAttribute(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25, unique=True)
    value = models.TextField
    device = models.ForeignKey("Device", on_delete=models.CASCADE)
    deviceAttributeType = models.ForeignKey("DeviceAttributeType", on_delete=models.PROTECT)
