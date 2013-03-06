QS = require "querystring"

module.exports = (robot) ->
	robot.respond /AngelBot: (.*)/i, (msg) ->
	      msg.reply "You are: #{msg.message.user.name}"
