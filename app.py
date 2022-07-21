import os
from flask import Flask
from flask import render_template
from flask import request
from flask import send_from_directory
from scraper import *

app = Flask(__name__)

@app.route('/', methods=['GET', 'POST'])
def root():
    if request.method == 'GET':
        return render_template('home.html')

@app.route('/scrape')
def scrape():
    message = "This is a web scraping tool hosted from Flask and deployed using Minishift.  The purpose is to scrape the top 30 topic on Github, as well as the top 30 repositories on Github for each topic." 
    return message
    
@app.route('/download')
def download():
    return send_from_directory('', 'proxies.csv', as_attachment=True)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8080, debug=True, threaded=True)
