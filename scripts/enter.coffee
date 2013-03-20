QS = require "querystring"

module.exports = (robot) ->
	robot.enter (response) ->
		name = response.message.user.name
		response.send "Welcome back Commander "+name+"."
