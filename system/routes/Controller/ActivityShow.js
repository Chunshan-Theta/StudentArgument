/*
* @Author            : Theta
* @Author contact    : https://studentcodebank.wordpress.com/
* @Date              : 2018-01-23 14:10:09
* @Last Modified by  : Theta
* @Last Modified time: 2018-01-30 15:42:23
* @purpose           : Defined controller of ActivityShow
* @copyright         : @Theta, all rights reserved.
*/
console.log("Enter the controller of Activity Show");




module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-23
     * @purpose Request activity_list's Data(SELECT), then output it. 
     * @param   {[function]}
     * @return  {[JsonString]} 
     * @return example 
     * {text: 'success',
        status: '200',
        return: 
            [RowDataPacket {
                    avtivity_id: 1,
                    topic_id: 5,
                    user_id: 1,
                    unicode: '1-1516633107',
                    timeofactivity: Sat Jan 13 2018 00: 00: 00 GMT + 0800(CST)
                },
                RowDataPacket {
                    avtivity_id: 2,
                    topic_id: 5,
                    user_id: 1,
                    unicode: '1-1516633503',
                    timeofactivity: Sun Jan 07 2018 00: 00: 00 GMT + 0800(CST)
                }
            ] 
        }

    */
    this.controller = function(host_id,CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext = "SELECT * FROM `activity_list` WHERE `user_id` = '"+host_id+"';"
        connection.query(querytext, function(returnValue) {
            //console.log(returnValue['return'][0]['timeofactivity'].toLocaleDateString('zh-TW'));
            for(var row in returnValue['return']){
                //set timeshamp for taiwan.
                if(returnValue['return'][row]['timeofactivity']){
                    returnValue['return'][row]['timeofactivity']=returnValue['return'][row]['timeofactivity'].toLocaleDateString('zh-TW');
                }
            }
            CallbackFunc(returnValue);
        });


    }


}