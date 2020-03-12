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

$(window).scroll(function(){
  var windowHeight = $( window ).height();
  var scrollPercentage = (windowHeight - window.scrollY)/windowHeight;
  var frameHeight = windowHeight - window.scrollY;
  var frameWidth = toPercent(scrollPercentage);
  $('#frame-left').css( "height", frameHeight.toString());
  $('#frame-right').css( "height", frameHeight.toString());
  $('#frame-top-left').css( "width", frameWidth);
  $('#frame-top-right').css( "width", frameWidth);
});

function scale (num, in_min, in_max, out_min, out_max) {
  return (num - in_min) * (out_max - out_min) / (in_max - in_min) + out_min;
}

function toPercent (num) {
  return (num * 100).toString() + '%';
}