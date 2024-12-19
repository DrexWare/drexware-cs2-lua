-- CHAT SPAMMER --
local enableSpammer = false;
local delay = 1;
local messages = {
    "dsc.gg/drexware on top ",
    "Created by drexxy!!",
    "drexware.gg on top (add drexxy for 1d free trial)",
    "Squirrel is gay",
}

-- END--

































local last_sent = 0

-- Rage features --
local function spamChat()
    if enableSpammer then
        local current_time = globals.CurTime()


        if current_time - last_sent >= delay then

            local random_message = messages[math.random(#messages)]
            client.ChatSay(random_message)
            last_sent = current_time
        end    
    end
end

local count = 0;

local last = globals.RealTime();

local frame_rate = 0.0;
local get_abs_fps = function()
    frame_rate = 0.9 * frame_rate + (1.0 - 0.9) * globals.AbsoluteFrameTime();
    return math.floor((1.0 / frame_rate) + 0.5);
end


local full = "drexware.gg |";
local function draw_logo()
    draw.Color(37, 130, 162, 255)
    draw.FilledRect(10, 40, 220, 60)
    draw.Color(0, 255, 150, 255);
    draw.Text(15, 45, full);


    local fps = get_abs_fps();

    if fps < 30 then
        draw.Color(150, 0, 0, 255);
    elseif fps < 60 then
        draw.Color(150, 150, 0, 255);
    else
        draw.Color(0, 150, 0, 255);
    end
    local fps = tostring(get_abs_fps()) .. " fps"
    draw.Text(draw.GetTextSize(full) + 20, 45, fps);

end

callbacks.Register('Draw', 'Logo', draw_logo);
callbacks.Register("CreateMove", spamChat)
