from django.contrib import admin
from .models import User
from django.contrib.auth.admin import UserAdmin
# Register your models here.

admin.site.register(User,UserAdmin)

# UserAdmin.fieldsets += ("Custom fields set",{'fields' : ('username','country','field','profession','university',)}),