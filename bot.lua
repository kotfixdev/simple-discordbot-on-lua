local discordia = require('discordia')
local bot = discordia.Client() 
local token = "your-token"
local embc = 0x00800
local prefix = "!"
discordia.extensions()


bot:on('ready', function()
    print("Ready!")
    bot:setGame("Sample text")
end)

bot:on('messageCreate', function(msg)
    if msg.author == bot.user or msg.author.bot == true or msg.author.discriminator == 0000 then return end
	if msg.content:lower() == prefix.."simplecmd" or msg.content:lower() == prefix.."simplecommand" then
		msg.channel:send {
			embed = {
				title = "Embed Title!",
				description = "Embed Description!",
				footer = {
					text = "Footer Text!"
				},
				color = embc
			}
        }
    end

end)

bot:run("Bot "..token)