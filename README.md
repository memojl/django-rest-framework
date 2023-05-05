# django_rest_framework
Django Rest Framework

# Paso a paso

1. Crear entorno virtual con el comando:
pip install virtualenv 
python -m virtualenv venv
python -m venv venv --> para python3

2. Activar el entorno virtual:
.\venv\Scripts\activate o F1 -> Python Interprete -> Python (venv/venv)

2.1 Comando: pip list

2.2 Actualizar: python.exe -m pip install --upgrade pip

3. Instalar Django con el comando: 
pip install django

4. Instalar Djando Rest Framework:
pip install djangorestframework

5. Crear Proyecto: 
django-admin startproject drframework .

6. Crear App/Api: 
python manage.py startapp api

6.1 Agregar 'api' y 'rest_framework' en drframework/settings.py

INSTALLED_APPS = [
    'rest_framework',
    'api'
]

7. Crear Model en api/models.py

8. Crear Admin el Model en api/admin.py

9. Migraciones y crear db:
python manage.py migrate
python manage.py makemigrations
python manage.py migrate

10. Crear SuperUsuario 
python manage.py createsuperuser
u:a....
p:a....79x

11. Servidor de desarrollo:
python manage.py runserver

Ir a /admin

12. Serealizar - crear archivo en api/serializer.py 

13. Crear Views (Vistas) del serializer

14. Para crear las rutas hay que crear archivo en api/urls.py

15. Incluir path 'api/v1/' en drframework/urls.py

16. Crear documentacion:

Utilizar el comando: pip install coreapi

Y luego agregar 'coreapi' en drframework/settings.py

INSTALLED_APPS = [
    'rest_framework',
    'coreapi',
    'api'
]

16.1 Agregar ruta 'docs/' en drframework/urls.py *

16.2 Agregar autoschema en drframework/settings.py

REST_FRAMEWORK = {
    'DEFAULT_SCHEMA_CLASS': 'rest_framework.schemas.coreapi.AutoSchema',
}

17. Comunicación entre servidores CORS HEADERS para eso hay que intalar con el comando: 
pip install django-cors-headers 

17.1 Agregar: INSTALLED_APPS = ['corsheaders'] y MIDDLEWARE = ['corsheaders.middleware.CorsMiddleware']

17.2 Lista blanca de dominios: 
#Cors 
CORS_ALLOWED_ORIGINS = ["http://127.0.0.1:5173"]
