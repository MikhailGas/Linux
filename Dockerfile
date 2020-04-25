FROM python:3.6
ENV PYTHONUNBUFFERED 1
WORKDIR /
ADD requirements.txt /
RUN pip install -r requirements.txt
ADD . /

CMD ["/manage.py","runserver", "0.0.0.0:8000"]




