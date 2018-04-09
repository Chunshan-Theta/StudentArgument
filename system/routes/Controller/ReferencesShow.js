/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 14:33:12
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-04-09 16:25:13
 * @purpose           : Defined controller of ReferencesShow
 * @copyright         : @Theta, all rights reserved.
 */
console.log("Enter the controller of References Show");

module.exports = function() {
    /**
     * @method  controller
     * @author  Theta
     * @date    2018-01-23
     * @purpose Request References_list's Data(SELECT), then output it.
     * @param   {[String]}
     * @param   {[function]}
     * @return  {[JsonString]}
     * @return example
     * {
     *      "text":"success",
     *      "status":"200",
     *      "return":[
     *                  {
     *                      "references_id":1,
     *                      "title":"核子動力是利用核反應來獲取能量",
     *                      "link":"https://zh.wikipedia.org/wiki/%E6%A0%B8%E5%8B%95%E5%8A%9B",
     *                      "memo":"核子動力"
     *                   },
     *                   {
     *                      "references_id":2,
     *                      "title":"車諾比ㄏ子事故",
     *                      "link":"https://zh.wikipedia.org/wiki/%E5%88%87%E5%B0%94%E8%AF%BA%E8%B4%9D%E5%88%A9%E6%A0%B8%E4%BA%8B%E6%95%85",
     *                      "memo":"車諾比 核子事故"
     *                    }
     *                ]
     * }
     */
    this.controller = function(keywords, CallbackFunc) {
        var sql = require('../Model/MysqlSet.js');
        connection = new sql('argument');        
        try{
            var keywords_list = keywords.split(" ")
            querytext = "SELECT * FROM `references_for_search` WHERE `title` LIKE '%" + keywords_list[0] + "%'"
            for (var word in keywords_list) {

                if (word != 0) {
                    querytext += ' OR `title` LIKE ';
                    querytext += "'%" + keywords_list[word] + "%'";
                }

            }
        }
        catch(err) {
            querytext = "SELECT * FROM `references_for_search` limit 10;"
        }
        connection.query(querytext, function(returnValue) {
            console.log(returnValue);
            CallbackFunc(returnValue);
        });


    }


}