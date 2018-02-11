/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 14:33:12
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-31 05:44:03
 * @purpose           : Defined controller of assessmentShow
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of assessment Show");

module.exports = function() {
    this.controller = function(activity_id, CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "SELECT * FROM `assessment_list` WHERE `activity_id` = '" + activity_id + "' ORDER BY `assessment_list`.`assessment_id` DESC LIMIT 5";
        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            CallbackFunc(returnValue);
        });


    }


}