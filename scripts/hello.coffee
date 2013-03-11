QS = require "querystring"

module.exports = (robot) ->
	robot.hear /AdaBot\?/, (message) ->
		message.send "Affirmative Commander."

	robot.hear /AdaBot\!/i, (message) ->
		message.send "Yes Commander?"

	robot.hear /has joined \#perlsec-mc/ig, (message) ->
		name = message.message.user.name
		message.send "Welcome back Commander "+name+"."
