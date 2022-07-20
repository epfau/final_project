# Dockerfile, Image, Container
FROM python:3.6

ADD main.py .

RUN pip install requests, BeautifulSoup, pandas, os

CMD ["python", "./main.py"]
