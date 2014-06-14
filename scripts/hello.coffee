QS = require "querystring"

module.exports = (robot) ->
	robot.hear /AdaGirl\?/, (message) ->
		message.send "Affirmative Commander."

	robot.hear /Thanks AdaGirl/, (message) ->
		name = message.message.user.name
		message.send "You're welcome "+name+"!"

	robot.hear /This is actual. Copy that. Fire at will/, (message) ->
		message.send "Copy that Actual"

	robot.hear /This is actual, initiate omega protocol/, (message) ->
		message.send "Copy that Actual. Starting complete humanity wipeout. Please hold"

	robot.hear /putted/, (message) ->
		message.send "I'm pretty sure you mean 'put', "+message.message.user.name+" :)"
