/*
* @Author: gavin
* @Date:   2018-01-23 13:23:09
* @Last Modified by:   gavin
* @Last Modified time: 2018-01-23 13:31:54
*/
console.log("controller of Argument");

module.exports = function() {
    this.controller = function(user_id, activity_id, CallbackFunc) {

        console.log("user_id: ", user_id, "activity_id:", activity_id);
        var sql = require('../Model/MysqlSet.js');
        var re_QuestionDocList, re_ActionDocList;

        connection = new sql('argument');
        connection.query("SELECT `topic_id` FROM `activity_list` WHERE `avtivity_id` = '" + activity_id + "'", function(returnValue) {

            topic_id = returnValue['return'][0]["topic_id"];
            console.log(topic_id);
            connection = new sql('argument');
            connection.query("SELECT `content` FROM `topic_list` WHERE `topic_id` = '" + topic_id + "'", function(returnValue) {
                topic_content = returnValue['return'][0]["content"];
                console.log(topic_content);
                connection = new sql('argument');
                connection.query("SELECT * FROM `tester_list` WHERE `user_id` = '" + user_id + "' AND `avtivity_id` = '" + activity_id + "'", function(returnValue) {
                    //console.log(returnValue);
                    console.log("topic_id", topic_id);
                    console.log("topic_content", topic_content);
                    try {
                        chatroom_id = returnValue['return'][0]["chatroom_id"];
                        tester_id = returnValue['return'][0]["tester_id"];
                        console.log(returnValue);
                        console.log("room id is :", chatroom_id);
                        console.log("tester_id", tester_id);

                    } catch (e) {
                        chatroom_id = null;
                        tester_id = null;
                    }
                    CallbackFunc(chatroom_id, tester_id, topic_content);
                });

            });
        });

    }


}