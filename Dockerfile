# Dockerfile, Image, Container
FROM python:3

ADD main.py .

COPY requirements.txt ./

RUN pip install --upgrade pip
RUN requirements.txt
RUN pip install requests beautifulsoup4 pandas python-dotenv

EXPOSE 8080
ENTRYPOINT [ "python" ]

CMD ["python", "app.py", "./main.py"]
