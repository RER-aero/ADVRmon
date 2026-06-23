function ADVR.onLoad()
    pickup.name = "Super Potion"
    pickup.desc = "A spray-type medicine that restores the HP of your active Pokémon moderatly."
	pickup.weight = 95
	pickup.tier = 1
	pickup.maxAmount = 3
	pickup.amountUses = -1
	pickup.price = 35
	pickup.spawnsIn = {relicPool.CHEST, relicPool.SHOP, relicPool.GOLDEN_CHEST}
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