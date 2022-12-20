import django
import os
from django.core.management import call_command
from pathlib import Path
# import django.db.backends.sqlite3

BASE_DIR = Path(__file__).resolve().parent

if __name__ == '__main__':
    os.environ.setdefault("DJANGO_SETTINGS_MODULE", "backend.settings")
    path = BASE_DIR / 'db.sqlite3'
    os.environ.setdefault("DATABASE_URL", f"sqlite:///{path}")
    django.setup()
    call_command("runserver", use_reloader=False)