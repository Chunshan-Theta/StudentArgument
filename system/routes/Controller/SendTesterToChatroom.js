/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-22 23:36:37
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-27 11:31:25
 * @purpose           : Defined controller of SendTesterToChatroom.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of SendTesterToChatroom.");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-23
     * @purpose Update the tester's chatroom.
     * @param   {[int]a_id}
     * @param   {[String]JsonData}
     * @param   {[function]CallbackFunc}
     * @return  {[responds string of api]}
     * '{ "text": "success",  "status": "200"}'
     */
    this.controller = function(a_id, JsonData, CallbackFunc) {
        //INSERT INTO `tester_list` (`tester_id`, `user_id`, `avtivity_id`, `chatroom_id`, `group`) VALUES (NULL, '7', '1', '3', '-1');
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        RoomArray = [];

        //get the count of new room.
        for (key in JsonData) {
            var roomid = JsonData[key][0];
            if (RoomArray.indexOf(roomid) == -1) {
                RoomArray.push(roomid);
            }
        }
        var CreateNewCount = RoomArray[RoomArray.length - 1];

        //create new rooms
        querytext = 'INSERT INTO `chatroom_list` (`chatroom_id`, `avtivity_id`) VALUES ';
        for (var i = 0; i <= CreateNewCount; i++) {
            querytext += "(NULL, '" + a_id + "'),";
        }
        querytext = querytext.substring(0, querytext.length - 1) + ';';


        roomid_base = -1;
        connection.query(querytext, function(returnValue) {
            //get the start id of new rooms.
            roomid_base = returnValue['return']['insertId'];
            for (key in JsonData) {
                //update the id of the room.
                NewRoomId = JsonData[key][0] + roomid_base;

                //Setting the tester to a chatroom.
                connection = new sql('argument');
                querytext = "UPDATE `tester_list` SET `chatroom_id` = '" + NewRoomId + "' WHERE `tester_list`.`tester_id` = " + JsonData[key][1] + ";"
                connection.query(querytext, function(returnValue2) {
                    console.log(returnValue2);
                });
            }
        });


        var respond = JSON.parse('{ "text": "success",  "status": "200"}');
        CallbackFunc(respond);



    }


}