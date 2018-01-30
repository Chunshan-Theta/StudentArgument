/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 14:33:12
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-31 07:09:25
 * @purpose           : Defined controller of new assessment.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of new assessment ");

module.exports = function() {
    this.controller = function(activity_id,content, CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "INSERT INTO `assessment_list` (`assessment_id`, `content`, `activity_id`) VALUES (NULL, '"+content+"', '"+activity_id+"');";
        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            CallbackFunc(returnValue);
        });


    }


}