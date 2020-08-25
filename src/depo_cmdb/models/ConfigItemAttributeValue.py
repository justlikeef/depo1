from django.db import models

class ConfigItemAttributeValue(models.Model):
    id = models.AutoField(primary_key=True)
    value = models.TextField(default='')
    configItem = models.ForeignKey("ConfigItem", on_delete=models.CASCADE)
    configItemAttributeType = models.ForeignKey("ConfigItemAttribute", on_delete=models.PROTECT)

    def __str__(self):
        return self.configItem.name + ' - ' + self.configItemAttributeType.name + ' - ' + self.value