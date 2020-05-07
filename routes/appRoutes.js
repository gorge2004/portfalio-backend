'use strict';

module.exports = function(app){
const todoList = require('./../controller/appController');

app.route('/section/:sect/:lang')
.get(todoList.getSection);
app.route('/jobs/:lang')
.get(todoList.getJobs);

app.route('/skills/:lang')
.get(todoList.getSkills);
}