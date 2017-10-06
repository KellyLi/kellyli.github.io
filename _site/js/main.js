$( document ).ready(function() {
	var scene = document.getElementById('scene');
	var parallaxInstance = new Parallax(scene);
});

$(window).resize(function() {
	console.log('here');
	var w = window.innerWidth;
	console.log(w)
	if (w < 1200) {
		$(document.getElementById('portrait')).css("left", w *.6 + 'px');
	}

}
);
