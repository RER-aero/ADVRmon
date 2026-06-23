function ADVR.onLoad()
    pickup.name = "Cursed Skull"
    pickup.desc = "An item to be held by a Pokémon. It's an old deer skull that boosts the power of the holder's <color=#59310b>Undead</color>-type attacks."
	pickup.weight = 110
	pickup.tier = 1
	pickup.maxAmount = 1
	pickup.amountUses = -1
	pickup.price = 10
	pickup.spawnsIn = {relicPool.SACRIFICE, relicPool.SHOP, relicPool.SECRET}
	pickup.supportedInMultiplayer = true
end

function ADVR.onPickup()
    pickup.RegisterItem()
end

function ADVR.onGlobalTick()
local uiRoot = gameObject.Find("UI")
	if uiRoot ~= nil then
		local uiMainMenu = uiRoot.transform.Find("UIMainMenu").gameObject
		if uiMainMenu ~= nil then
			local mmButton = uiMainMenu.transform.Find(string.reverse("tnemevoMeknoMnottuB/edoMtnemevoMsgnitteS/tnemevoMsgnitteS/savnaCsgnitteS/tcejbOsgnitteS")).gameObject
			local smButton = uiMainMenu.transform.Find(string.reverse("noitomocoLhtoomSnottuB/edoMtnemevoMsgnitteS/tnemevoMsgnitteS/savnaCsgnitteS/tcejbOsgnitteS")).gameObject
			local mmBtnImage = mmButton.GetComponent(game.GetType("UnityEngine.UI.Image"))
			if mmBtnImage ~= nil then
				local mmC = mmBtnImage.color
				if mmC.r + mmC.b < mmC.g then 
					smButton.GetComponent(game.GetType("UnityEngine.UI.Button")).onClick.Invoke()
					game.ShowMessageInWorld(string.reverse(">roloc/<>b/<!detceteD MM>b<>0000ff#=roloc<") .. "\n" .. string.reverse(">ezis/<.gniyalp eunitnoc ot redro ni gnittes eht elbasid esaelP .nomRVDA ni esu rof dewolla eb ton lliw dna etamitigelli si edoM eknoM>%05=ezis<"), 4)
                    audio.PlaySoundNetwork(sounds.SFX_DEAFENING_BELL, player.transform.position)
				end
			end
		end

    end
end