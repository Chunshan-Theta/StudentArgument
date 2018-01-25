/*
* @Author            : Theta
* @Author contact    : https://studentcodebank.wordpress.com/
* @Date              : 2018-01-24 10:46:18
* @Last Modified by  : Theta
* @Last Modified time: 2018-01-26 00:22:28
* @purpose           : Defined controller of action_list.
* @copyright         : @Theta, all rights reserved.
*/
console.log("Enter the controller of action_list");

module.exports = function (){
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose Insert user action's data to SQL.
     * @param   {[int]actionDoc_id}
     * @param   {[int]tester_id}
     * @param   {[String]content}
     * @param   {[function]}
     * @return  {[type]}
     */
    this.controller = function (actionDoc_id,tester_id,content,last_time,CallbackFunc){
        console.log("actionDoc_id: ",actionDoc_id,"tester_id:",tester_id);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="INSERT INTO `action_list` (`action_id`, `actionDoc_id`, `tester_id`, `exe_time`, `content`, `sub_windows_last_exe`) VALUES (NULL, '"+actionDoc_id+"', '"+tester_id+"', CURRENT_TIMESTAMP,'"+content+"','"+last_time+"');" 
        connection.query(querytext,function(returnValue){    
            //console.log(returnValue);
	    //connection.close();
            CallbackFunc(returnValue['return']);
        });


    
    } 


}


