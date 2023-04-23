# create a dockerfile to install requiremet.txt

FROM python:3.8

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt --use-deprecated=legacy-resolver

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]