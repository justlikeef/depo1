from django.db import models
from treebeard.mp_tree import MP_Node

LEAF_TYPE_CHOICES = [
  ('static', 'Static'),
  ('dynamic', 'Dynamic')
]

class ConfigItemTree(MP_Node):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    description = models.TextField(default="", blank=True)
    leafType = models.CharField(max_length=25, choices=LEAF_TYPE_CHOICES, default='static')
    configItems = models.ManyToManyField("ConfigItem", blank=True)
   
    node_order_by = ['name']

    def __str__(self):
        return self.name
