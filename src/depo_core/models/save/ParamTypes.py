from django.db import models

class ParamTypes(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25, unique=True)
    accessMethod = models.ManyToManyField("AccessMethod")
    parent = models.ForeignKey('self', null=True, related_name='ParamTypes', on_delete=models.CASCADE)
    AccessMethodParam = models.ManyToManyField("AccessMethodParam")
