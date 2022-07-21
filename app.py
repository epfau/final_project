import os
from flask import Flask
app = Flask(__name__)

@app.route("/")
def main():
    color = os.environ.get('COLOR', "green") 
    message = "This is a web scraping tool.  Ther purpose is to scrape the top 30 topic on Github, as well as the top 30 repositories on Github for each topic." 
    return message

@app.route('/scrape')
def scrape():
    return "scraping..."

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080)
