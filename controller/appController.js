'use strict';
var sql = require('./../db.js');

exports.getHero = function (req, res) {
    sql.query('');
};
exports.getJob = function (req, response) {
    sql.query('SELECT  jobs.id, title, start_at , finish_at, location, description, technical_specification, lang'+
    ' FROM  jobs' +
    ' INNER JOIN languages '+
    'ON  jobs.lang_id = languages.Id'+
    ' WHERE languages.lang = ? ORDER BY start_at ', req.params.lang,function (err, res) {
        if (err) {
            console.error(err);
            response.send( err);
        }
        else{
            console.log(res);
            response.json( res);
        }
        
    });
    
};