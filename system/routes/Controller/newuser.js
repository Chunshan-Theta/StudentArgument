/*
* @Author            : Theta
* @Author contact    : https://studentcodebank.wordpress.com/
* @Date              : 2018-01-24 14:19:25
* @Last Modified by  : Theta
* @Last Modified time: 2018-01-25 18:23:07
* @purpose           : Defined the controller of new a user.
* @copyright         : @Theta, all rights reserved.
*/
console.log("Ente the controller of newuser.");

module.exports = function (){
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
    this.controller = function (username,userschool,parent_id,CallbackFunc){
        console.log(username,userschool,parent_id);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="INSERT INTO `user_list` (`user_id`, `name`, `school`, `parent_user`) VALUES (NULL, '"+username+"', '"+userschool+"', '"+parent_user_id+"');" 
        connection.query(querytext,function(returnValue){    
            console.log(returnValue);
            CallbackFunc(returnValue);
        });

    
    } 


}


