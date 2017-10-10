$( document ).ready(function() {
	var scene = document.getElementById('scene');
	var parallaxInstance = new Parallax(scene);
});

$(window).resize(function() {
	var w = window.innerWidth;
	if (w < 1200) {
		$(document.getElementById('portrait')).css("left", w *.6 + 'px');
	}
}
);
