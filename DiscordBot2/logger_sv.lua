local logs = "https://discordapp.com/api/webhooks/564221765283479569/ocL72OgZdget-gB9glXYZmEMo3YXP9iHaJzSEvpZkjpN-_7YAv4G6SXQkO9dfiajyHp1"
local communityname = "San Andreas Roleplay"
local communtiylogo = "https://images-ext-1.discordapp.net/external/IESwrDpdCdPnnVAzZU1OoZQ5tM40zXTiaSpgOee53Wc/https/cdn.discordapp.com/attachments/548968424316076042/553903662444052480/sarplogo.png" --Must end with .png

AddEventHandler('playerConnecting', function()
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local connect = {
        {
            ["color"] = "25500",
            ["title"] = "Player Connected To San Andreas Roleplay",
            ["description"] = "Player: **"..name.."**\nIP: **"..ip.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "San Andreas Roleplay", embeds = connect}), { ['Content-Type'] = 'application/json' })
end)

AddEventHandler('playerDropped', function(reason)
local name = GetPlayerName(source)
local ip = GetPlayerEndpoint(source)
local ping = GetPlayerPing(source)
local steamhex = GetPlayerIdentifier(source)
local disconnect = {
        {
            ["color"] = "80255",
            ["title"] = "Player Disconnected From San Andreas Roleplay",
            ["description"] = "Player: **"..name.."** \nReason: **"..reason.."**\nIP: **"..ip.."**\n Steam Hex: **"..steamhex.."**",
	        ["footer"] = {
                ["text"] = communityname,
                ["icon_url"] = communtiylogo,
            },
        }
    }

    PerformHttpRequest(logs, function(err, text, headers) end, 'POST', json.encode({username = "Big Yoda Server Logger", embeds = disconnect}), { ['Content-Type'] = 'application/json' })
end)
