-- To Set This Up visit https://forum.cfx.re/t/how-to-updated-discord-rich-presence-custom-image/157686

Citizen.CreateThread(function()
	while true do
		SetDiscordAppId(806443520931528775)
		SetDiscordRichPresenceAsset('logo_name')
        SetDiscordRichPresenceAssetText('DokusCore - The RedM Framework for quality with love :)')
        SetDiscordRichPresenceAssetSmall('logo_name')
        SetDiscordRichPresenceAssetSmallText('Join our discord!')
        SetDiscordRichPresenceAction(0, "Website!", "https://dokuscore.com/")
        SetDiscordRichPresenceAction(1, "Discord!", "https://discord.gg/bRwYUcsyjj")
		Citizen.Wait(60000)
	end
end)