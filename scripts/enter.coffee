QS = require "querystring"

content = [
	'Welcome back Sir XXX, I trust you\'ve had a pleasent day?',
	'I would like to welcome XXX either welcome, or welcome back to the channel!',
	'Hello again XXX!',
	'Updating Agent Status of Agent XXX to Online',
	'Welcome back to the world of the living XXX!',
	'Hi there XXX',
	'Mjello XXX'
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
			msg = message.random content
			msg = msg.random.replace /XXX/, name
			response.send msg
