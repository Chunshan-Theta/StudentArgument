#!/usr/bin/nodejs
var debug = require('debug')('my-application');
var app = require('../app');

app.set('port', process.env.PORT || 3000);
var host_address = "140.115.126.216";
var project_root_link ="/SA";
var host_port = app.get('port');

var server = app.listen(app.get('port'), function() {
  console.log('Express server listening on port ' +host_port);
});


var io = require('socket.io')(server);
io.path(project_root_link);


io.on('connection', function(socket){
	var controller_of_action_list = require('../routes/Controller/action_list.js');
    socket.on('Push_message', function(tester_id,msg,roomID,color_code,actionDoc_id,last_time){
        console.log('In roomID:'+roomID);
        console.log(tester_id);
        console.log(msg);
        console.log(actionDoc_id);
        //console.log(last_time);
        io.in(String(roomID)).emit(roomID+'_upload_message', msg ,color_code);



        var c = new controller_of_action_list();

    
	    c.controller(actionDoc_id, tester_id, wordsfilter(msg), last_time, function(respond) {
	    	console.log(respond);
	    });
	    delete c ;


    });
    socket.on('sys-text', function(msg,roomID,color_code){
    	socket.join(String(roomID));
        console.log('join roomID:'+roomID);
        console.log(msg);
        io.in(String(roomID)).emit(roomID+'_upload_message', msg ,color_code);
    });
    socket.on('action_records', function(tester_id,msg,roomID,actionDoc_id,last_time){
    	var c = new controller_of_action_list();

    
	    c.controller(actionDoc_id, tester_id, msg, last_time, function(respond) {
	    	console.log(respond);
	    });
	    delete c ;
        
    });
    
});

function wordsfilter(source){
    //return source;
    return source.replace(/\'/g,'"');

}


/*
var actionDoc_id = req.param('ad_id', null);
    var tester_id = req.param('t_id', null);
    var content = req.param('content', null);
    var last_time = req.param('l_t', null);

    // initialize controller
    var controller_of_action_list = require('./Controller/action_list.js');
    c = new controller_of_action_list();

    
    c.controller(actionDoc_id, tester_id, content, last_time, function(respond) {
        if (req.param('host_id_API', null)) {
            // if in testing, respond json data
            res.end("" + JSON.stringify(respond));

        } else {
            console.log(respond);
            //res.render('argument/errorpage', { error_id: '#200', error_con: respond["message"] });

        }

    });

 */