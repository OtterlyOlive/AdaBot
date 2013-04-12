QS = require "querystring"

module.exports = (robot) ->
	robot.hear /AdaBot\?/, (message) ->
		message.send "Affirmative Commander."

	robot.hear /Thanks AdaBot/, (message) ->
		name = message.message.user.name
		message.send "You're welcome "+name+"!"

	robot.hear /This is actual. Copy that. Fire at will/, (message) ->
		message.send "Copy that Actual"
