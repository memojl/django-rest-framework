ECHO OFF
start Chrome.exe http://127.0.0.1:8000
CALL python manage.py runserver
