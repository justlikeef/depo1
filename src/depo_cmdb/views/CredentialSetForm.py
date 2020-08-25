from django.forms import ModelForm
from depo_cmdb.models.CredentialSet import CredentialSet
from django_unmaskpasswordinput.forms.widgets.UnmaskPasswordInput import UnmaskPasswordInput

class CredentialSetForm(ModelForm):
    class Meta:
        model = CredentialSet
        fields = '__all__'
        widgets = {
            'userPass': UnmaskPasswordInput(),
            'privUserPass': UnmaskPasswordInput()
        }
    