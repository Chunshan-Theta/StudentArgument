console.log("controller of action_list");

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


    this.controller = function (time,TopicID,host_id,CallbackFunc){
	const dateTime = Date.now();
	var unicodeforactivity = Math.floor(dateTime / 1000);
	unicodeforactivity = host_id+'-'+unicodeforactivity;
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="INSERT INTO `activity_list` (`avtivity_id`, `topic_id`, `user_id`, `assessment_id`, `unicode`, `timeofactivity`) VALUES (NULL, '"+TopicID+"', '"+host_id+"', '1', '"+unicodeforactivity+"', '"+time+"');" 
        connection.query(querytext,function(returnValue){    
            //console.log(returnValue);
            CallbackFunc(returnValue['return']);
        });

    
    } 


}


