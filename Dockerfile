FROM python:3.7

ADD . /app
WORKDIR /app
RUN pip install -r requirements.txt

ENTRYPOINT ["python", "/app/src/BoolODE.py"]