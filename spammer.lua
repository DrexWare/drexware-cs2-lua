-- CHAT SPAMMER --

local Misc = gui.Reference("Drexware", "Misc", "Features");
local spamGui = gui.Checkbox( Misc, "spamChat", "Chat spammer", false )

local delay = 1;
local messages = {
    "dsc.gg/drexware on top ",
    "Created by drexxy!!",
    "drexware.gg on top (add drexxy for 1d free trial)",
  
}

-- END--

































local last_sent = 0
local last_message = ""
-- Rage features --
local function spamChat()
    local lp = entities.GetLocalPlayer()
    local enableSpammer  = gui.GetValue("spamChat")
	if lp and lp:IsAlive() then
        if enableSpammer then
            local current_time = globals.CurTime()
            if current_time - last_sent >= delay then
                local random_message = messages[math.random(#messages)]
                if last_message == random_message then
                    local random_message = messages[math.random(#messages)]
                end
                client.ChatSay(random_message)
                last_message = random_message
                last_sent = current_time
            end    
        end
    end
end
-- ESP --
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
local function ExampleSnapLines()
    local screenCenterX, screenH = draw.GetScreenSize();
    screenCenterX = screenCenterX * 0.5;

    draw.Color(255, 0, 0, 255);

    local players = entities.FindByClass("CCSPlayer");

    for i = 1, #players do
        local player = players[i];

        if player:IsAlive() then
            local x, y = client.WorldToScreen(player:GetAbsOrigin());

            if x ~= nil and y ~= nil then
                draw.Line(x, y, screenCenterX, screenH);
                draw.FilledRect(x,y, x+ 20,y+ 20)
            end
        end
    end
end

-- ESP --

-- RAGEBOT -- 
local function jump_scout_fix()
	local lp = entities.GetLocalPlayer()
	if lp and lp:IsAlive() then
		local vel = math.sqrt(lp:GetPropFloat("localdata", "m_vecVelocity[0]") ^ 2 + lp:GetPropFloat("localdata", "m_vecVelocity[1]") ^ 2)
		if lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_ssg08" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_awp" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_glock" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_hkp2000" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_usp_silencer" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_elite" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_p250" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_fiveseven" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_tec9" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_cz75a" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_deagle" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_revolver" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_nova" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_xm1014" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_mag7" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_sawedoff" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_m249" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_negev" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_mp9" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_mac10" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_mp7" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_mp5sd" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_ump45" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_p90" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_bizon" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_galilar" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_famas" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_ak47" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_m4a1" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_m4a1_silencer" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_sg556" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_aug" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_g3sg1" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_scar20" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_decoy" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_flashbang" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_smokegrenade" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_molotov" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_hegrenade" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_healthshot" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_c4" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_t" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_outdoor" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_skeleton" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_canis" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_cord" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_css" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_bayonet" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_flip" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_gut" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_karambit" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_m9_bayonet" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_tactical" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_butterfly" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_falchion" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_push" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_survival_bowie" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_ursus" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_gypsy_jackknife" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_stiletto" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_widowmaker" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knifegg" 
		or lp:GetPropEntity("m_hActiveWeapon"):GetName():lower() == "weapon_knife_ghost" then
			if vel > 25 then
				gui.SetValue("misc.strafe.enable", true)
			else
				gui.SetValue("misc.strafe.enable", false)
			end
		else
			gui.SetValue("misc.strafe.enable", true)
		end
	else
		gui.SetValue("misc.strafe.enable", true)
	end
end
-- RAGEBOT
callbacks.Register('Draw', 'Logo', draw_logo);
callbacks.Register("CreateMove", spamChat);
callbacks.Register("CreateMove", jump_scout_fix);
