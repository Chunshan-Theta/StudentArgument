/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-24 14:36:14
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-24 14:39:36
 * @purpose           : Defined the controller of ShowActivity.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of ShowActivity");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose SELECT data from `user_list` then return.
     * @param   {[type]}
     * @return  {[type]}
     */
    this.controller = function(CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "SELECT * FROM `user_list`"
        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            //connection.close();
            CallbackFunc(returnValue);
        });


    }


}