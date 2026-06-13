
   


function ADVR.onLoad()
    combo.comboName = "Pokemon Trainer"
    combo.primaryWeaponName = "Pokemon"
    combo.secondaryWeaponName = "Pokeball"
    combo.primaryWeapon = game.stringToObjectMapper.GetObject("weapon_player_dagger")
    combo.secondaryWeapon = game.stringToObjectMapper.GetObject("weapon_player_throwing_knife")
    combo.orderInUI = 151
    combo.DefineAugmentSlot(0, false, 0)
    combo.DefineAugmentSlot(1, false, 0)
    combo.DefineAugmentSlot(2, true, 0)
    combo.DefineAugmentSlot(3, true, 0)
     game.localizationInterpreter.currentlySelectedLanguage.AddTranslation("pokemontrainer_combo_name", "Pokemon Trainer")
    game.localizationInterpreter.currentlySelectedLanguage.AddTranslation("pokemontrainer_primary_crit_stat_name", "Mon Crit")
    game.localizationInterpreter.currentlySelectedLanguage.AddTranslation("pokemontrainer_primary_damage_stat_name", "Mon Damage")
    game.localizationInterpreter.currentlySelectedLanguage.AddTranslation("pokemontrainer_primary_name", "Active Pokemon")
end

function ADVR.WeaponComboEvents.onWeaponComboSelected()
    -- set the default values of this weapon combo --
    player.PrimaryDamage.ChangeAddend("defaultValue", 0)
    player.SecondaryDamage.ChangeAddend("defaultValue", 3)
    player.CritDamage.ChangeAddend("defaultValue", 1.2)
    player.PrimaryCritChance.ChangeAddend("defaultValue", 0)
end

function ADVR.onDungeonGenerated(dungeon)
	game.inventory.currentSecondaryWeapon.AsSwordBase().bladeCreator.transform.localScale = vector3.__new(1, 1.5, 1)
end

function ADVR.WeaponComboEvents.onTriggerPressed(weaponBase, hand, isEmpty)
    if not isEmpty or weaponBase == game.inventory.currentPrimaryWeapon then
        return
    end

    if weaponBase.IsEquipped then
        weaponBase.UnequipWeapon()
    end
    weaponBase.EquipWeapon(hand)
end

function ADVR.WeaponComboEvents.onTriggerReleased(weaponBase, hand)
    if weaponBase == game.inventory.currentPrimaryWeapon then
        return
    end

    if weaponBase.IsEquipped and weaponBase.EquippedHand == hand then
        weaponBase.UnequipWeapon()
    end

    weaponBase.OnTriggerInputReleased(hand.handType)
end


function ADVR.WeaponComboEvents.onSecondaryButtonPressed(weaponBase, hand)
    if weaponBase.IsEquipped then
        weaponBase.UnequipWeapon()
    elseif not weaponBase.IsEquipped then
        local secondaryWep = game.inventory.currentSecondaryWeapon
        if secondaryWep ~= nil and secondaryWep.IsEquipped and secondaryWep.EquippedHand == hand then
            secondaryWep.UnequipWeapon()
        end
        weaponBase.EquipWeapon(hand)
    end
end
function giveWeaponRelic()
    local enablePower = game.DropItem(objects.ITEM_UPGRADE_ALL .. ":" .. "pokeball", player.transform.position)
    combo.CallFunctionIn("UseIt", 1.5, enablePower.GetComponent_ItemUpgrade_())
end

function ADVR.WeaponComboEvents.onRunStart()

    game.inventory.currentPrimaryWeapon.EquipWeapon(game.inventory.primaryWeaponHand)


    combo.CallFunctionIn("giveWeaponRelic", 1)


end

function UseIt(upgrade)
	upgrade.OnUseStart()
end


function ADVR.WeaponComboEvents.isUnlocked()
    return true
end


function CreateAugmentView()
    local augmentShop = game.FindObjectByType(game.GetType("ProgressShopBeastBlood")) ---@type ProgressShopBeastBlood | Object
    if augmentShop ~= nil then
        augmentShop.DefineAugmentUIConduit(-7.28, -7.56, 5, 0)
        augmentShop.DefineAugmentUIConduit(6.98, -7.50, 5, 0)
        augmentShop.DefineAugmentUIConduit(0.00, 2.70, 5.01, 90)
        augmentShop.DefineAugmentUIConduit(-2.82, 3.27, 2.81, 0)
        augmentShop.DefineAugmentUIConduit(2.42, 3.27, 2.81, 0)

        augmentShop.DefineAugmentUIButton(combo, true, 0, 5.90, 3.29)
        augmentShop.DefineAugmentUIButton(combo, true, 1, 9.37, -7.50)
        augmentShop.DefineAugmentUIButton(combo, true, 2, -6.35, 3.29)
        augmentShop.DefineAugmentUIButton(combo, true, 3, -9.60, -7.50)

      
        augmentShop.DefineAugmentUIWeaponModel("prop_pot_small", vector3.__new(0.00, -0.29, -0.0009), vector3.__new(0.50, 0.50, 0.01), vector3.__new(0.00, 180.00, 0.00))

          -- rotate book --
        combo.CallFunctionIn("RotateBookCorrectly", 0.01, augmentShop.weaponVisualsParent)
    end
end

function RotateBookCorrectly(weaponVisualsParent)
    weaponVisualsParent.transform.GetChild(1).GetChild(0).GetChild(0).Rotate(0, 30, 0)
    weaponVisualsParent.transform.GetChild(1).GetChild(0).GetChild(1).Rotate(0, -30, 0)
end