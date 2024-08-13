- startproject

- startapp & INSTALLED_APPS

- models.py 수정

- makemigrations, migrate

- 커맨드 커스텀
    -
    ```
    polls/
    __init__.py
    models.py
    management/
        __init__.py
        commands/
            __init__.py
            _private.py
            closepoll.py
    tests.py
    views.py
    ```
    - [문서 바로가기](https://docs.djangoproject.com/en/5.0/howto/custom-management-commands/)

- python manage.py generate

- pip install django-extensions
    - add INSTALLED_APPS
    - python manage.py shell_plus
