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

        connection.query("SELECT * FROM `tester_list` WHERE `user_id` = '"+user_id+"' AND `avtivity_id` = '"+activity_id+"'",function(returnValue) 
	{      
            
            try{
                re_1 = returnValue[0]["chatroom_id"];
                re_2 = returnValue[0]["tester_id"];
                console.log("room id is :",re_1);
            }
            catch(e){
                re_1 = null;
                re_2 = null;
            }
            CallbackFunc(re_1,re_2);
        });

        /*
        connection.query("SELECT * FROM `action_list`",function(returnValue) {
            //re_2 = returnValue;
            connection.close();
            
        });
        */

    
    } 


}


