FROM python:3.7

RUN pip install pipenv
WORKDIR /app
COPY . .
RUN pipenv install
RUN pip install -r ./requirements.txt

EXPOSE 5000
ENTRYPOINT ["python", "./app.py"]