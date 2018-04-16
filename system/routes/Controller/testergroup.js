/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-22 23:36:37
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-04-14 10:21:51
 * @purpose           : Defined controller of testergroup.
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of testergroup.");

module.exports = function() {

    this.controller = function(stu_id, scores, CallbackFunc) {

        var sql = require('../Model/MysqlSet.js');        
        
        console.log(stu_id,scores);

        connection = new sql('argument');
        querytext ="UPDATE `tester_list` SET `group_score` = '"+scores+"' WHERE `tester_list`.`tester_id` = '"+stu_id+"' ORDER BY `tester_list`.`tester_id` DESC;";
        
        
        connection.query(querytext,function(returnValue){    
            console.log(returnValue);
            CallbackFunc(returnValue);
        });





    }


}