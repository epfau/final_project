# Dockerfile, Image, Container
FROM python:3

ADD main.py .

COPY requirements.txt ./

RUN pip install requests beautifulsoup4 pandas os python-dotenv requirements.txt

CMD ["python", "./main.py"]
