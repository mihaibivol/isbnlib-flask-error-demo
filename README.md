# isbnlib-flask-error-demo
![Build Status](https://api.travis-ci.org/mihaibivol/isbnlib-flask-error-demo.svg) - Means that the error is still there :)

Regression test for isbnlib default socket timeout Increase side effects in Flask app


## HOWTO
* Create A Virtual Env
* `pip install -r requirements.txt`
* `./app.py`
* Go to `localhost:5000`
  * You should see this error `IOError: [Errno 11] Resource temporarily unavailable` on Linux, or `Errno 35` on Mac
* Remove the `import isbnlib` from `app.py` and you should see 9 tux images.

or

* Install `phantomjs`
* `./run-test.sh`
