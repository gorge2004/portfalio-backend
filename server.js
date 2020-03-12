var express = require("express");
app = express();
port = process.env.PORT || 3002;
app.listen(port);
bodyParser = require('body-parser');

console.log("todo list RESTful API server started on: " + port);
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

var routes = require('./routes/appRoutes.js'); //importing route
routes(app);