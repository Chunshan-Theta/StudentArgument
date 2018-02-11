console.log("Enter the controller of add teacher");

module.exports = function() {

    this.controller = function(stu_id, tea_mail, CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "SELECT `user_id` FROM `user_list` WHERE `mail` = '" + tea_mail + "'";


        connection.query(querytext, function(returnValue) {

            if (returnValue['return'].length) {
                console.log(returnValue['return'][0]['user_id']);
                //connection.close();
                connection2 = new sql('argument');
                parent_id = returnValue['return'][0]['user_id'];
                new_user_id = stu_id;
                querytext = "INSERT INTO `user_contact_list` (`id`,`main_user_id`,`sub_user_id`,`contact`) VALUES (NULL,'" + parent_id + "','" + new_user_id + "','1');";
                connection2.query(querytext, function(returnValue2) {
                    CallbackFunc(returnValue2);
                });
            } else {
                CallbackFunc({ text: 'not found the user with the mail',  status: '404',  return: [] });
            }



        });


    }


}