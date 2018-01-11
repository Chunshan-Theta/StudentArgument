console.log("controller of testerShow");

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


    this.controller = function (CallbackFunc){
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="SELECT * FROM `tester_list`" 
        connection.query(querytext,function(returnValue){    
            console.log(returnValue);
            CallbackFunc(returnValue);
        });

    
    } 


}


