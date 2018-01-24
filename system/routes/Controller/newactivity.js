/*
* @Author            : Theta
* @Author contact    : https://studentcodebank.wordpress.com/
* @Date              : 2018-01-24 12:38:20
* @Last Modified by  : Theta
* @Last Modified time: 2018-01-24 12:49:27
* @purpose           : Defined controller of new activity. 
* @copyright         : @Theta, all rights reserved.
*/
console.log("Enter the controller of new activity");

module.exports = function (){
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-24
     * @purpose create a new activity.
     * @param   {[type]time}
     * @param   {[type]TopicID}
     * @param   {[type]host_id}
     * @param   {[function]}
     * @return  {[type]}
     */
    this.controller = function (time,TopicID,host_id,CallbackFunc){
	const dateTime = Date.now();
	var unicodeforactivity = Math.floor(dateTime / 1000);
	unicodeforactivity = host_id+'-'+unicodeforactivity;
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');
        querytext ="INSERT INTO `activity_list` (`avtivity_id`, `topic_id`, `user_id`, `assessment_id`, `unicode`, `timeofactivity`) VALUES (NULL, '"+TopicID+"', '"+host_id+"', '1', '"+unicodeforactivity+"', '"+time+"');" 
        connection.query(querytext,function(returnValue){    
            //console.log(returnValue);
	    //connection.close();
            CallbackFunc(returnValue['return']);
        });

    
    } 


}


