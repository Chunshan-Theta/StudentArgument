/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 13:47:42
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-01-23 17:35:35
 * @purpose           :
 * @copyright         : @Theta, all rights reserved.
 */




var express = require('express');
var router = express.Router();





/**
 * @method  director
 * @author  Theta
 * @date    2018-01-23
 * @purpose direct to home page
 * @return  .argument/login.html
 *
 */
router.get('/', function(req, res) {

    res.render('argument/login', {});

});

/* GET login page. */
router.get('/login', function(req, res) {

    if (req.session) { // if setted session
        req.session = null;
    }
    res.render('argument/login', {});
});

/* GET singup page. */
router.get('/signup', function(req, res) {
    res.render('argument/signup', {});
});

/* GET sitting_page_login page. */
router.get('/sitting_login', function(req, res) {
    if (req.session) { // if not setting session
        res.redirect('/sittingPage');
    }
    res.render('argument/sitting_login', {});
});

/* GET new activity page. */
router.get('/newactivity', function(req, res) {

    if (!req.session) { // if not setting session
        res.redirect('/sitting_login');
    } else { //req.session.host_id
        res.render('argument/newactivity', { "host_id": req.session.host_id });
    }
});

/* GET new activity page. */
router.get('/newTester', function(req, res) {

    if (!req.session) { // if not setting session
        res.redirect('/sitting_login');
    } else { //req.session.host_id
        res.render('argument/newTester', { "host_id": req.session.host_id });
    }
});

/* API of new Tester. */
router.post('/newTester', function(req, res) {
    if (!req.session) { // if not setting session
        console.log('no login');
        res.redirect('/sitting_login');
    }

    var JsonData = req.param('JsonData', null);
    var host_id = req.session.host_id;

    JsonData = JSON.parse(JsonData);
    // initialize controller
    var controller_of_new_Tester = require('./Controller/newTester.js');
    c = new controller_of_new_Tester();

    // in controller
    c.controller(JsonData, host_id, function(respond) {
        console.log(respond);
        //res.end("done.");
        res.render('argument/errorpage', { error_id: respond['status'], error_con: respond['text'] });

    });
});


/**
 * @method  internet Api - post 
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of Api for Setting testers to chatroom.
 * @param   {[http.post]JsonData}
 * @param   {[http.post]Activity_id}
 */
router.post('/SendTesterToChatroom', function(req, res) {
    if (!req.session) { // if not setting session
        console.log('no login');
        res.redirect('/sitting_login');
    }

    var JsonData = req.param('JsonData', null);
    var a_id = req.param('Activity_id', null);


    JsonData = JSON.parse(JsonData);
    console.log(JsonData);
    // initialize controller
    var controller_of_SendTesterToChatroom = require('./Controller/SendTesterToChatroom.js');

    c = new controller_of_SendTesterToChatroom();

    // in controller
    c.controller(a_id, JsonData, function(respond) {
        console.log(respond);
        res.end(respond['status'] + ',' + respond['text']);
        //res.render('argument/errorpage',{error_id:respond['status'],error_con:respond['text']});

    });
});
router.get('/SendTesterToChatroom', function(req, res) {

    if (!req.session) { // if not setting session
        res.redirect('/sitting_login');
    } else { //req.session.host_id
        res.render('argument/SendTesterToChatroom', { "host_id": req.session.host_id });
    }
});
/* GET new activity page. */
router.get('/newTopic', function(req, res) {

    if (!req.session) { // if not setting session
        res.redirect('/sitting_login');
    }
    //res.writeHead(200, {"Content-Type": "text/html; charset=utf-8"});
    res.render('argument/newTopic', { "host_id": req.session.host_id });

});
/**
 * @method  Restful api
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of Api of create a new Topic.
 * @param   {[type]content}
 * @param   {[type]host_id}
 * @return  {[responds text]}
 */
router.post('/Topic', function(req, res) {

    if (req.param('host_id_API', null)) { // for api testing
        var content = req.param('content', null);
        var host_id = req.param('host_id_API', null);

    } else if (!req.session) { // if not setting session
        res.redirect('/sitting_login');
    } else {
        var content = req.param('content', null);
        var host_id = req.session.host_id;;
    }


    // initialize controller
    var controller_of_action_list = require('./Controller/newTopic.js');
    c = new controller_of_action_list();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-23
     * @purpose Defined function for operating the output of the controller.
     * @param   {[String]content}
     * @param   {[int]host_id}
     * @param   {[function]}
     * @return  {[type]}
     */
    c.controller(content, host_id, function(respond) {
        console.log(respond);
        if (req.param('host_id_API', null)) {
            res.end("" + JSON.stringify(respond));

        } else {
            res.render('argument/errorpage', { error_id: respond['status'], error_con: respond['text'] });

        }

    });
});


/* GET sittingPage. */
router.get('/sittingPage', function(req, res) {
    if (!req.session) { // if not setting session
        res.redirect('/sitting_login');
    } else { //req.session.host_id
        res.render('argument/sittingPage', {});
    }
});


/* API of login to sitting page */
router.post('/EnterHost', function(req, res) {
    var host_id = req.param('host_id', null);
    req.session = { 'host_id': host_id };
    res.redirect('/sittingPage');

});

/**
 * @method  Restful api
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of api for search Topic data 
 * @param   {[Http.get] host_id}
 * @return  {[Json string] Result of Search}
 */
router.get('/Topic', function(req, res) {
    var host_id = req.query.host_id;


    // initialize controller
    var controller_of_action_list = require('./Controller/TopicShow.js');
    c = new controller_of_action_list();

    // in controller
    c.controller(host_id, function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond));

    });

});
/* API of Search activity */
router.get('/userShow', function(req, res) {
    //var host_id = req.param('host_id', null);
    //req.session = { 'host_id': host_id };   


    // initialize controller
    var controller_of_user_list = require('./Controller/userShow.js');
    c = new controller_of_user_list();

    // in controller
    c.controller(function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond));

    });

});

/**
 * @method  internet Api - get
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of Api for SELECT activity list.
 */
router.get('/ActivityShow', function(req, res) {

    // initialize controller
    var controller_of_action_list = require('./Controller/ActivityShow.js');
    c = new controller_of_action_list();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-23
     * @purpose Defined function for operating the output of the controller. 
     * @param   {[function]}
     * @return  {[Json String] Result of search}
     */
    c.controller(function(respond) {
        //console.log(respond);
        //res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond), 'utf-8');

    });

});
/* API of Search tester */
router.post('/testerShow', function(req, res) {

    if (!req.session) { // if not setting session
        res.redirect('/sitting_login');
    }

    var activity_id = req.param('a_id', null);


    // initialize controller
    var controller_of_action_list = require('./Controller/testerShow.js');
    c = new controller_of_action_list();

    // in controller
    c.controller(function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond));

    }, activity_id);

});

/* API of Search tester */
router.get('/testerShow', function(req, res) {
    //var host_id = req.param('host_id', null);
    //req.session = { 'host_id': host_id };   


    // initialize controller
    var controller_of_action_list = require('./Controller/testerShow.js');
    c = new controller_of_action_list();

    // in controller
    c.controller(function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond));

    });

});
/**
 * @method  internet Api - get
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of Api for SELECT activity list.
 * @param   {[http.get:String] keywords}
 * @return  {[Json String] Result of search}
 */
router.get('/ReferencesShow', function(req, res) {

    var keywords = req.query.keywords;

    //if keywords is not exist,then search all data of reference_list.
    if (typeof keywords == "undefined") { keywords = ""; }


    // initialize controller
    var controller_of_References_list = require('./Controller/ReferencesShow.js');
    c = new controller_of_References_list();

    // in controller
    c.controller(keywords, function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" });
        //res.setHeader('Access-Control_Allow-Origin',"*");
        res.end("" + JSON.stringify(respond));

    });

});
/* API of insert activity */
router.post('/newactivity', function(req, res) {
    if (!req.session) { // if not setting session
        res.redirect('/sitting_login');
        return;
    }

    var time = req.param('time', null);
    var TopicID = req.param('TopicID', null);
    var host_id = req.session.host_id;

    // initialize controller
    var controller_of_action_list = require('./Controller/newactivity.js');
    c = new controller_of_action_list();

    // in controller
    c.controller(time, TopicID, host_id, function(respond) {
        console.log(respond);
        res.render('argument/errorpage', { error_id: "#200", error_con: "成功新增" });

    });



});

/* API of insert user's action */
router.post('/argument_post_action_list', function(req, res) {

    //INSERT INTO `action_list` (`action_id`, `actionDoc_id`, `tester_id`, `exe_time`) VALUES (NULL, '1', '1', CURRENT_TIMESTAMP);

    var actionDoc_id = req.param('ad_id', null);
    var tester_id = req.param('t_id', null);
    var content = req.param('content', null);

    // initialize controller
    var controller_of_action_list = require('./Controller/action_list.js');
    c = new controller_of_action_list();

    // in controller
    c.controller(actionDoc_id, tester_id, content, function(respond) {
        //console.log(respond);
        res.render('argument/errorpage', { error_id: '#200', error_con: respond["message"] });

    });



});


/* API of add a new user */
router.post('/newuser', function(req, res) {

    //INSERT INTO `user_list` (`user_id`, `name`, `school`, `StudentID`) VALUES (NULL, '王王王', '哭哭國小', '9453');

    var username = req.param('u_name', null);
    var userschool = req.param('u_school', null);
    var userStudentID = req.param('u_account', null) ? req.param('u_account', null) : '-1';

    // initialize controller
    var controller_of_newuser = require('./Controller/newuser.js');
    c = new controller_of_newuser();

    // in controller
    c.controller(username, userschool, userStudentID, function(respond) {
        //console.log(respond);
        if (respond['text'] == "ER_DUP_ENTRY") {
            res.render('argument/errorpage', { error_id: respond['status'], error_con: "帳號已存在" });
        } else {
            res.render('argument/errorpage', { error_id: respond['status'], error_con: respond['text'] + '.   Your ID: ' + respond['return']['insertId'] });
        }
    });



});






/* post argument page. */
router.post('/argument2', function(req, res) {



    var user_id = req.param('u_id', null);
    var activity_id = req.param('a_id', null);

    if (typeof user_id == "undefined") { // case of not catch u_id
        res.render('argument/errorpage', { error_id: '#404', error_con: "not input user id to server" });
    } else if (typeof activity_id == "undefined") { // case of not catch a_id
        res.render('argument/errorpage', { error_id: '#404', error_con: "not input activity id to server" });
    } else {
        // initialize controller
        var controller_of_argument = require('./Controller/argument.js');
        c = new controller_of_argument();

        // in controller
        c.controller(user_id, activity_id, function(chatroom_id, tester_id, topic_content) {

            //console.log(typeof chatroom_id);
            //console.log(ActionDoc);

            console.log("chatroom_id", chatroom_id)
            if (chatroom_id != null) { // case of not found tester
                var user = 'NormalUser_' + user_id //req.param('user', null);
                console.log(user, ',Enter to chatroom: ' + chatroom_id);
                res.render('argument/ChatroomPage2', { title: '聊天室代號：', room: chatroom_id, UserName: user, t_id: tester_id, t_con: topic_content });
            } else if (chatroom_id == '-1') { // case of not already room for user
                res.render('argument/errorpage', { error_id: '#404', error_con: "Not yet arranged chat room, please talk this about this to your activity hoster" });
            } else {
                res.render('argument/errorpage', { error_id: '#404', error_con: "not found user or activity" });
            }
        });
    }


});

/*  ****preparation******    argument page. */
router.get('/a', function(req, res) {



    var user_id = 1;
    var activity_id = 1;

    if (typeof user_id == "undefined") { // case of not catch u_id
        res.render('argument/errorpage', { error_id: '#404', error_con: "not input user id to server" });
    } else if (typeof activity_id == "undefined") { // case of not catch a_id
        res.render('argument/errorpage', { error_id: '#404', error_con: "not input activity id to server" });
    } else {
        // initialize controller
        var controller_of_argument = require('./Controller/argument.js');
        c = new controller_of_argument();

        // in controller
        c.controller(user_id, activity_id, function(chatroom_id, tester_id, topic_content) {

            //console.log(typeof chatroom_id);
            //console.log(ActionDoc);

            console.log("chatroom_id", chatroom_id)
            if (chatroom_id != null) { // case of not found tester
                var user = 'NormalUser_' + user_id //req.param('user', null);
                console.log(user, ',Enter to chatroom: ' + chatroom_id);
                res.render('argument/ChatroomPage2', { title: '聊天室代號：', room: chatroom_id, UserName: user, t_id: tester_id, t_con: topic_content });
            } else if (chatroom_id == '-1') { // case of not already room for user
                res.render('argument/errorpage', { error_id: '#404', error_con: "Not yet arranged chat room, please talk this about this to your activity hoster" });
            } else {
                res.render('argument/errorpage', { error_id: '#404', error_con: "not found user or activity" });
            }
        });
    }


});



module.exports = router;