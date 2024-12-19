
local delay = 1  
local messages = {
    "dsc.gg/drexware on top ",
	"Created by drexxy!!",
    "",
    "Squirrel is gay", 
}
-- Modify these messages above for chat spammer!

































local last_sent = 0


local function spamChat()
    local current_time = globals.CurTime()


    if current_time - last_sent >= delay then
        
        local random_message = messages[math.random(#messages)]
        client.ChatSay(random_message)  
        last_sent = current_time  
    end
end


callbacks.Register( "CreateMove", spamChat)
