setup = require "setup"
setup.setup()
hammer = require "hammer"


Framer.Defaults.Animation = {
	time: .4
}

app = new Layer
	image: 'images/background.png'
	width: 640
	height: 1136

car = new Layer
	width: 160
	height: 160
	image:'images/car.png'
	borderRadius: 80
	midX: 320
	y: 964
car.style = 
	'border':'2px solid #29e68f'

	
plate = new Layer
	width: 184
	height: 40
	midX: 320
	backgroundColor:'#fff'
	y: 1087
	clip: false
plate.html = '4UBR626'
plate.style =
	'padding':'0 60px'
	'font-family':'ClanMedium'
	'color':'#000'
	'line-height':'40px'
	'border':'2px solid #29e68f'
# 	'border-left':'40px solid #29e68f'
	'font-size':'22px'

colorSquare = new Layer
	superLayer: plate
	backgroundColor: '#29e68f'
	x: -56
	midY: -plate.height/2 - 2
	height: 28
	width: 28
	borderRadius: 2

colorSquare.bringToFront()
	
overlay = new Layer
	backgroundColor: '#151525'
	width: 640
	height: 1136
	opacity: 0
overlay.states.add('shown',
	opacity: .8
)

title = new Layer
	width: 640
	image:'images/intro.png'
	backgroundColor:'transparent'
	y: 400
	opacity:0
	height: 195

title.states.add('shown',opacity:1)

button = new Layer # this is the car + license plate
	width: 180
	height: 180
	borderRadius: 100
	midX: 320
	y: 960
	backgroundColor: 'transparent'

containers= [] # containers for rotatins
greenContainer = new Layer
blueContainer = new Layer
purpleContainer = new Layer
pinkContainer = new Layer
orangeContainer = new Layer
yellowContainer = new Layer
containers.push(greenContainer, blueContainer, purpleContainer, pinkContainer,orangeContainer,yellowContainer)

colors = [] # actual color dots
green = new Layer
	backgroundColor: '#29e68f'
	superLayer: greenContainer

blue = new Layer
	backgroundColor: '#2dbad4'
	superLayer: blueContainer

purple = new Layer
	backgroundColor: '#b243af'
	superLayer: purpleContainer

pink = new Layer
	backgroundColor: '#fc1a9e'
	superLayer: pinkContainer

orange = new Layer
	backgroundColor: '#fda443'
	superLayer: orangeContainer

yellow = new Layer
	backgroundColor: '#fef636'
	superLayer: yellowContainer

colors.push(green, blue, purple, pink, orange, yellow)

button.on Events.Click, ->
	overlay.states.switch("shown")
	button.scale = 0
	for i in [0..5]
		containers[i].states.switch('shown')
		colors[i].states.switch('shown')

dismiss = (except=null) -> # dismiss color picker
	button.scale = 1
	title.states.switch('default')
	overlay.states.switch("default")
	for i in [0..5]
		if colors[i] != except
			containers[i].states.switchInstant('default')
			colors[i].states.switchInstant('default')

overlay.on Events.TouchEnd, ->
	dismiss()

selColor = (layer) ->
	layer.on Events.Tap, ->
		if layer.isAnimating is false
			layer.superLayer.bringToFront()
			layer.states.switch 'full'
			switchColorTo(layer)
			Utils.delay .4, -> # bug kinda fixed with delay!!!?????? (Event listener catching too many things from none tap events. Everything should be aight as long as you don't abuse the prototype)
				if layer.states.current is 'full'
					dismiss(layer)
					
					fade = layer.animate
						properties:
							opacity: 0
					fade.on Events.AnimationEnd, ->
						layer.scale = 0
						layer.opacity = 1
						dismiss()
	layer.on Events.PressUp, ->
		dismiss()
		switchColorTo(layer)

	layer.on Events.PanEnd, ->
		dismiss()
		switchColorTo(layer)
		
	layer.on Events.Press, (e) ->
		if not layer.isAnimating and layer.scale is 1
			layer.superLayer.bringToFront()
			layer.states.switch 'full'

for i in [0..5]
	containers[i].states.add('shown',
		rotationZ:i*36,
		scale:1)
	containers[i].states.add('selected',scale:1.2)
	containers[i].clip = false
	containers[i].rotationZ = -i*20
	containers[i].width = 195
	containers[i].height = 60
	containers[i].x = 125
	containers[i].y = 1015
	containers[i].originX= 1
	containers[i].originY= .5
	containers[i].backgroundColor = 'transparent'
	colors[i].x = 180
	colors[i].width= 60
	colors[i].height= 60
	colors[i].borderRadius= 30
	colors[i].scale = 0
	colors[i].opacity = 1
	colors[i].states.add('shown',
		x: 0,
		scale: 1)
	colors[i].states.add('full', scale: 45)
	colors[i].states.animationOptions.delay = (7-i)*0.01
	selColor(colors[i])

switchColorTo = (color) ->
	ringColor = color.backgroundColor
	car.style = 'border':'2px solid ' + ringColor

	colorSquare.backgroundColor = ringColor

	plate.style =
		'border':'2px solid' + ringColor

overlay.states.switch('shown')
for i in [0..5]
	containers[i].states.switch('shown')
	colors[i].states.switch('shown')
title.states.switch('shown')