/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-24 14:36:14
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-29 22:21:17
 * @purpose           : Defined the controller of Show user public data.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of Show user's public data.js");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose SELECT data from `user_list_public_data` then return.
     * @param   {[STRING]mail}
     * @return  {[type]}
     */
    this.controller = function(mail,CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "SELECT user_list_public_data.* FROM user_list,`user_list_public_data` WHERE user_list_public_data.`user_id` = user_list.`user_id` AND user_list.`mail` = '"+mail+"';";
        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            //connection.close();
            for(var row in returnValue['return']){
                //set timeshamp for taiwan.
                if(returnValue['return'][row]['birthday']){
                    returnValue['return'][row]['birthday']=returnValue['return'][row]['birthday'].toLocaleDateString('zh-TW');
                }
            }
            CallbackFunc(returnValue);
        });


    }


}