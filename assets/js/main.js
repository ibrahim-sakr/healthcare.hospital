/*
 * Include Modules
 */
var gui = require('nw.gui'),
	win = gui.Window.get(),
	Pagination 	= require('Pagination'),
	Calendar 	= require('Calendar');


/* for Debugging */
// win.showDevTools();

/* show app when page is fully loaded */
// jQuery(document).ready(function(){
// 	gui.Window.get().show();
// });

/*
 * System Tray icon and Menu
 */
var tray;
var trayMenu 	=  new gui.Menu();
var traySubmenu =  new gui.Menu();
var trayMore 	= item = new gui.MenuItem({ label: 'add new' });

traySubmenu.append(new gui.MenuItem({ label: 'patient' }));
traySubmenu.append(new gui.MenuItem({ label: 'booking' }));
traySubmenu.append(new gui.MenuItem({ label: 'diet' }));
traySubmenu.append(new gui.MenuItem({ label: 'employee' }));
traySubmenu.append(new gui.MenuItem({ label: 'group' }));
traySubmenu.append(new gui.MenuItem({ label: 'machine' }));
traySubmenu.append(new gui.MenuItem({ label: 'session' }));
traySubmenu.append(new gui.MenuItem({ label: 'bed' }));
trayMore.submenu = traySubmenu;
trayMenu.append(trayMore);
trayMenu.append(new gui.MenuItem({
	label: 'restore',
	icon: "assets/images/restore.png",
	click: function() {
		win.show();
		tray.remove();
		tray = null;
	}
}));
trayMenu.append(new gui.MenuItem({
	type: 'separator'
}));
trayMenu.append(new gui.MenuItem({
	label: 'exit',
	icon: "assets/images/exit.png",
	click: function() {
		win.show();
		global.HCalert({
			type: "updated", // success, updated, error
			headerText: "Exit Healthcare App",
			bodyContent: "<p>are you sure you want to exit the app</p><p>any unsaved data will lose !!!</p>",
			hide: function(){},
			ok: function(){
				win.close(true);
			}
		});
	}
}));
// show system tray when app minimize
win.on('minimize', function() {
	this.hide();
	// Show tray
	tray = new gui.Tray({
		title: "Healthcare Center",
		tooltip: "Healthcare Center",
		icon: 'assets/images/icon.png'
	});
	tray.menu = trayMenu;
});

/*
 * GLOBAL vars
 */
// document
global.doc = document;
global.window = window;

// global route object for use in redirect to specific pages;
global.route = new require('Routes');
// redirect to route
global.redirect = function(name, options){
	if ( Object.keys(global.route).length ) {
		global.route(name, options);
	} else {
		global.route = new require('Routes');
		global.route(name, options);
	};
};
// Alert Messages
global.HCalert = function(options){
	"use strict";
	var mod 	= jQuery('#module-messages'),
		mhead 	= mod.find('.mhead'),
		mbody 	= mod.find('.mbody'),
		mfoot 	= mod.find('.mfoot'),
		clean 	= function(e){
			e.preventDefault();
			mod.attr('class', '');
			mhead.html('');
			mbody.html('');
			mfoot.html('');
		};
	mhead.html(options.headerText);
	mbody.html(options.bodyContent);
	if ( options.hasOwnProperty('ok') ) {
		jQuery(mfoot).append("<button class='mbutton-ok'>OK!</button>");
		jQuery(mfoot).find('.mbutton-ok').on('click', function(e){
			clean(e);
			options.ok();
		});
	};
	if ( options.hasOwnProperty('hide') ) {
		if (options.hasOwnProperty('hideText')) {
			jQuery(mfoot).append("<button class='mbutton-close'>"+ options.hideText +"</button>");
		} else {
			jQuery(mfoot).append("<button class='mbutton-close'>close</button>");
		};
		jQuery(mfoot).find('.mbutton-close').on('click', function(e){
			clean(e);
			options.hide();
		});
	};
	if ( options.hasOwnProperty('cancel') ) {
		jQuery(mfoot).append("<button class='mbutton-cancel'>cancel</button>");
		jQuery(mfoot).find('.mbutton-cancel').on('click', function(e){
			clean(e);
			options.cancel();
		});
	};
	mod.addClass(options.type);
};
global.auth = function(name, cb){
	win.cookies.get({name:"userDetails"}, function(cookie){
		var obj = eval("("+ cookie.value +")");
		if( obj.permissions.indexOf(name) >= 0 ) {
			cb();
		} else {
			global.HCalert({
				type: "error", // success, updated, error
				headerText: "Auth Failed",
				bodyContent: "<p>you don't have the permisions to this action!!!</p><br><p>if you think this is an error .. please contact the administrator</p>",
				hide: function(){}
			});
		};
	});
}


/*
 * Main buttons (close, maxmize, minimize and Fullscreen)
 */
win.isMaximize = false;

win.on('maximize', function(){ win.isMaximize = true; });
win.on('unmaximize', function(){ win.isMaximize = false; });
jQuery(document).on('click', '#app-maximize', function(e){
	e.preventDefault();
	if (win.isMaximize) win.unmaximize();
	else win.maximize();
});
jQuery(document).on('click', '#app-exit', function(e){
	e.preventDefault();
	global.HCalert({
		type: "updated", // success, updated, error
		headerText: "Exit Healthcare App",
		bodyContent: "<p>are you sure you want to exit the app</p><p>any unsaved data will lose !!!</p>",
		hide: function(){},
		ok: function(){
			win.close(true);
		}
	});
});
jQuery(document).on('click', '#app-minimize', function(e){
	e.preventDefault();
	win.minimize();
});
jQuery(document).on('click', '#app-full-screen', function(e){
	e.preventDefault();
	if ( win.isFullscreen ) win.leaveFullscreen();
	else win.enterFullscreen();
});

/*
 * Routes
 */
// start app with Login Page
global.route('app-get-login');
// watch click Events
jQuery(document).on('click', 'a', function(e){
	if ( jQuery(this).hasClass('exclude-url') ) return;
	// stop page from redirect
	e.preventDefault();
	// reset paginaton global var
	global.paginatePage = 1;

	// collect the value of attr "href"
	var url = jQuery(this).attr("href"),
		obj = jQuery(this).data();

	// redirect to the new route
	global.route(url, obj);
});

/*
 * the Five Main sections of app Navigation.
 */
jQuery(document).on('click', '.origins a', function(){
	jQuery(this).addClass('active').parents('li').siblings().find('a').removeClass('active');
});

/*
 * hide user dropdown when navigate away
 */
jQuery(document).on('click', function(e) {
	if ( !jQuery(e.target).closest('#user').length ) {
		jQuery('#user-meta-menu').removeAttr('checked');
	}
});

/*
 * Tabs
 */
jQuery(document).on('click', '.tabs li', function(e){
	var ths 	= jQuery(this),
		target	= ths.data('target');
	jQuery(ths).addClass('active').siblings().removeClass('active');
	jQuery('.tabs-content #'+ target).show().siblings().not('.form-action').hide();
});


/**
* Dashboard Widgets
*/

/* clock */
jQuery(document).ready(function(){
	startTime();
});
function startTime() {
	var today=new Date(),
		h = today.getHours(),
		m = checkTime( today.getMinutes() );
		s = checkTime( today.getSeconds() );
	jQuery('#home-page .clock > span:last').html('<span class="hour">'+ h +'</span>:<span class="minute">'+ m +'</span>:<span class="second">'+ s +'</span>');
	var t = setTimeout(function(){
		startTime()
	},500);
}
function checkTime(i) {
	if (i<10) i = "0" + i; // add zero in front of numbers < 10
	return i;
}




/**
* Check If connection exist
*/
// require('dns').resolve('www.google.com', function(err) {
// 	if (err)
// 		// no connection
// 	else
// 		// connection
// });
