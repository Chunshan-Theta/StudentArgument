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

    console.log(req.query.uname);
    var user_id =req.query.u_id
    var activity_id = req.query.a_id

    var controller_of_argument = require('./Controller/argument.js');
    c = new controller_of_argument();
    

    c.controller(user_id,activity_id,function(chatroom_id,ActionDoc){

        //console.log(chatroom_id);
        //console.log(ActionDoc);
        var user = 'NormalUser_'+user_id//req.param('user', null);
        console.log(user,',Enter to chatroom: '+chatroom_id);
        
        res.render('argument/ChatroomPage',{title:'聊天室代號：',room:chatroom_id,UserName:user});
    });
    
    
});



module.exports = router;
