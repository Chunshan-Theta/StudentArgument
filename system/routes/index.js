var express = require('express');
var router = express.Router();





/* GET home page. */
router.get('/', function(req, res) {
    res.render('index',{});
});

/* GET EntranceForChat page. */
router.get('/EntranceForChat', function(req, res) {
    res.render('EntranceForChat',{});
});

/* GET ChatRoom page. */
router.post('/Chat', function(req, res) {
    var user = req.param('user', null);
    var ID = req.param('create', null);
    var ip = req.connection.remoteAddress.substring(7);
    console.log('ip:'+ip);

    if(ID==null){
       ID = req.param('add', null);
       console.log('"'+ip+'" '+'add chat: '+ID);
    }
    else{            
       ID = ID+'-'+ip;
       console.log('"'+ip+'" '+'Create chat: '+ID);
    }

    if(user==null){       
       user = "anonymous"+' ~ xxxx.xxx...'+ip.substring(7);
       console.log('"'+ip+'" '+'Set anonymous UserName: '+user) ;
    }
    else{
       user=user+' ~ '+ip;
       console.log('"'+ip+'" '+'Set UserName: '+user);
    }
    
    res.render('ChatroomPage',{title:'聊天室代號：',room:ID,UserName:user});
});





/* GET argument page. */
router.get('/argument', function(req, res) {


    
    var user_id = req.query.u_id;
    var activity_id = req.query.a_id;
    
    if (typeof user_id == "undefined" ){// case of not catch u_id
        res.render('argument/errorpage',{error_id:'#404',error_con:"not input user id to server"});
    }

    else if (typeof activity_id == "undefined" ){// case of not catch a_id
        res.render('argument/errorpage',{error_id:'#404',error_con:"not input activity id to server"});
    }
    else{
        // initialize controller
        var controller_of_argument = require('./Controller/argument.js');
        c = new controller_of_argument();
        
        // in controller
        c.controller(user_id,activity_id,function(chatroom_id,ActionDoc){

            //console.log(typeof chatroom_id);
            //console.log(ActionDoc);
            
            
            if (chatroom_id != null){// case of not found tester
                var user = 'NormalUser_'+user_id//req.param('user', null);
                console.log(user,',Enter to chatroom: '+chatroom_id);
                res.render('argument/ChatroomPage',{title:'聊天室代號：',room:chatroom_id,UserName:user});
            }
            else if(chatroom_id == '-1'){// case of not already room for user
                res.render('argument/errorpage',{error_id:'#404',error_con:"Not yet arranged chat room, please talk this about this to your activity hoster"});
            }
            else{
                res.render('argument/errorpage',{error_id:'#404',error_con:"not found user or activity"});
	        }
        });
    }
    
    
});

/* GET argument page. */
router.post('/argument_post_action_list', function(req, res) {

   //INSERT INTO `action_list` (`action_id`, `actionDoc_id`, `tester_id`, `exe_time`) VALUES (NULL, '1', '1', CURRENT_TIMESTAMP);
    
    var actionDoc_id = req.param('ad_id', null);
    var tester_id = req.param('t_id', null);
    
    
    // initialize controller
    var controller_of_action_list = require('./Controller/action_list.js');
    c = new controller_of_action_list();
    
    // in controller
    c.controller(actionDoc_id,tester_id,function(respond){
        //console.log(respond);
        res.render('argument/errorpage',{error_id:'#200',error_con:respond["message"]});

    });

    
    
});

module.exports = router;
