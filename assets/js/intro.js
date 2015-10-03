/**
* Compiled To intro.bin
* use that file instead of this
*/
var gui = require('nw.gui'),
old_win = gui.Window.get();
main_win = gui.Window.open('master.html', {
	title: "Healthcare Center",
	kiosk: false,
	icon: "./assets/images/icon.png",
	toolbar: false,
	frame: false,
	width: 950,
	height: 747,
	position: "center",
	min_width: 100,
	min_height: 300,
	fullscreen: false,
	show_in_taskbar: true,
	show: false,
	transparent: false,
	resizable: true,
	as_desktop: false
});
main_win.on('loaded', function(){
	old_win.close();
});
old_win.on('close', function() {
	old_win.hide(); // Pretend to be closed already
	main_win.show();
	main_win.focus();
	main_win.requestAttention();
	main_win.setBadgeLabel("Healthcare Center");
	old_win.close(true);
});
