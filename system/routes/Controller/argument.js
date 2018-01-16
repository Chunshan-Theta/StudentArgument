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
        function setglobalvar_topic_id(value){
            topic_id = value;
            console.log(topic_id);
        }
        function setglobalvar_con(value){
            topic_content = value;
            console.log(topic_content);
        }
        console.log("user_id: ",user_id,"activity_id:",activity_id);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        var re_QuestionDocList,re_ActionDocList;
	    //SELECT `topic_id` FROM `activity_list` WHERE `avtivity_id` = '1'
	    //SELECT `content` FROM `topic_list` WHERE `topic_id` = '2'
        
        connection.query("SELECT `topic_id` FROM `activity_list` WHERE `avtivity_id` = '1'",function(returnValue) 
	    {      
            setglobalvar_topic_id(returnValue['return'][0]["topic_id"]);
        });
        connection.query("SELECT `content` FROM `topic_list` WHERE `topic_id` = '2'",function(returnValue) 
	    {      
            setglobalvar_con(returnValue['return'][0]["content"]);
        });
        connection.query("SELECT * FROM `tester_list` WHERE `user_id` = '"+user_id+"' AND `avtivity_id` = '"+activity_id+"'",function(returnValue) 
	    {      
            //console.log(returnValue);
            console.log("topic_id",topic_id);
            console.log("topic_content",topic_content);
            try{
                chatroom_id = returnValue['return'][0]["chatroom_id"];
                tester_id = returnValue['return'][0]["tester_id"];
		        console.log(returnValue);
                console.log("room id is :",chatroom_id);
                console.log("tester_id",tester_id);
                
                }
            catch(e){
                    chatroom_id = null;
                    tester_id = null;
                }
	        //connection.close();
                CallbackFunc(chatroom_id,tester_id,topic_content);
        });
        
        /*
        connection.query("SELECT * FROM `action_list`",function(returnValue) {
            //re_2 = returnValue;
            connection.close();
            
        });
        */

    
    } 


}


