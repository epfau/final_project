# Dockerfile, Image, Container
FROM python:3

ADD main.py .

COPY requirements.txt ./

RUN pip install --upgrade pip
RUN pip install requests beautifulsoup4 pandas python-dotenv

CMD ["python", "./main.py"]
