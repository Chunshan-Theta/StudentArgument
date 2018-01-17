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


    this.controller = function (username,userschool,parent_user_id,CallbackFunc){
        console.log(username,userschool,activity_id);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="INSERT INTO `user_list` (`user_id`, `name`, `school`, `parent_user`) VALUES (NULL, '"+username+"', '"+userschool+"', '"+parent_user_id+"');" 
        connection.query(querytext,function(returnValue){    
            //console.log(returnValue);
	    //connection.close();
            CallbackFunc(returnValue);
        });

    
    } 


}


