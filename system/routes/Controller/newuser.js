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


    this.controller = function (username,userschool,userStudentID,CallbackFunc){
        console.log(username,userschool,userStudentID);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="INSERT INTO `user_list` (`user_id`, `name`, `school`, `StudentID`) VALUES (NULL, '"+username+"', '"+userschool+"', '"+userStudentID+"');" 
        connection.query(querytext,function(returnValue){    
            //console.log(returnValue);
	    //connection.close();
            CallbackFunc(returnValue);
        });

    
    } 


}


