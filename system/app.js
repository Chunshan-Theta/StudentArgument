var express = require('express');
var path = require('path');
var favicon = require('static-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');
var CookieStore = require('cookie-sessions');
var routes = require('./routes/index');
var users = require('./routes/users');
var app = express();

// view engine setup
//app.set('views', path.join(__dirname, 'views'));
//app.set('view engine', 'jade');
/* 删掉express默认配置jade的两行代码,注册ejs模板为html页,就是原来以.ejs为后缀的模板页，现在的后缀名可以是.html了 */
app.engine('.html', require('ejs').__express);
/* 设置视图模板的默认后缀名为.html,避免了每次res.Render("xx.html")的尴尬 */
app.set('view engine', 'html');
/* 设置模板文件文件夹,__dirname为全局变量,表示网站根目录 */
app.set('views', __dirname + '/views'); 
app.use(CookieStore({ secret: 'keyboard cat' }));



app.use(favicon());
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded());
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

app.use('/', routes);
//app.use('/users', users);

/// catch 404 and forwarding to error handler
app.use(function(req, res, next) {
    var err = new Error('Not Found');
    err.status = 404;
    next(err);
});

/// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
    app.use(function(err, req, res, next) {
        res.status(err.status || 500).send(err.stack);
        res.render('error', {
            message: err.message,
            error: err
        });
    });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
        message: err.message,
        error: {}
    });
});









module.exports = app;
