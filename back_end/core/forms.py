from django import forms
from .models import Registration

class RegistrationForm(forms.ModelForm):
    class Meta:
        model = Registration
        fields = [
                  'name',
                  'surname',
                  'email',
                  'business',
                  'professional',
                  'business_address',
                  'ceo_name',
                  'password'

                  ]
        # Add widgets if you need to customize form fields
