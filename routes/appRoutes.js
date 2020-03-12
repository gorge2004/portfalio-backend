'use strict';

module.exports = function(app){
const todoList = require('./../controller/appController');

app.route('/hero/:lang')
.get(todoList.getHero);
app.route('/jobs/:lang')
.get(todoList.getJob);


}