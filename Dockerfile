# Dockerfile, Image, Container
FROM python:3

ADD main.py .

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt
RUN pip install python-dotenv
RUN requests, BeautifulSoup, pandas, os

CMD ["python", "./main.py"]
