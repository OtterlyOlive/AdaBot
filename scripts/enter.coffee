QS = require "querystring"

module.exports = (robot) ->
	robot.enter (response) ->
		#name = response.message.user.name
		#message.send "Welcome back Commander "+name+"."
		message.send "Someone has joined the channel!"
