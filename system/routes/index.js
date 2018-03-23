/*
 * @Author            : Theta
 * @Author contact    : https://studentcodebank.wordpress.com/
 * @Date              : 2018-01-23 13:47:42
 * @Last Modified by  : Theta
 * @Last Modified time: 2018-03-23 10:13:51
 * @purpose           :
 * @copyright         : @Theta, all rights reserved.
 */




var express = require('express');
var router = express.Router();




//// view start
/**
 * @method  director
 * @author  Theta
 * @date    2018-01-23
 * @purpose direct to home page
 * @return  .argument/login.html
 *
 */


router.get('/', function(req, res) {
    res.redirect('http://140.115.126.216/SA/index');    
});
router.get('/index', function(req, res) {
    //res.redirect('http://140.115.126.216/SA/login');
    res.render('argument/index', {});
});
/* GET login page. */
router.get('/newassessment', function(req, res) {

	res.render('argument/newassessment', {});
});

/* GET login page. */
router.get('/login', function(req, res) {

    res.render('argument/login', {});
});

/* GET login page. */
router.get('/front-test', function(req, res) {
    var t_id = req.param('t_id', null);
    var a_id = req.param('a_id', null);

    res.render('argument/fronttest', { "t_id": t_id, "a_id": a_id });
});

/* GET singup page. */
router.get('/signup', function(req, res) {
    res.render('argument/signup', {});
});

/* GET sitting_page_login page. */
router.get('/sitting_login', function(req, res) {
    if (req.session) { // if setting session
        res.redirect('./sittingPage');
    }
    res.render('argument/sitting_login', {});
});

/* GET new activity page. */
router.get('/newactivity', function(req, res) {

    if (!req.session) { // if not setting session
        res.redirect('./sitting_login');
    } else { //req.session.host_id
        res.render('argument/newactivity', { "host_id": req.session.host_id });
    }
});

/* GET new activity page. */
router.get('/newTester', function(req, res) {

    if (!req.session) { // if not setting session
        res.redirect('./sitting_login');
    } else { //req.session.host_id
        res.render('argument/newTester', { "host_id": req.session.host_id });
    }
});

/* GET SendTesterToChatroom page. */
router.get('/SendTesterToChatroom', function(req, res) {

    if (!req.session) {
        // if not setting session
        res.redirect('./sitting_login');
    } else {
        //req.session.host_id
        res.render('argument/SendTesterToChatroom', { "host_id": req.session.host_id });
    }
});


/* GET new Topic page. */
router.get('/newTopic', function(req, res) {

    if (!req.session) { // if not setting session
        res.redirect('./sitting_login');
    }
    //res.writeHead(200, {"Content-Type": "text/html; charset=utf-8"});
    res.render('argument/newTopic', { "host_id": req.session.host_id });

});

/* GET sittingPage. */
router.get('/sittingPage', function(req, res) {
    if (!req.session) { // if not setting session
        res.redirect('./sitting_login');
    } else { //req.session.host_id
        res.render('argument/sittingPage', {});
    }
});

/* GET sittingPage. */
router.get('/ActivityStatus', function(req, res) {
   var a_id = req.param('a_id', null);

    if (!req.session) { // if not setting session
        //res.redirect('./sitting_login');
    } 
    res.render('argument/ActivityStatusPage', {"a_id":a_id});
    
});
/**
 * @method  director
 * @author  Theta
 * @date    2018-01-24
 * @purpose initial chatroom and direct to chatroom.
 * @param   {[http.post.int]user_id}
 * @param   {[http.post.int]activity_id}
 * @return  {[html]argument/ChatroomPage2}
 */
router.post('/argument2', function(req, res) {
    var mail = req.param('mail', null);
    var a_tag = req.param('a_tag', null);

    if (typeof mail == "undefined") {
        // case of not catch u_id
        res.render('argument/errorpage', { error_id: '#404', error_con: "not input mail to server" });
    } else if (typeof a_tag == "undefined") {
        // case of not catch a_id
        res.render('argument/errorpage', { error_id: '#404', error_con: "not input activity tag to server" });
    } else {
        // initialize controller
        var controller_of_argument = require('./Controller/argument.js');
        c = new controller_of_argument();

        /**
         * @method  Defined
         * @author  Theta
         * @date    2018-01-24
         * @purpose Defined a function for operate result of controller.
         * @param   {[http.post.int]chatroom_id}
         * @param   {[http.post.int]tester_id}
         * @param   {[http.post.String]topic_content]}
         * @return  {[html]argument/ChatroomPage2}
         */
        c.controller(mail, a_tag, function(chatroom_id, tester_id, activity_id, topic_content) {
            console.log("chatroom_id", chatroom_id)
            if (chatroom_id == '-1') {
                // case of not already room for user
                var link = "./front-test?a_id=" + activity_id + "&t_id=" + tester_id;
                res.redirect(link);
            } else if (chatroom_id != null) {
                // case of not found tester
                var user = mail;
                console.log(user, ',Enter to chatroom: ' + chatroom_id);
                res.render('argument/ChatroomPage2', { title: '聊天室代號：', room: chatroom_id, UserName: user, t_id: tester_id, t_con: topic_content });
            } else {
                res.render('argument/errorpage', { error_id: '#404', error_con: "not found user or activity" });
            }
        });
    }


});

router.get('/alert', function(req, res) {
    var id = text_filter(req.param('error_id', null), 3);
    var con = text_filter(req.param('error_con', null), 3);
    res.render('argument/errorpage', { error_id: id, error_con: con });

});
//// view end


//// api start


/**
 * @method  Restful Api - get
 * @author  Theta
 * @date    2018-01-25
 * @purpose Enterance of Api for SELECT tester list.
 * @param   {[http.get.int]a_id}
 * @return  {[type]}
 */
router.get('/tester', function(req, res) {
    if (req.query.host_id_API) {
        console.log("Enter to API testing mode.");
        var host_id = req.query.host_id_API;
    } else if (!req.session) { // if not setting session
        res.redirect('./sitting_login');
    } else {
        var host_id = req.session.host_id;
    }

    var activity_id = req.query.a_id;

    // initialize controller
    var controller_of_testerShow = require('./Controller/testerShow.js');
    c = new controller_of_testerShow();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-25
     * @purpose Defined a function for operate the result of controller.
     * @param   {[int]activity_id}
     * @return  {[Json String]}
     */
    c.controller(activity_id, function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond));

    });

});


/**
 * @method  Restful API - post
 * @author  Theta
 * @date    2018-01-24
 * @purpose Enterance of api for create new testers.
 * @param   {[http.post.String]JsonData}
 * @param   {[req.session.host_id]host_id}
 * @return  {[responds tetxt]}
 */
router.post('/tester', function(req, res) {
    if (req.param('host_id_API', null)) {
        console.log('Enter to API testing mode.');
        //var host_id = req.param('host_id_API', null);
    } else if (!req.session) { // if not setting session
        console.log('no login');
        res.redirect('./sitting_login');
    } else {
        var host_id = req.session.host_id;

    }

    var JsonData = req.param('JsonData', null);

    JsonData = JSON.parse(JsonData);
    // initialize controller
    var controller_of_new_Tester = require('./Controller/newTester.js');
    c = new controller_of_new_Tester();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-24
     * @purpose Defined a function for operate result of the controller.
     * @param   {[String]JsonData}
     * @param   {[int]host_id}
     * @return  {[responds text]}
     */
    c.controller(JsonData, function(respond) {
        console.log(respond);
        //res.end("done.");
        if (req.param('host_id_API', null)) {
            res.end("" + JSON.stringify(respond));

        } else {
            res.render('argument/errorpage', { error_id: respond['status'], error_con: respond['text'] });

        }

    });
});


/**
 * @method  Restful Api - put 
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of Api for Setting testers to chatroom.
 * @param   {[http.post]JsonData}
 * @param   {[http.post]Activity_id}
 */
router.put('/tester/chatroom', function(req, res) {
    if (req.param('host_id_API', null)) {
        var a_id = req.param('host_id_API', null);

    } else if (!req.session) {
        // if not setting session
        console.log('no login');
        res.redirect('../sitting_login');
    } else {

        var a_id = req.param('Activity_id', null);
    }
    var JsonData = req.param('JsonData', null);



    JsonData = JSON.parse(JsonData);
    console.log(JsonData);

    // initialize controller
    var controller_of_SendTesterToChatroom = require('./Controller/SendTesterToChatroom.js');
    c = new controller_of_SendTesterToChatroom();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-24
     * @purpose Defined a function for operate result of controller.
     * @param   {[int]a_id}
     * @param   {[Json String]JsonData}
     * @return  {[responds text]}
     */
    c.controller(a_id, JsonData, function(respond) {
        console.log(respond);
        if (req.param('host_id_API', null)) {
            res.end("" + JSON.stringify(respond));

        } else {
            res.end(respond['status'] + ',' + respond['text']);
            //res.render('argument/errorpage',{error_id:respond['status'],error_con:respond['text']});
        }
    });
});



router.put('/tester/score', function(req, res) {
    if (req.param('host_id_API', null)) {
        var stu_id = req.param('host_id_API', null);

    } else {

        var stu_id = req.param('stu_id', null);
    }
    var scores = req.param('scores', null);
    console.log(stu_id, scores);



    // initialize controller
    var controller_of_testergroup = require('./Controller/testergroup.js');
    c = new controller_of_testergroup();
    c.controller(stu_id, scores, function(respond) {

        console.log(respond);
        res.end("" + JSON.stringify(respond));
    });
});

/**
 * @method  Restful api - get
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of api for search Topic data 
 * @param   {[Http.get] host_id}
 * @return  {[Json string] Result of Search}
 */
router.get('/Topic', function(req, res) {
    if (req.param('host_id_API', null)) {
        console.log('Enter api test process');
        var host_id = req.param('host_id_API', null);
    } else if (!req.session) {
        // if not setting session
        console.log('no login');
        res.end("error 403");
    } else {
        var host_id = req.session.host_id;
    }



    // initialize controller
    var controller_of_Topic = require('./Controller/TopicShow.js');
    c = new controller_of_Topic();

    // in controller
    c.controller(host_id, function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond));

    });

});

/**
 * @method  Restful api - post
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of Api of create a new Topic.
 * @param   {[type]content}
 * @param   {[type]host_id}
 * @return  {[responds text]}
 */
router.post('/Topic', function(req, res) {

    if (req.param('host_id_API', null)) { // for api testing
        var host_id = req.param('host_id_API', null);

    } else if (!req.session) { // if not setting session
        res.redirect('./sitting_login');
    } else {

        var host_id = req.session.host_id;
    }
    var content = req.param('content', null);

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



router.get('/user/logout', function(req, res) {


    var link = req.param('link', '../login');

    user_logout(req, link, function(link, responds) {
        console.log("user logout ending.");
        res.redirect("../alert?error_id=200&error_con=已登出");
        if (req.param('host_id_API', null)) {
            res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
            res.end("{\"text\":\"" + responds + "\",\"status\":\"200\"}");
        } else {
            res.redirect(link);
        }

    });



});


router.get('/user/admin', function(req, res) {
    var host_id = req.param('host_id_API', null);
    var mail = text_filter(req.param('mail', null), 1);
    var pws = text_filter(req.param('pws', null), 2);
    if (mail != req.param('mail', null) || pws != req.param('pws', null)) {
        res.redirect("../alert?error_id=400&error_con=輸入中含有非法字元");

    } else {
        // initialize controller
        var controller_of_user_admin = require('./Controller/user_admin.js');
        c = new controller_of_user_admin();

        /**
         * @method  Defined
         * @author  Theta
         * @date    2018-01-26
         * @purpose Defined a function for operate the result of controller.
         * @param   {[type]}
         * @return  {[type]}
         */
        c.controller(mail, pws, function(respond) {
            //console.log(respond);
            if (req.param('host_id_API', null)) {
                res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
                res.end("" + JSON.stringify(respond));
            } else {
                console.log(respond);
                if (respond['return'].length) {
                    req.session = { 'host_id': respond['return'][0]['user_id'] };
                    res.redirect('../sittingPage');

                } else {
                    res.redirect("../alert?error_id=400&error_con=查無使用者");

                }
            }


        });
    }


});



/**
 * @method  Restful api - get 
 * @author  Theta
 * @date    2018-01-24
 * @purpose Enterance of api for get sub-user's data.
 * @param   {[type]}
 * @param   {[type]}
 * @return  {[type]}
 */
router.get('/user/subuser', function(req, res) {
    if (req.param('host_id_API', null)) {
        console.log('Enter api test process');
        var host_id = req.param('host_id_API', null);
    } else if (!req.session) {
        // if not setting session
        console.log('no login');
        res.redirect('../sitting_login');
    } else {
        var host_id = req.session.host_id;
    }


    // initialize controller
    var controller_of_user_list = require('./Controller/sub_userShow.js');
    c = new controller_of_user_list();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-26
     * @purpose Defined a function for operate the result of controller.
     * @param   {[type]}
     * @return  {[type]}
     */
    c.controller(host_id, function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond));

    });

});


/**
 * @method  Restful api - get 
 * @author  Theta
 * @date    2018-01-24
 * @purpose Enterance of api for get user's public data.
 * @param   {[type]}
 * @param   {[type]}
 * @return  {[type]}
 */
router.get('/user/public_data', function(req, res) {

    if (req.param('host_id_API', null)) {
        var mail = req.param('host_id_API', null);
    } else {
        var mail = req.param('mail', null);

    }
    // initialize controller
    var controller_of_userShowPublic = require('./Controller/userShowPublic.js');
    c = new controller_of_userShowPublic();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-29
     * @purpose Defined a function for operate the result of controller.
     * @param   {[http.get.string]mail}
     * @return  {[type]}
     */
    c.controller(mail, function(respond) {
        //console.log(respond);
        //res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond), 'utf-8');

    });
});

/**
 * @method  Restful api - post
 * @author  Theta
 * @date    2018-01-24
 * @purpose Enterance of api for new a user.
 * @param   {[type]username}
 * @param   {[type]userschool}
 * @param   {[type]userStudentID}
 * @return  {[html].argument/errorpage}
 */
router.post('/user', function(req, res) {

    if (req.param('host_id_API', null)) {
        console.log('Enter to API testing process.');
        var parent_mail = req.param('host_id_API', null);
    } else {
        var parent_mail = req.param('parent_mail', null);

    }
    var mail = req.param('mail', null);
    var pws = req.param('pws', null);
    var school = req.param('u_school', null);
    var name = req.param('u_name', null);
    var birday = req.param('u_birthday', '1001-01-01');

    // initialize controller
    var controller_of_newuser = require('./Controller/newuser.js');
    c = new controller_of_newuser();

    /**
     * @method  Defined 
     * @author  Theta
     * @date    2018-01-25
     * @purpose Defined a function for operate the results that from controller.
     * @param   {[string]mail}
     * @param   {[string]pws}
     * @param   {[int]parent_id}
     * @return  {[responds text]}
     */
    c.controller(mail, pws, school, name, parent_mail, birday, function(respond) {
        //console.log(respond);
        if (req.param('host_id_API', null)) {
            // in API testint process.
            res.end("" + JSON.stringify(respond), 'utf-8');

        } else if (respond['text'] == "ER_DUP_ENTRY") {
            res.render('argument/errorpage', { error_id: "1062", error_con: "ER_DUP_ENTRY" });
        } else {
            res.render('argument/errorpage', { error_id: respond['status'], error_con: respond['text'] });
        }
    });



});


router.post('/user/teacher', function(req, res) {

    if (req.param('host_id_API', null)) {
        console.log('Enter api test process');
        var stu_id = req.param('host_id_API', null);
    } else if (!req.session) {
        // if not setting session
        console.log('no login');
        res.redirect('../sitting_login');
    } else {
        var stu_id = req.session.host_id;
    }
    var tea_mail = req.param('mail', null);

    // initialize controller
    var controller_of_addTeacher = require('./Controller/addTeacher.js');
    c = new controller_of_addTeacher();

    c.controller(stu_id, tea_mail, function(respond) {
        //console.log(respond);
        //res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond), 'utf-8');

    });
});

/**
 * @method  Restful Api - get
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of Api for request the activity that you created.
 */
router.get('/activity', function(req, res) {

    if (req.param('host_id_API', null)) {
        var host_id = req.param('host_id_API', null);
    } else if (!req.session.host_id) {
        // if not setting session
        console.log('no login host_id');
        res.redirect('./sitting_login');
    } else {
        var host_id = req.session.host_id;
    }


    // initialize controller
    var controller_of_ActivityShow = require('./Controller/ActivityShow.js');
    c = new controller_of_ActivityShow();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-23
     * @purpose Defined function for operating the output of the controller. 
     * @param   {[function]}
     * @return  {[Json String] Result of search}
     */
    c.controller(host_id, function(respond) {
        //console.log(respond);
        //res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond), 'utf-8');

    });

});

/**
 * @method  Restful Api - get
 * @author  Theta
 * @date    2018-01-30
 * @purpose Enterance of Api for request the activity that you join.
 */
router.get('/activity/join', function(req, res) {

    if (req.param('host_id_API', null)) {
        var host_id = req.param('host_id_API', null);
    } else if (!req.session.host_id) {
        // if not setting session
        console.log('no login host_id');
        res.redirect('../sitting_login');
    } else {
        var host_id = req.session.host_id;
    }


    // initialize controller
    var controller_of_JoinActivityShow = require('./Controller/JoinActivityShow.js');
    c = new controller_of_JoinActivityShow();
    c.controller(host_id, function(respond) {
        //console.log(respond);
        //res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" })
        res.end("" + JSON.stringify(respond), 'utf-8');

    });

});


/**
 * @method  Restful Api - post
 * @author  Theta
 * @date    2018-01-24
 * @purpose Enterance of api for create a new activity.
 * @param   {[http.post]time}
 * @param   {[http.post]TopicID}
 * @return  {[req.session]host_id}
 */
router.post('/activity', function(req, res) {

    if (req.param('host_id_API', null)) {
        var host_id = req.param('host_id_API', null);
    } else if (!req.session) {
        // if not setting session
        res.redirect('./sitting_login');
        return;
    } else {
        var host_id = req.session.host_id;

    }

    var time = req.param('time', null);
    var TopicID = req.param('TopicID', null);

    // initialize controller
    var controller_of_new_activity = require('./Controller/newactivity.js');
    c = new controller_of_new_activity();

    /**
     * @method  Defined
     * @author  Theta
     * @date    2018-01-24
     * @purpose Defined a function for operate result of controller.
     * @param   {[String]time}
     * @param   {[type]TopicID}
     * @param   {[type]host_id}
     * @return  {[type]}
     */
    c.controller(time, TopicID, host_id, function(respond) {
        console.log(respond);
        if (req.param('host_id_API', null)) {
            // if in testing, respond json data
            res.end("" + JSON.stringify(respond));

        }
        res.render('argument/errorpage', { error_id: "#200", error_con: "成功新增" });

    });



});

/**
 * @method  Restful Api - get
 * @author  Theta
 * @date    2018-01-23
 * @purpose Enterance of Api for SELECT activity list.
 * @param   {[http.get:String] keywords}
 * @return  {[Json String] Result of search}
 */
router.get('/References', function(req, res) {

    //if keywords is not exist,then search all data of reference_list.
    var keywords = req.query.keywords ? req.query.keywords : "";



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


/**
 * @method  Restful API
 * @author  Theta
 * @date    2018-01-24
 * @purpose insert tester's action to SQL for record.
 * @param   {[http.post.int]ad_id}
 * @param   {[http.post.int]t_id}
 * @param   {[http.post.String]content}
 * @return  {[responds text]}
 */
router.post('/action', function(req, res) {

    var actionDoc_id = req.param('ad_id', null);
    var tester_id = req.param('t_id', null);
    var content = req.param('content', null);
    var last_time = req.param('l_t', null);

    // initialize controller
    var controller_of_action_list = require('./Controller/action_list.js');
    c = new controller_of_action_list();

    /**
     * @method  Defined.
     * @author  Theta
     * @date    2018-01-24
     * @purpose Defined function for operating the output of the controller.
     * @return  {[responds text]}
     */
    c.controller(actionDoc_id, tester_id, content, last_time, function(respond) {
        if (req.param('host_id_API', null)) {
            // if in testing, respond json data
            res.end("" + JSON.stringify(respond));

        } else {
            res.render('argument/errorpage', { error_id: '#200', error_con: respond["message"] });

        }

    });



});

router.get('/assessment', function(req, res) {

    var activity_id = req.param('a_id', null);


    console.log(activity_id);
    // initialize controller
    var controller_of_assessmentShow = require('./Controller/assessmentShow.js');
    c = new controller_of_assessmentShow();

    // in controller
    c.controller(activity_id, function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" });
        //res.setHeader('Access-Control_Allow-Origin',"*");
        res.end("" + JSON.stringify(respond));

    });

});
router.post('/assessment', function(req, res) {

    var activity_id = text_filter(req.param('a_id', null), 4);
    var content = text_filter(req.param('con', null), 4);


    console.log(content, activity_id);
    // initialize controller
    var controller_of_newassessment = require('./Controller/newassessment.js');
    c = new controller_of_newassessment();

    // in controller
    c.controller(activity_id, content, function(respond) {
        //console.log(respond);
        res.writeHead(200, { "Content-Type": "text/html; charset=utf-8" });
        //res.setHeader('Access-Control_Allow-Origin',"*");
        res.end("" + JSON.stringify(respond));

    });

});




//function
function user_logout(req, link, callback) {
    console.log("user logout process.");
    var responds = "success to logout."
    if (req.session) {
        req.session = null;
    } else {
        responds = "user did not login."

    }
    console.log("user logouted.");
    callback(link, responds);
}

function text_filter(str, type) {
    if (type == 1) { //for mail
        str = str.replace(/[\ |\~|\`|\!|\#|\$|\%|\^|\&|\*|\(|\)|\_|\+|\=|\||\\|\[|\]|\{|\}|\;|\:|\"|\'|\,|\<|\>|\/|\?]/g, "");
    }
    if (type == 2) { //for pws
        str = str.replace(/[\ |\~|\`|\#|\$|\%|\^|\&|\*|\(|\)|\_|\+|\=|\||\\|\[|\]|\{|\}|\;|\:|\"|\'|\,|\<|\>|\/|\?]/g, "");
    }
    if (type == 3) { //for URL
        str = str.replace(/[\ |\~|\`|\!|\@|\#|\$|\^|\&|\*|\(|\)|\-|\_|\+|\=|\||\\|\[|\]|\{|\}|\;|\:|\"|\'|\,|\<|\>|\/|\?]/g, "");
    }
    if (type == 4) { //for SQL
        str = str.replace(/[|\"|\']/g, "");
    }
    return str;
}




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