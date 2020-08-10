"use strict";
var sql = require("./../db.js");
const sqlMethod = require("./../model/appModel")
exports.getSection = sqlMethod.getSection ;

exports.getJobs = sqlMethod.getJobs ;

exports.getSkills = sqlMethod.getSKills ;
exports.allContent = sqlMethod.allContent ;

