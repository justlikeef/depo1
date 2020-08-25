from django.db import models
from fernet_fields import EncryptedCharField

class CredentialSet(models.Model):
    id = models.AutoField(primary_key=True)
    name = models.CharField(max_length=25)
    description = models.TextField(default='', blank=True)
    user = models.CharField(verbose_name="unpriviledged username", max_length=25)
    userPass = EncryptedCharField(verbose_name="unpriviledged password", max_length=254)
    privUser = models.CharField(verbose_name="priviledged username", max_length=25, blank=True)
    privUserPass = EncryptedCharField(verbose_name="priviledged password", max_length=254, blank=True)
    
    def __str__(self):
        return self.name