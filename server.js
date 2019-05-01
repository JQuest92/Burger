var PORT = process.env.PORT || 8080;
var express = require("express");


var app = express();

app.use(express.json);
app.use(express.urlencoded({ extend: true}));
app.use(express.static("public"));

var exphbs = require('express-handlebars');

var routes = require("./controllers/burgers_controller.js");

app.use(routes);

app.listen(PORT, function(){
    console.log("App listening on PORT: "  + PORT);
});

