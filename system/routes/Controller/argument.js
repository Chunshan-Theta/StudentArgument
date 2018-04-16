/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 13:31:54
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-04-14 10:52:48
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
    this.controller = function(u_mail, unicode, CallbackFunc) {

        //console.log("user_id: ", user_id, "activity_id:", activity_id);
        var sql = require('../Model/MysqlSet.js');
        var re_QuestionDocList, re_ActionDocList;


        connection = new sql('argument');
        var querytext = "SELECT `avtivity_id` FROM `activity_list` WHERE `unicode` = '" + unicode + "';";
        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            if (!returnValue['return'].length) {
                CallbackFunc(null, null, null);
            } else {
                activity_id = returnValue['return'][0]["avtivity_id"];
                connection2 = new sql('argument');
                var querytext = "SELECT topic_list.`content` FROM topic_list,`activity_list` WHERE activity_list.`avtivity_id` = '" + activity_id + "' AND topic_list.`topic_id`=`activity_list`.`topic_id`";
                connection2.query(querytext, function(returnValue2) {
                    console.log(returnValue2);
                    topic_content = returnValue2['return'][0]["content"];
                    
                    connection3 = new sql('argument');
                    querytext = "SELECT `tester_id`,`chatroom_id` FROM `tester_list`,`user_list` WHERE tester_list.`user_id` = user_list.`user_id` AND user_list.`mail`='" + u_mail + "' AND avtivity_id = '" + activity_id + "';";
                    connection3.query(querytext, function(returnValue3) {
                        //console.log(returnValue);                
                        console.log("topic_content", topic_content);
                        try {
                            chatroom_id = returnValue3['return'][0]["chatroom_id"];
                            tester_id = returnValue3['return'][0]["tester_id"];
                            group_score = returnValue3['return'][0]["group_score"];
                            console.log(returnValue3);
                            console.log("room id is :", chatroom_id);
                            console.log("tester_id", tester_id);

                        } catch (e) {
                            chatroom_id = null;
                            tester_id = null;
                        }
                        CallbackFunc(chatroom_id, tester_id,activity_id, topic_content);
                    });
                });
            }


        });



    }


}/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 13:31:54
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-31 08:37:14
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
    this.controller = function(u_mail, unicode, CallbackFunc) {

        //console.log("user_id: ", user_id, "activity_id:", activity_id);
        var sql = require('../Model/MysqlSet.js');
        var re_QuestionDocList, re_ActionDocList;


        connection = new sql('argument');
        var querytext = "SELECT `avtivity_id` FROM `activity_list` WHERE `unicode` = '" + unicode + "';";
        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            if (!returnValue['return'].length) {
                CallbackFunc(null, null, null);
            } else {
                activity_id = returnValue['return'][0]["avtivity_id"];
                connection2 = new sql('argument');
                var querytext = "SELECT topic_list.`content` FROM topic_list,`activity_list` WHERE activity_list.`avtivity_id` = '" + activity_id + "' AND topic_list.`topic_id`=`activity_list`.`topic_id`";
                connection2.query(querytext, function(returnValue2) {
                    console.log(returnValue2);
                    topic_content = returnValue2['return'][0]["content"];
                    
                    connection3 = new sql('argument');
                    querytext = "SELECT `tester_id`,`chatroom_id` FROM `tester_list`,`user_list` WHERE tester_list.`user_id` = user_list.`user_id` AND user_list.`mail`='" + u_mail + "' AND avtivity_id = '" + activity_id + "';";
                    connection3.query(querytext, function(returnValue3) {
                        //console.log(returnValue);                
                        console.log("topic_content", topic_content);
                        try {
                            chatroom_id = returnValue3['return'][0]["chatroom_id"];
                            tester_id = returnValue3['return'][0]["tester_id"];
                            group_score = returnValue3['return'][0]["group_score"];
                            console.log(returnValue3);
                            console.log("room id is :", chatroom_id);
                            console.log("tester_id", tester_id);

                        } catch (e) {
                            chatroom_id = null;
                            tester_id = null;
                        }
                        CallbackFunc(chatroom_id, tester_id,activity_id, topic_content);
                    });
                });
            }


        });



    }


}