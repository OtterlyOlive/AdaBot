QS = require "querystring"

module.exports = (robot) ->
	robot.hear /AdaBot\?/, (message) ->
		message.send "Affirmative Commander."

	robot.hear /AdaBot/i, (message) ->
		message.send "Yes Commander?"
