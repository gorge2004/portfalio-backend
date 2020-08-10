'use strict';

const mysql = require('mysql');

const connection = mysql.createConnection(
    {
        host: 'localhost',
        user: 'root',
        password: 'root',
        database: 'portfolio',
        multipleStatements: true
    }
);

connection.connect( function(error){
    if (error) {
        throw error;
        
    }
});
module.exports = connection;