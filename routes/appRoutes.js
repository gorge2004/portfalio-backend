'use strict';

module.exports = function(app){
const todoList = require('./../controllers/todoListController');

app.route('/hero/:lang')
.get(todoList.getHero);
app.route('/');

}