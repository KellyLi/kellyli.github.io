# --- Drag/Pinch/Rotate example ---
# for Hammer.js 2.something
#
# probs to Koen and Tisho
#
# Koen's example of how to use Hammer.js v1.1.3 with Framer.js v3 and then i changed some shit to make it work with 2.0

HammerEvents =
	
	Tap: "tap"
	DoubleTap: "doubletap"
	Press: "press"
	PressUp: "pressup"
	Release: "release"
# 	Gesture: "gesture"

	Swipe: "swipe"
	SwipeUp: "swipeup"
	SwipeDown: "swipedown"
	SwipeLeft: "swipeleft"
	SwipeRight: "swiperight"
	
	Transform: "transform"
	TransformStart: "transformstart"
	TransformEnd: "transformend"

	Rotate: "rotate"
	RotateStart: "rotatestart"
	RotateEnd: "rotateend"

	Pinch: "pinch"
	PinchStart: "pinchstart"
	PinchEnd: "pinchend"
	
	Pan: "pan"
	PanStart: "panstart"
	PanEnd: "panend"
	

# Add the Hammer events to the base Framer events
window.Events = _.extend Events, HammerEvents

# Patch the on method on layers to listen to Hammer events
class HammerLayer extends Framer.Layer
	
	on: (eventName, f) ->
		if eventName is Events.DoubleTap
			hammer = new Hammer.Manager(@_element)
			hammer.add(new Hammer.Tap({event: Events.DoubleTap, posThreshold: 100, taps: 2}))
			hammer.on(eventName, f)
		else if eventName is Events.Press
			hammer = new Hammer.Manager(@_element)
			hammer.add(new Hammer.Press({event: Events.Press, time: 300}))
			hammer.on(eventName, f)

		else if eventName in _.values(HammerEvents)
			@ignoreEvents = false			
			hammer = Hammer(@_element).on eventName, f

			hammer.get('pinch').set enable: true
			hammer.get('rotate').set enable: true
		else
			super eventName, f

# Replace the default Layer with the HammerLayer
window.Layer = HammerLayer