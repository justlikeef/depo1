from django.db import models

class Manufacturer(models.Model):
    name = models.CharField(max_length=25, 
      help_text="Used as the first part of the device driver class and name.",
      unique=True)
    description = models.TextField