from django.db import models

class AccessMethodParam(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    operatingSystem = models.ManyToManyField("DeviceAttribute")
    type = models.ForeignKey("ParamTypes", on_delete=models.CASCADE)
    description = models.TextField
    
