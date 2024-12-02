FROM python:3.7

RUN mkdir /app && chmod 777 /app
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "/app/src/BoolODE.py"]