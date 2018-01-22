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


    this.controller = function (CallbackFunc,a_id){
        var sql = require('../Model/MysqlSet.js');        
        connection = new sql('argument');
        console.log(a_id);

        if (typeof a_id !=='undefined'){
            querytext ="SELECT DISTINCT `user_id`,`tester_id`  FROM `tester_list` WHERE `avtivity_id`='"+a_id+"' ORDER BY `tester_list`.`tester_id` DESC" ;

        } else{
            querytext ="SELECT * FROM `tester_list` DESC" ;

        }
        
        connection.query(querytext,function(returnValue){    
            console.log(returnValue);
	        //connection.close();
            CallbackFunc(returnValue);
        });

    
    } 


}


