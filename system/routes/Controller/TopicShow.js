console.log("controller of newuser");

module.exports = function (){
    /*
    // controller of argument
    // 
    // using :
        ar controller = require('./Controller/argument.js');
        c = new controller();
        c.controller(connection,function(QuestionDoc,ActionDoc){});

    // coding: gavin
    */


    this.controller = function (CallbackFunc){
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="SELECT * FROM `topic_list`" 
        connection.query(querytext,function(returnValue){    
            console.log(returnValue);
	    //connection.close();
            CallbackFunc(returnValue);
        });

    
    } 


}


