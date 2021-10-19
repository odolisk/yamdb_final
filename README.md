# API YamDB

## Проект Django REST API внутри docker контейнеров

![yamdb_final](https://github.com/odolisk/yamdb_final/actions/workflows/yamdb_workflow.yml/badge.svg)

### Описание

Проект YamDB собирает пользовательские отзывы на кино, музыкльные произведения, 
книги

### Требования

- docker
- docker-compose

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

### Запуск проекта*

```bash
sudo docker-compose pull
sudo docker-compose up -d --build
```

### Создание суперпользователя и заполнение данными

```bash
sudo docker exec -it infra_sp2_web_1 bash
```

и далее в терминале

```bash
python manage.py createsuperuser

python manage.py loaddata fixtures.json
```

\* Для GitBash под Windows команды вводятся без sudo

### Инфо

Документация доступна по адресу <http://localhost:8000/redoc/>

### Автор проекта

Дмитров Артем, студент Яндекс.Практикум (backend), 16 когорта
