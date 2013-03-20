QS = require "querystring"

module.exports = (robot) ->
	robot.enter (response) ->
		console.log("Someone joined")
		name = response.message.user.name
		message.send "Welcome back Commander "+name+"."
