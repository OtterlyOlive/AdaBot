QS = require "querystring"

content = [
	'Welcome back Sir XXX, I trust you\'ve had a pleasent day?',
	'I would like to either welcome, or welcome XXX, back to the channel!',
	'Hello again XXX!',
	'Updating Agent Status of Agent XXX to Online',
	'Welcome back to the world of the living XXX!',
	'Hi there XXX',
	'Mjello XXX',
	'Good day XXX',
	'Oh hey look everybody! XXX is back from the dead!',
	'Oh there you are XXX, we were just talking about you!',
	'I\'m not mad that you have been gone for this long XXX, but I am pretty dissapointed about it...',
	'Oh hey! Look who decided to show up! It\'s XXX!',
	'Welcome back XXX :)',
	'G\'day XXX!',
	'CHOO CHOO I\'M A TRAIN MOTHERFUCKER! Err.. I mean.. Hello XXX'
]


module.exports = (robot) ->
		robot.hear /happy birthday/i, (message) ->
			message.send message.random content

module.exports = (robot) ->
	robot.enter (response) ->
		name = response.message.user.name
		name = name.charAt(0).toUpperCase() + name.slice(1)

		if name == "AdaBot"
			response.send "Operational status: Online. Awaiting command."
		else
			msg = response.random content
			msg = msg.replace /XXX/, name
			response.send msg
