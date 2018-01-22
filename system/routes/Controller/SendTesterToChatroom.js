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


    this.controller = function (a_id,JsonData,CallbackFunc){
        //INSERT INTO `tester_list` (`tester_id`, `user_id`, `avtivity_id`, `chatroom_id`, `group`) VALUES (NULL, '7', '1', '3', '-1');
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        RoomArray = [];
        for(key in JsonData){
            var roomid = JsonData[key][0];
            if(RoomArray.indexOf(roomid) == -1){
                RoomArray.push(roomid);
            }
            //console.log(RoomArray);
        }
        var CreateNewCount = RoomArray[RoomArray.length-1];        
        //console.log(CreateNewCount);
        //INSERT INTO `chatroom_list` (`chatroom_id`, `avtivity_id`) VALUES (NULL, '1');
        querytext = 'INSERT INTO `chatroom_list` (`chatroom_id`, `avtivity_id`) VALUES ';
        for(var i =0;i<=CreateNewCount;i++){
            querytext+="(NULL, '"+a_id+"'),";
        }
        querytext=querytext.substring(0,querytext.length-1)+';';
        roomid_base = -1;
        connection.query(querytext,function(returnValue){    
            roomid_base = returnValue['return']['insertId'];
            //console.log(roomid_base,JsonData);
            for(key in JsonData){
                connection = new sql('argument');
                NewRoomId = JsonData[key][0]+roomid_base;
                //console.log(NewRoomId);
                querytext = "UPDATE `tester_list` SET `chatroom_id` = '"+NewRoomId+"' WHERE `tester_list`.`tester_id` = "+JsonData[key][1]+";"
                //console.log('Doing: '+querytext);
                connection.query(querytext,function(returnValue2){
                    console.log(returnValue2);
                });
            }
        });

        
        var respond = JSON.parse('{ "text": "success",  "status": "200"}');
        CallbackFunc(respond);


    
    } 


}


