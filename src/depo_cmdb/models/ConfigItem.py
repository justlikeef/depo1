from django.db import models
from .ConfigItemRole import ConfigItemRole
import re

class ConfigItem(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    description = models.TextField(default='', blank=True)
    owner = models.CharField(max_length=25)
    manager = models.CharField(max_length=25)
    roles = models.ManyToManyField("ConfigItemRole", through="ConfigItemConfigItemRole")

    def __str__(self):
        return self.name
        
    def getTreeNodeType(self):
        if (primaryRole := self.roles.first()):
            rolename = re.sub(r"\s+", "", primaryRole.name)
            return f'{__class__.__name__}-{rolename}'
        else:
            return __class__.__name__

class ConfigItemConfigItemRole(models.Model):
    ConfigItem = models.ForeignKey("ConfigItem", on_delete=models.CASCADE)
    ConfigItemRole = models.ForeignKey("ConfigItemRole", on_delete=models.CASCADE)
    rolePriority = models.IntegerField( default=0,
                                        verbose_name="Role Priority",
                                        help_text="Importance of roll with this config item.  The first, highest priority roll is considered the 'primary' roll."
                                      )
    
    class Meta:
        ordering = ["-rolePriority"]      

# TODO Add functionality to save function to check if it is the first role to be saved and set the priority to 100 if it is.