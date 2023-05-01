FROM python:3.9
ENV MICRO_SERVICE=/user/src/app

RUN mkdir -p $MICRO_SERVICE
RUN mkdir -p $MICRO_SERVICE/static

WORKDIR $MICRO_SERVICE

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# install dependencies
RUN pip install --upgrade pip

COPY . $MICRO_SERVICE
RUN pip install -r requirements.txt

RUN pip install --no-cache-dir -r requirements.txt

# Expose ports
EXPOSE 8000
