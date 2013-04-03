QS = require "querystring"

module.exports = (robot) ->
	robot.hear /AdaBot\?/, (message) ->
		message.send "Affirmative Commander."

	robot.hear /AdaBot\!/i, (message) ->
		message.send "Yes Commander?"
	
	robot.hear /Thanks AdaBot?!/, (message) ->
		name = message.message.user.name
		message.send "You're welcome "+name"!"
