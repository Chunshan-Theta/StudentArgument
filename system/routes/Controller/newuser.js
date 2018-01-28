/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-24 14:19:25
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-28 18:15:06
 * @purpose           : Defined the controller of new a user.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Ente the controller of newuser.");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose Insert a new user. 
     * @param   {[string]username}
     * @param   {[string]userschool}
     * @param   {[int]parent_id}
     * @param   {[function]}
     * @return  {[reaponds text]}
     */
    this.controller = function(mail, pws, school, name, CallbackFunc) {
        console.log(mail, pws);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "INSERT INTO `user_list` (`user_id`, `mail`, `pws`) VALUES (NULL, '" + mail + "', '" + pws + "');";
        //console.log(querytext);

        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            if (returnValue['text']=="ER_DUP_ENTRY") {
                CallbackFunc(returnValue);
            } else {
                var new_user_id = returnValue['return']['insertId'];
                connection = new sql('argument');
                querytext = "INSERT INTO `user_list_public_data` (`user_id`,`school`,`name`,`birthday`) VALUES ('" + new_user_id + "','" + school + "','" + name + "',NULL)";
                //console.log(querytext);

                connection.query(querytext, function(returnValue2) {
                    CallbackFunc(returnValue2);
                });;
            }
        });


    }


}