/*
* @Author            : Theta
* @Author contact    : https://studentcodebank.wordpress.com/
* @Date              : 2018-01-25 19:29:51
* @Last Modified by  : Theta
* @Last Modified time: 2018-04-26 21:26:19
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
        connection = new sql('argument');
        querytext = "SELECT `user_id`,`tester_id`,`group_score`,`chatroom_id`,count(DISTINCT `user_id`) FROM `tester_list` WHERE `avtivity_id`='"+a_id+"' GROUP BY `user_id` ORDER BY `tester_list`.`tester_id` DESC;";

        console.log(querytext);
        
        connection.query(querytext,function(returnValue){    
            console.log(returnValue);
            CallbackFunc(returnValue);
        });

    
    } 


}

/*
///   error:
///   {text: "ER_WRONG_FIELD_WITH_GROUP", status: 1055}
///   #1055 - Expression of SELECT list is not in GROUP BY clause and contains nonaggregated column this is incompatible with sql_mode=only_full_group_by


sudo mysql -u root -p
mysql > SET GLOBAL sql_mode=(SELECT REPLACE(@@sql_mode,'ONLY_FULL_GROUP_BY',''));


///
///
///
///

*/