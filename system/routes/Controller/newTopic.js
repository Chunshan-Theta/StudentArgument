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


    this.controller = function (content,host_id,CallbackFunc){
	
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="INSERT INTO `topic_list` (`topic_id`, `user_id`, `content`) VALUES (NULL, '"+host_id+"', '"+content+"');" 
        connection.query(querytext,function(returnValue){    
            //console.log(returnValue);
            CallbackFunc(returnValue);
        });

    
    } 


}


