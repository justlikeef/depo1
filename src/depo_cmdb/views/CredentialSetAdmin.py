from django.contrib import admin
from depo_cmdb.views.CredentialSetForm import CredentialSetForm

class CredentialSetAdmin(admin.ModelAdmin):
    form = CredentialSetForm
    
