from django.db import models

class ConfigItem(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    description = models.TextField(default='', blank=True)
    owner = models.CharField(max_length=25)
    manager = models.CharField(max_length=25)
    
    def __str__(self):
        return self.name
