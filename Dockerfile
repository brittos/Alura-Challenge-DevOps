# pull the official base image
FROM python:3.8.3-alpine

# set work directory
WORKDIR /usr/src/app

# set environment variables
ENV DJANGO_SUPERUSER_EMAIL=admin@aluraflix.com
ENV DJANGO_SUPERUSER_USERNAME=admin
ENV DJANGO_SUPERUSER_PASSWORD=admin4lurafl1x
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip 

COPY requirements.txt /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt

COPY . /usr/src/app

EXPOSE 8000

RUN python manage.py makemigrations && python manage.py migrate && python manage.py createsuperuser --noinput

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
