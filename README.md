# API YamDB

## Проект Django REST API внутри docker контейнеров

![yamdb_final](https://github.com/odolisk/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)

### Описание

Проект YamDB собирает пользовательские отзывы на кино, музыкальные произведения, книги.
Публикуйте отзывы, комментируйте чужие. Выставляйте оценки произведениям.

### Требования

- docker (_установка_ <https://docs.docker.com/engine/install/#server> )
- docker-compose (_установка_ <https://docs.docker.com/compose/install/> )

### Переменные

Переменные хранятся в файле .env в корне проекта.
Необходимо определить следующие переменные (в скобках значения по умолчанию):

- DB_ENGINE (django.db.backends.postgresql)
- DB_NAME (postgres)
- POSTGRES_USER (postgres)
- POSTGRES_PASSWORD
- DB_HOST (db)
- DB_PORT (5432)
- SECRET_KEY
- DEBUG (False)
- ALLOWED_HOST (['*'])

### Запуск проекта*

```bash
sudo docker-compose pull
sudo docker-compose up -d --build
```

### Создание суперпользователя и заполнение данными

```bash
sudo docker exec -it odolisk_web_1 bash
```

и далее в терминале

```bash
python manage.py createsuperuser

python manage.py loaddata fixtures.json
```

\* Для GitBash под Windows команды вводятся без sudo

### Инфо

- Документация доступна по адресу **/redoc/**
- Админка **/admin/**
- API **/api/v1/**
  - Произведения **titles/**
  - Жанры **genre/**
  - Категории **category/**
  - Комментарии **titles/{title_id}/reviews/{review_id}/comments/**
  - Отзывы **titles/{title_id}/reviews/**

### Страница проекта

Готовый деплой можно увидеть по ссылке <http://odolisk.ru/api/v1/>

### Автор проекта

Дмитров Артем, студент Яндекс.Практикум (backend), 16 когорта
