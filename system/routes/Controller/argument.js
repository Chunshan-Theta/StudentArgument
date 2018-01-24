/*
* @Author            : Theta
* @Author contact    : https://studentcodebank.wordpress.com/
* @Date              : 2018-01-23 13:31:54
* @Last Modified by  : Theta
* @Last Modified time: 2018-01-24 11:22:48
* @purpose           : Defined controller of Argument.
* @copyright         : @Theta, all rights reserved.
*/
console.log("Enter the controller of Argument.");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose 1.Get Topic of the activity and Chatroom's id of testers then return its.
     * @param   {[int]user_id}
     * @param   {[int]activity_id}
     * @param   {[function]}
     * @return  {[type]}
     */
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