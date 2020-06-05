function InitSpellTrigger()
	local SpellTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		TriggerRegisterPlayerUnitEvent(SpellTrigger, player, EVENT_PLAYER_UNIT_SPELL_CAST)
	end
	TriggerAddAction(SpellTrigger, function()

		local caster = GetTriggerUnit()
		local target = GetSpellTargetUnit()
		local casterX, casterY = GetUnitX(caster), GetUnitY(caster)
		local x, y = GetSpellTargetX(), GetSpellTargetY()
		local spellId = GetSpellAbilityId()
		local angleCast = AngleBetweenXY(casterX, casterY, x, y) / bj_DEGTORAD
		local data = HERO[GetPlayerId(GetOwningPlayer(caster))]

		if GetUnitAbilityLevel(caster, SpellIDS) > 0 then
			local bonusAttack = 20
			local cd = BlzGetUnitAbilityCooldown(caster, spellId, GetUnitAbilityLevel(caster, spellId) - 1)
			data.bonusCD = data.bonusCD + bonusAttack

			--BlzSetUnitWeaponIntegerField(caster,UNIT_WEAPON_IF_ATTACK_ATTACK_TYPE,0,5)

			FrameBigSize(BlzGetAbilityIcon(SpellIDS), 0.2, 5, data.bonusCD)
			--print("Атака увеличена")
			BlzSetUnitBaseDamage(caster, BlzGetUnitBaseDamage(caster, 0) + bonusAttack, 0)
			TimerStart(CreateTimer(), cd, false, function()
				BlzSetUnitBaseDamage(caster, BlzGetUnitBaseDamage(caster, 0) - bonusAttack, 0)
				data.bonusCD = data.bonusCD - bonusAttack
				--	print("Атака уменьшена")
			end)
		end
		if spellId == SpellIDQ then
			-- Выстрел
			BlzPauseUnitEx(caster, true)
			TimerStart(CreateTimer(), 0.1, false, function()
				if UnitAlive(caster) then
					SetUnitAnimationByIndex(caster, 17)
					CreateCallingBar(caster, 0.4)
					--HealthBarAdd(caster)
					TimerStart(CreateTimer(), 0.4, false, function()
						local damage = (BlzGetUnitBaseDamage(caster, 0) + data.HeroGreenDamage) * 5
						--print("момент вылета пули")
						local xs, ys = MoveXY(casterX, casterY, 80, angleCast)
						CreateAndForceBullet(caster, angleCast, 50, "Abilities\\Weapons\\CannonTowerMissile\\CannonTowerMissile", xs, ys, damage)
					end)

					TimerStart(CreateTimer(), 1, false, function()
						if UnitAlive(caster) then
							ResetUnitAnimation(caster)
						end
						BlzPauseUnitEx(caster, false)
					end)
				end
			end)
		end
		if spellId == SpellIDW then
			-- Бросок якоря
			--	print("Бросок якоря")
			TimerStart(CreateTimer(), 0.01, false, function()
				--BlzStartUnitAbilityCooldown(caster,SpellIDW,1) --для тестов
				--BlzEndUnitAbilityCooldown(caster,SpellIDW)
			end)
			local anchor = AddSpecialEffect("AdmiralAssets\\AnchorHD2", casterX, casterY)
			local dist = DistanceBetweenXY(x, y, casterX, casterY)
			--if dist<=900 then dist=900 end
			BlzSetSpecialEffectYaw(anchor, math.rad(angleCast))
			--BlzSetSpecialEffectPitch(anchor,math.rad(-90))
			BlzSetSpecialEffectZ(anchor, GetUnitZ(caster) + 200)
			data.ChainEff = CreateEffectLighting3D(0, 0, 0, 0, 0, 0, 0, "AdmiralAssets\\ChainElement")
			JumpEffect(anchor, 20, 300, angleCast, dist, caster, 2, GetUnitZ(caster) + 200)
		end

		if spellId == SpellIDE then
			-- Удар саблей
			local attackRange = 180
			BlzPauseUnitEx(caster, true)
			TimerStart(CreateTimer(), 0.01, false, function()
				if UnitAlive(caster) then
					SetUnitAnimationByIndex(caster, 4)
					local eff = nil
					CreateCallingBar(caster, 0.2)
					TimerStart(CreateTimer(), 0.2, false, function()
						eff = AddSpecialEffectTarget("AdmiralAssets\\animeslashfinal", caster, "weapon")
						--print("момент урона")
						local e = nil
						local k = 0
						local damage = BlzGetUnitBaseDamage(caster, 0)
						local multiplier = 1
						local totalDamage = 0

						local tl = Location(GetUnitXY(caster))
						--сначала считаем юнитов
						GroupEnumUnitsInRange(perebor, casterX, casterY, attackRange, nil)
						while true do
							e = FirstOfGroup(perebor)
							if e == nil then
								break
							end
							if UnitAlive(e) and UnitAlive(caster) and IsUnitEnemy(e, GetOwningPlayer(caster)) and IsPointInSector(GetUnitX(e), GetUnitY(e), casterX, casterY, angleCast, 235 // 2, attackRange) then
								k = k + 1
							end
							GroupRemoveUnit(perebor, e)
						end
						--print("Насчитано юнитов "..k)
						multiplier = multiplier + 1 * k
						totalDamage = damage * multiplier
						--наносит урон тем же юнитам
						local isUnit = false
						GroupEnumUnitsInRange(perebor, casterX, casterY, attackRange, nil)
						while true do
							e = FirstOfGroup(perebor)
							if e == nil then
								break
							end
							if UnitAlive(e) and UnitAlive(caster) and IsUnitEnemy(e, GetOwningPlayer(caster)) and IsPointInSector(GetUnitX(e), GetUnitY(e), casterX, casterY, angleCast, 235 // 2, attackRange) then
								--UnitDamageArea(caster,totalDamage,casterX, casterY, 150)
								UnitDamageTarget(caster, e, totalDamage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS)
								FlyTextTagCriticalStrike(caster, R2I(totalDamage) .. "!", GetOwningPlayer(caster))

								isUnit = true
								local r2 = GetRandomInt(1, 3)
								if r2 == 1 then
									PlaySoundAtPointBJ(gg_snd_MetalHeavySliceFlesh1, 100, tl, 0)
								elseif r2 == 2 then
									PlaySoundAtPointBJ(gg_snd_MetalHeavySliceFlesh2, 100, tl, 0)
								elseif r2 == 3 then
									PlaySoundAtPointBJ(gg_snd_MetalHeavySliceFlesh3, 100, tl, 0)
								end

							end
							GroupRemoveUnit(perebor, e)
						end
						if not isUnit then
							--print("урон по деревьям?")
							if UnitDamageArea(caster, totalDamage, casterX, casterY, attackRange) then
								--	print("прошёл")
							end
							local r = GetRandomInt(1, 3)
							if r == 1 then
								PlaySoundAtPointBJ(gg_snd_BristleBackMissileLaunch1, 100, tl, 0)
							elseif r == 2 then
								PlaySoundAtPointBJ(gg_snd_BristleBackMissileLaunch2, 100, tl, 0)
							elseif r == 3 then
								PlaySoundAtPointBJ(gg_snd_BristleBackMissileLaunch3, 100, tl, 0)
							end
						end
						RemoveLocation(tl)

					end)
					TimerStart(CreateTimer(), 0.5, false, function()
						if UnitAlive(caster) then
							DestroyEffect(eff)
							ResetUnitAnimation(caster)
						end
						BlzPauseUnitEx(caster, false)
					end)
				end
			end)
		end
		if spellId == SpellIDR then
			-- Пушки
			--TODO id
			--local data=HERO[GetPlayerId(GetOwningPlayer(caster))]
			--data.ReleaseLMB=true
			local cannon = {}
			for i = 1, 5 do
				cannon[i] = AddSpecialEffect("AdmiralAssets\\SiegeCannon", 6000, 6000)
				BlzSetSpecialEffectAlpha(cannon[i], 40)
				BlzSetSpecialEffectScale(cannon[i],1.3)
				--BlzSetSpecialEffectColor(cannon[i],0,255,0)
			end
			--print("клик")
			local curAngle = angleCast
			local angleCast2 = angleCast
			TimerStart(CreateTimer(), TIMER_PERIOD, true, function()

				if data.ReleaseLMB then

					BlzStartUnitAbilityCooldown(caster, SpellIDR, BlzGetUnitAbilityCooldown(caster, SpellIDR, GetUnitAbilityLevel(caster, SpellIDR) - 1))
					local xEnd, yEnd = MoveXY(x, y, -40, angleCast2)
					angleCast = AngleBetweenXY(xEnd, yEnd, GetPlayerMouseX[data.pid], GetPlayerMouseY[data.pid]) / bj_DEGTORAD
					curAngle = lerpTheta(curAngle, angleCast, TIMER_PERIOD * 8)
					--print(curAngle)
					for i = 1, 5 do
						local nx, ny = MoveXY(x, y, 75 * (i - 3), curAngle - 90)
						BlzSetSpecialEffectPosition(cannon[i], nx, ny, GetTerrainZ(nx, ny))
						BlzSetSpecialEffectYaw(cannon[i], math.rad(curAngle))
						--DestroyEffect(cannon[i])
					end

				end

				if not data.ReleaseLMB then
					--print("отпустил")
					DestroyTimer(GetExpiredTimer())
					for i = 1, 5 do
						local nx, ny = MoveXY(x, y, 75 * (i - 3), curAngle - 90)
						CreateFallCannonOnEffectPosition(data, curAngle, nx, ny)
						BlzSetSpecialEffectPosition(cannon[i], 6000, 6000, 0)
						DestroyEffect(cannon[i])
					end
				end
			end)

		end
	end)
end



