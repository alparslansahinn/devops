FROM python:3.4-alpine
ADD . /code
WORKDIR /code
RUN pip install -r krav.txt
CMD ["python3", "app.py"]
