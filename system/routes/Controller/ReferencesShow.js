console.log("controller of References Show");

module.exports = function (){
    /*
    // controller of ShowActivity
    // 
    // using :
        ar controller = require('./Controller/ShowActivity.js');
        c = new controller();
        c.controller(connection,function(QuestionDoc,ActionDoc){});

    // coding: gavin
    */


    this.controller = function (keywords,CallbackFunc){
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="SELECT * FROM `references_for_search` WHERE `title` LIKE '%"+keywords+"%'" 
        connection.query(querytext,function(returnValue){    
            console.log(returnValue);
            CallbackFunc(returnValue);
        });

    
    } 


}


