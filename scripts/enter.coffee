QS = require "querystring"

module.exports = (robot) ->
	robot.join enter (response) ->
		name = response.message.user.name
		message.send "Welcome back Commander "+name+"."
     # at this point you can get the user's name with:
     # response.message.user.name
     # works the same for robot.leave
