#!/usr/bin/env python

# Comment me out for the example to work
import isbnlib
from flask import Flask
app = Flask(__name__)

@app.route('/')
def hello_world():
    return '<img src="/static/tux.png">'

if __name__ == '__main__':
    app.run(debug=True)
