QS = require "querystring"

module.exports = (robot) ->
	robot.hear /AdaBot/i, (message) ->
		message.send "Yes Commander?" 
