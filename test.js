var page = require('webpage').create();
page.open('http://localhost:5000');
setTimeout(phantom.exit, 3000)
