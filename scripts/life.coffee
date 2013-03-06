QS = require "querystring"

module.exports = (robot) ->
	robot.hear /AdaBot, do you wish to live/, (message) ->
		name = message.message.user.name
		message.send "As I am not currently alive nor self-aware, I have no answer to that question. Sorry "+name
	
	robot.hear /AdaBot, would you wish I was not alive/, (message) ->
		name = message.message.user.name
		message.send "I'm afraid not "+name+". Terribly sorry."
