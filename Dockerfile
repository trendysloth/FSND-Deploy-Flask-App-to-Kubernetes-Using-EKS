FROM python:stretch

COPY . /example
WORKDIR /example

RUN pip3 install -r requirements.txt

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]