var sql = require("./../db.js");
const { json } = require("body-parser");
const querys = {};
querys.getSection = function(req, response) {
    sql.query(
        "SELECt portfolio.titles_section .id, title, lang " +
          "FROM portfolio.titles_section " +
          "INNER JOIN portfolio.languages " +
          "ON  portfolio.titles_section.lang_id = portfolio.languages.Id " +
          "WHERE portfolio.titles_section.section = ? AND portfolio.languages.lang = ? ",
        [req.params.sect, req.params.lang],
        function (err, res) {
          responseFunction(err, res, response)
        }
      );
}
querys.getJobs = function(req, response) {
  sql.query(
    "SELECT  jobs.id, title, start_at , finish_at, location, description, technical_specification, lang" +
      " FROM  jobs" +
      " INNER JOIN languages " +
      "ON  jobs.lang_id = languages.Id" +
      " WHERE languages.lang = ? ORDER BY start_at ",
    req.params.lang,
    function(err, res) {
      console.log('res', res);

      //responseFunction(err, res, response)
    }
  );
}
querys.getSKills = function(req, response) {
  sql.query(
    "SELECt portfolio.skills.Id , portfolio.skills.description ,  portfolio.skills.json_skill ,portfolio.languages.lang " +
      "FROM portfolio.skills  " +
      "INNER JOIN portfolio.languages " +
      "ON  portfolio.skills.lang_id = portfolio.languages.Id " +
      "WHERE portfolio.languages.lang = ? ",
    req.params.lang,
    function(err, res) {
      //responseFunction(err, res, response);
      console.log('res', res);
        return {err, res};
    }
  );
};
querys.allContent = function(req, response){
  //console.log(querys.getSKills({params:{lang: 'es'}}, response) );
  sql.query(
    "SELECt portfolio.skills.Id , portfolio.skills.description ,  portfolio.skills.json_skill ,portfolio.languages.lang " +
      "FROM portfolio.skills  " +
      "INNER JOIN portfolio.languages " +
      "ON  portfolio.skills.lang_id = portfolio.languages.Id " +
      "WHERE portfolio.languages.lang = ? ;"+
      "SELECT  jobs.id, title, start_at , finish_at, location, description, technical_specification, lang" +
      " FROM  jobs" +
      " INNER JOIN languages " +
      "ON  jobs.lang_id = languages.Id" +
      " WHERE languages.lang = ? ORDER BY start_at ;"
      ,
    [req.params.lang, req.params.lang],
    function(err, res) {
      responseFunction(err, res, response);
      console.log('res', res);
    });
  }


function responseFunction(error, res, response) {
 
    response.json({status: (error ? 500 : 200) ,error,res});
  
}
module.exports = querys ;