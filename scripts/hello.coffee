QS = require "querystring"

module.exports = (robot) ->
	robot.respond /AdaBot/i, (msg) ->
		message.send "Yes Commander?"
		#	      msg.reply "You are: #{msg.message.user.name}"
