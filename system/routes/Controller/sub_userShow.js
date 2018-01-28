/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-24 14:36:14
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-28 16:27:43
 * @purpose           : Defined the controller of ShowActivity.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of Show User");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose SELECT data from `user_list` then return.
     * @param   {[type]}
     * @return  {[type]}
     */
    this.controller = function(host_id,CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        //querytext = "SELECT `user_id`,`name`,`school` FROM `user_list` WHERE `parent_user` = '"+host_id+"';"
        querytext = "SELECT `user_list_public_data`.* From `user_list_public_data`,`user_contact_list` WHERE `user_list_public_data`.`user_id` = `user_contact_list`.`sub_user_id` AND `user_contact_list`.`main_user_id` = '"+host_id+"' AND `user_contact_list`.`contact` = 1; ";
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