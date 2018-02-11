#!/usr/bin/nodejs
var debug = require('debug')('my-application');
var app = require('../app');

app.set('port', process.env.PORT || 3000);

var host_address = "140.115.126.216";
var project_root_link ="StudentArgument";
var host_port = app.get('port');

var server = app.listen(app.get('port'), function() {
  console.log('Express server listening on port ' +host_port);
});


var io = require('socket.io')(server);
io.path('/StudentArgument');


io.on('connection', function(socket){
    socket.on('Push_message', function(msg,roomID,color_code){
        console.log('In roomID:'+roomID);
        console.log(msg);
        io.emit(roomID+'_upload_message', msg ,color_code);
    });
    
});

