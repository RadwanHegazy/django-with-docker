FROM python:3.10

RUN apt-get update && apt-get install
RUN apt-get install python3



COPY requirements.txt requirements.txt

RUN pip install --upgrade pip

RUN pip install --no-cache-dir -r requirements.txt

COPY . code

EXPOSE 8000

ADD . .

WORKDIR /code

ENTRYPOINT ["python", "Project/manage.py"]

CMD ["runserver", "0.0.0.0:8000"]