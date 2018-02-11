/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-24 14:36:14
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-30 13:38:04
 * @purpose           : Defined the controller of ShowActivity.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of user admin");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose SELECT data from `user_list` then return.
     * @param   {[type]}
     * @return  {[type]}
     */
    this.controller = function(mail,pws,CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        //querytext = "SELECT `user_id`,`name`,`school` FROM `user_list` WHERE `parent_user` = '"+host_id+"';"
        querytext = "SELECT `user_id` FROM `user_list` WHERE `mail` = '"+mail+"' AND `pws` ='"+pws+"'; ";
        connection.query(querytext, function(returnValue) {
            
            CallbackFunc(returnValue);
        });


    }


}