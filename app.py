#!/usr/local/bin/python
from flask import Flask, render_template, redirect, url_for, request

app = Flask(__name__)

@app.route('/')
def welcome():
	return render_template('welcome.html')

@app.route('/index')
def homepage():
	return render_template('index.html')

if __name__ == '__main__':
	app.run(host='0.0.0.0')
