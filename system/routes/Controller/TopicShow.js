/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 16:08:17
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-23 17:34:21
 * @purpose           : Defined controller of new user.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of TopicShow.");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-23
     * @purpose Request Topic_list's Data(SELECT), then output it.
     * @param   {[int]}
     * @param   {[function]}
     * @return  {[Json string]}
     */
    this.controller = function(host_id, CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "SELECT * FROM `topic_list` WHERE `topic_list`.`user_id` = '" + host_id + "'";
        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            CallbackFunc(returnValue);
        });
    }
}