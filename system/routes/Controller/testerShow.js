/*
* @Author            : Theta
* @Author contact    : https://studentcodebank.wordpress.com/
* @Date              : 2018-01-25 19:29:51
* @Last Modified by  : Theta
* @Last Modified time: 2018-03-13 11:33:08
* @purpose           : Defined a controll of tester show.
* @copyright         : @Theta, all rights reserved.
*/
console.log("Enter the controller of testerShow");

module.exports = function (){
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-25
     * @purpose Select a activity then choose the DISTINCT testers from list.
     * @param   {[int]a_id}
     * @param   {[function]}
     * @return  {[Json Data]}
     */
    this.controller = function (a_id,CallbackFunc){
        var sql = require('../Model/MysqlSet.js');        
        
        console.log(a_id);

        connection = new sql('argument');
        //querytext ="SELECT DISTINCT `user_id`,`tester_id`,`group_score`  FROM `tester_list` WHERE `avtivity_id`='"+a_id+"' ORDER BY `tester_list`.`tester_id` DESC" ;
        querytext = "SELECT `user_id`,`tester_id`,`group_score`,`chatroom_id`,count(DISTINCT `user_id`) FROM `tester_list` WHERE `avtivity_id`='"+a_id+"' GROUP BY `user_id` ORDER BY `tester_list`.`tester_id` DESC;";
        
        
        connection.query(querytext,function(returnValue){    
            console.log(returnValue);
            CallbackFunc(returnValue);
        });

    
    } 


}


