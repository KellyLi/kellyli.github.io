exports.setup = ->
	# Framer.Defaults.Animation = curve: "spring(400,30,10)"
	Framer.Defaults.Layer.shadowColor = 'rgba(0,0,0,0.12)'
	# Framer.Defaults.Layer.shadowColor = 'rgba(0,0,0,0.12)'
	# Framer.Defaults.Layer.shadowY = 24
	# Framer.Defaults.Layer.shadowBlur = 32

	# The font file is at 'fonts/customFont.otf'
	style = document.createElement('style');
	style.type = 'text/css';
	style.appendChild(document.createTextNode("@font-face {\n" +
	"\tfont-family: \"clan\";\n" + 
	"\tsrc: local(''), url('fonts/ClanPro-NarrNews.otf') format('opentype');\n" + 
	"}\n" + 
	"\tfont-family: clan !important;\n" + 
	"}\n"));
	document.getElementsByTagName('head')[0].appendChild(style);

	style = document.createElement('style');
	style.type = 'text/css';
	style.appendChild(document.createTextNode("@font-face {\n" +
	"\tfont-family: \"clanMedium\";\n" + 
	"\tsrc: local(''), url('fonts/ClanPro-NarrMedium.otf') format('opentype');\n" + 
	"}\n" + 
	"\tfont-family: clanMedium !important;\n" + 
	"}\n"));
	document.getElementsByTagName('head')[0].appendChild(style);

	style = document.createElement('style');
	style.type = 'text/css';
	style.appendChild(document.createTextNode("@font-face {\n" +
	"\tfont-family: \"clanNews\";\n" + 
	"\tsrc: local(''), url('fonts/ClanPro-News.otf') format('opentype');\n" + 
	"}\n" + 
	"\tfont-family: clanNews !important;\n" + 
	"}\n"));
	document.getElementsByTagName('head')[0].appendChild(style);

