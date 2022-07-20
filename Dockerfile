# Dockerfile, Image, Container
FROM python:3

ADD main.py .

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install requests beautifulsoup4 pandas os python-dotenv

CMD ["python", "./main.py"]
