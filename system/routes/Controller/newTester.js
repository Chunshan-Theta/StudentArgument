console.log("controller of tester_list");

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


    this.controller = function (JsonData,host_id,CallbackFunc){
	    //INSERT INTO `tester_list` (`tester_id`, `user_id`, `avtivity_id`, `chatroom_id`, `group`) VALUES (NULL, '7', '1', '3', '-1');
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = 'INSERT INTO `tester_list` (`tester_id`, `user_id`, `avtivity_id`, `chatroom_id`, `group`) VALUES ';
        
        for (var key in JsonData) {
            var activity = JsonData[key][0];
            var user_id = JsonData[key][1];
            querytext += "(NULL, '"+user_id+"', '"+activity+"', '-1', '-1'),"; 

        }
        querytext=querytext.substring(0,querytext.length-1);
        //console.log(querytext);
        
        connection.query(querytext,function(returnValue){    
            //console.log(returnValue);
	        //connection.close();
            CallbackFunc(returnValue);
        });

    
    } 


}


