/*
* @Author            : Theta
* @Author contact    : https://studentcodebank.wordpress.com/
* @Date              : 2018-01-24 11:36:17
* @Last Modified by  : Theta
* @Last Modified time: 2018-01-27 11:04:53
* @purpose           : Defined Controller of tester_list.
*
*
*
* @copyright         : @Theta, all rights reserved.
*/
console.log("Enter the controller of tester_list");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose Create new tester.
     * @param   {[JsonString]JsonData}
     * @param   {[function]}
     * @return  {[responds text]}
     */
    this.controller = function(JsonData, CallbackFunc) {
        //INSERT INTO `tester_list` (`tester_id`, `user_id`, `avtivity_id`, `chatroom_id`, `group`) VALUES (NULL, '7', '1', '3', '-1');
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = 'INSERT INTO `tester_list` (`tester_id`, `user_id`, `avtivity_id`, `chatroom_id`, `group`) VALUES ';

        for (var key in JsonData) {
            var activity = JsonData[key][0];
            var user_id = JsonData[key][1];
            querytext += "(NULL, '" + user_id + "', '" + activity + "', '-1', '-1'),";

        }
        querytext = querytext.substring(0, querytext.length - 1);
        //console.log(querytext);

        connection.query(querytext, function(returnValue) {
            //console.log(returnValue);
            //connection.close();
            CallbackFunc(returnValue);
        });


    }


}