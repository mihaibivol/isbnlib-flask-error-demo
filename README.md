# isbnlib-flask-error-demo
Regression test for isbnlib default socket timeout Increase side effects in Flask app

## HOWTO
* Create A Virtual Env
* `pip install -r requirements.txt`
* `./app.py`
* Go to `localhost:5000`
  * You should see this error `IOError: [Errno 11] Resource temporarily unavailable` on Linux, or `Errno 35` on Mac
