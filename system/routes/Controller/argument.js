console.log("controller of Argument");

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


    this.controller = function (user_id,activity_id,CallbackFunc){
        console.log("user_id: ",user_id,"activity_id:",activity_id);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        var re_QuestionDocList,re_ActionDocList;

        connection.query("SELECT `chatroom_id` FROM `tester_list` WHERE `user_id` = "+user_id+" AND `avtivity_id` = "+activity_id,function(returnValue) 
	{      
            re_1 = returnValue;
            console.log("room id is :",re_1[0]["chatroom_id"]);
            re_1 = re_1[0]["chatroom_id"]
        });

        
        connection.query("SELECT * FROM `action_list`",function(returnValue) {
            re_2 = returnValue;
            connection.close();
            CallbackFunc(re_1,re_2);
        });

    
    } 


}


