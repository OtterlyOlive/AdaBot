QS = require "querystring"

module.exports = (robot) ->
	robot.enter (response) ->
		name = response.message.user.name
		name = name.charAt(0).toUpperCase() + name.slice(1)
		response.send "Welcome back Commander "+name+"."
