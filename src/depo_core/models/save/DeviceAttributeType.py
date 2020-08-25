from django.db import models

class ConfigItemAttribute(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25, unique=True)
    description = models.TextField
    parent = models.ForeignKey('self', null=True, related_name='ConfigItemAttribute', on_delete=models.CASCADE)