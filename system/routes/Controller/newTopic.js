/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 17:32:23
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-23 17:34:41
 * @purpose           : Defined controller of new Topic.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of new Topic");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-23
     * @purpose create a new Topic
     * @param   {[String]content}
     * @param   {[int]host_id}
     * @param   {[Function]}
     * @return  {[responds text]}
     */
    this.controller = function(content, host_id, CallbackFunc) {

        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "INSERT INTO `topic_list` (`topic_id`, `user_id`, `content`) VALUES (NULL, '" + host_id + "', '" + content + "');"
        connection.query(querytext, function(returnValue) {
            CallbackFunc(returnValue);
        });


    }


}