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


    this.controller = function (actionDoc_id,tester_id,content,CallbackFunc){
        console.log("actionDoc_id: ",actionDoc_id,"tester_id:",tester_id);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="INSERT INTO `action_list` (`action_id`, `actionDoc_id`, `tester_id`, `exe_time`, `content`) VALUES (NULL, '"+actionDoc_id+"', '"+tester_id+"', CURRENT_TIMESTAMP,'"+content+"');" 
        connection.query(querytext,function(returnValue){    
            //console.log(returnValue);
            CallbackFunc(returnValue);
        });

    
    } 


}


