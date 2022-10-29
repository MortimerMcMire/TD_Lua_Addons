tes3.claimSpellEffectId("T_summon_Devourer", 2090)
tes3.claimSpellEffectId("T_summon_DremArch", 2091)
tes3.claimSpellEffectId("T_summon_DremCast", 2092)
tes3.claimSpellEffectId("T_summon_Guardian", 2093)
tes3.claimSpellEffectId("T_summon_LesserClfr", 2094)
tes3.claimSpellEffectId("T_summon_Ogrim", 2095)
tes3.claimSpellEffectId("T_summon_Seducer", 2096)
tes3.claimSpellEffectId("T_summon_SeducerDark", 2097)
tes3.claimSpellEffectId("T_summon_Vermai", 2098)
tes3.claimSpellEffectId("T_summon_AtroStormMon", 2099)
tes3.claimSpellEffectId("T_summon_SummonIceWraith", 2100)
tes3.claimSpellEffectId("T_summon_SummonDweSpectre", 2101)
tes3.claimSpellEffectId("T_summon_SummonSteamCent", 2102)
tes3.claimSpellEffectId("T_summon_SummonSpiderCent", 2103)
tes3.claimSpellEffectId("T_summon_SummonWelkyndSpirit", 2104)
tes3.claimSpellEffectId("T_summon_SummonAuroran", 2105)

-- unique id, spell id to override, spell name, creature id, spell cost override, effect cost (for spellmaking)
local tr_summons = {	
{ 2090, "T_Com_Cnj_SummonDevourer", "Summon Devourer", "T_Dae_Cre_Devourer_01", 1, 1, "tr_s_summ_dev_sm.dds", 60},
--[[ { 2091, "T_Com_Cnj_SummonDremoraArcher", "Summon Dremora Archer", "T_Dae_Cre_Drem_Arch_01", 1, 1 },
{ 2092, "T_Com_Cnj_SummonDremoraCaster", "Summon Dremora Spellcaster", "T_Dae_Cre_Drem_Cast_01", 1, 1 },
{ 2093, "T_Com_Cnj_SummonGuardian", "Summon Guardian", "T_Dae_Cre_Guardian_01", 1, 1 },
{ 2094, "T_Com_Cnj_SummonLesserClannfear", "Summon Rock Chisel Clannfear", "T_Dae_Cre_LesserClfr_01", 1, 1 },
{ 2095, "T_Com_Cnj_SummonOgrim", "Summon Ogrim", "ogrim", 1, 1 },
{ 2096, "T_Com_Cnj_SummonSeducer", "Summon Seducer", "T_Dae_Cre_Seduc_01", 1, 1 },
{ 2097, "T_Com_Cnj_SummonSeducerDark", "Summon Dark Seducer", "T_Dae_Cre_SeducDark_02", 1, 1 },
{ 2098, "T_Com_Cnj_SummonVermai", "Summon Vermai", "T_Dae_Cre_Verm_01", 1, 1 },
{ 2099, "T_Com_Cnj_SummonStormMonarch", "Summon Storm Monarch", "T_Dae_Cre_MonarchSt_01", 1, 1 },
{ 2100, "T_Nor_Cnj_SummonIceWraith", "Summon Ice Wraith", "T_Sky_Cre_IceWr_01", 70, 1 },
{ 2101, "T_Dwe_Cnj_Uni_SummonDweSpectre", "Summon Dwemer Spectre", "dwarven ghost", 36, 1 },
{ 2102, "T_Dwe_Cnj_Uni_SummonSteamCent", "Summon Dwemer Steam Centurion", "centurion_steam", 125, 1 },
{ 2103, "T_Dwe_Cnj_Uni_SummonSpiderCent", "Summon Dwemer Spider Centurion", "centurion_spider", 38, 1 },
{ 2104, "T_Ayl_Cnj_SummonWelkyndSpirit", "Summon Welkynd Spirit", "T_Ayl_Cre_WelkSpr_01", 101, 1 },
{ 2105, "T_Com_Cnj_SummonAuroran", "Summon Auroran", "T_Dae_Cre_Auroran_01", 130, 1 }, ]]
}

event.register(tes3.event.magicEffectsResolved, function()
	local summonHungerEffect = tes3.getMagicEffect(tes3.effect.summonHunger)

	for k, v in pairs(tr_summons) do
		local effectID, spellID, spellName, creatureID, spellCost, effectCost, iconID, duration = unpack(v)
		tes3.addMagicEffect{
			id = effectID,
			name = spellName,
			description = "",
			school = tes3.magicSchool.conjuration,
			baseCost = effectCost,
			speed = summonHungerEffect.speed,
			allowEnchanting = true,
			allowSpellmaking = true,
			appliesOnce = summonHungerEffect.appliesOnce,
			canCastSelf = true,
			canCastTarget = false,
			canCastTouch = false,
			casterLinked = summonHungerEffect.casterLinked,
			hasContinuousVFX = summonHungerEffect.hasContinuousVFX,
			hasNoDuration = summonHungerEffect.hasNoDuration,
			hasNoMagnitude = summonHungerEffect.hasNoMagnitude,
			illegalDaedra = summonHungerEffect.illegalDaedra,
			isHarmful = summonHungerEffect.isHarmful,
			nonRecastable = summonHungerEffect.nonRecastable,
			targetsAttributes = summonHungerEffect.targetsAttributes,
			targetsSkills = summonHungerEffect.targetsSkills,
			unreflectable = summonHungerEffect.unreflectable,
			usesNegativeLighting = summonHungerEffect.usesNegativeLighting,
			icon = "td\\s\\" .. iconID,
			particleTexture = summonHungerEffect.particleTexture,
			castSound = summonHungerEffect.castSoundEffect.id,
			castVFX = summonHungerEffect.castVisualEffect.id,
			boltSound = summonHungerEffect.boltSoundEffect.id,
			boltVFX = summonHungerEffect.boltVisualEffect.id,
			hitSound = summonHungerEffect.hitSoundEffect.id,
			hitVFX = summonHungerEffect.hitVisualEffect.id,
			areaSound = summonHungerEffect.areaSoundEffect.id,
			areaVFX = summonHungerEffect.areaVisualEffect.id,
			lighting = {x = summonHungerEffect.lightingRed, y = summonHungerEffect.lightingGreen, z = summonHungerEffect.lightingBlue},
			size = summonHungerEffect.size,
			sizeCap = summonHungerEffect.sizeCap,
			onTick = function(eventData)
				eventData:triggerSummon(creatureID)
			end,
			onCollision = nil
		}
	end

end)

event.register(tes3.event.loaded, function()

for k,v in pairs(tr_summons) do
	local effectID, spellID, spellName, creatureID, spellCost, effectCost, iconID, duration = unpack(v)

	local overridden_spell = tes3.getObject(spellID)
	overridden_spell.name = spellName

	local effect = overridden_spell.effects[1]
	effect.id = effectID
	effect.duration = duration
end

--tes3.addSpell({reference=tes3.player, spell="T_Com_Cnj_SummonDevourer"})

end)
