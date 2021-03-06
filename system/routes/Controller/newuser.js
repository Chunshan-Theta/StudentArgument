/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-24 14:19:25
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-30 00:25:47
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
    this.controller = function(mail, pws, school, name, parent_mail, birthday, CallbackFunc) {
        console.log(mail, pws);
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "INSERT INTO `user_list` (`user_id`, `mail`, `pws`) VALUES (NULL, '" + mail + "', '" + pws + "');";
        //console.log(querytext);

        connection.query(querytext, function(returnValue) {


            if (returnValue['text'] == "ER_DUP_ENTRY") {
                CallbackFunc(returnValue);
            } else {

                var new_user_id = returnValue['return']['insertId'];


                connection3 = new sql('argument');
                querytext = "SELECT `user_id` FROM `user_list` WHERE `mail` = '" + parent_mail + "';";
                console.log(querytext);

                connection3.query(querytext, function(returnValue3) {
                    console.log(returnValue3['return']);

                    if (returnValue3['return'].length) {

                        var parent_id = returnValue3['return'][0]['user_id'];
                        connection4 = new sql('argument');
                        querytext = "INSERT INTO `user_contact_list` (`id`,`main_user_id`,`sub_user_id`,`contact`) VALUES (NULL,'" + parent_id + "','" + new_user_id + "','1');";
                        //console.log(querytext);
                        connection4.query(querytext, function(returnValue4) {
                            console.log(returnValue4);
                            connection2 = new sql('argument');
                            querytext = "INSERT INTO `user_list_public_data` (`user_id`,`school`,`name`,`birthday`) VALUES ('" + new_user_id + "','" + school + "','" + name + "','" + birthday + "')";
                            //console.log(querytext);

                            connection2.query(querytext, function(returnValue2) {
                                console.log(returnValue);

                                CallbackFunc(returnValue);
                            });

                        });

                    } else {
                        connection2 = new sql('argument');
                        querytext = "INSERT INTO `user_list_public_data` (`user_id`,`school`,`name`,`birthday`) VALUES ('" + new_user_id + "','" + school + "','" + name + "','" + birthday + "')";
                        //console.log(querytext);

                        connection2.query(querytext, function(returnValue2) {
                            console.log(returnValue);

                            CallbackFunc(returnValue);
                        });
                    }



                });




            }



        });


    }


}