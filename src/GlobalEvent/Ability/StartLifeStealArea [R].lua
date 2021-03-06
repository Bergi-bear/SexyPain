---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.07.2020 22:54
---
---
function UnitUsedLifeStealAbility(mainData,data)
	if StartLifeStealArea(mainData,data,500) then
		StarFrameCooldown(data,12)
		CallingBarCreate(mainData.UnitHero,5,"Высасывание жизни",false)
	else
		--print("Нет целей, показать радиус способности")
		CreateVisualMarkerRadius(data,1000,mainData.UnitHero,nil,nil,data.Number,0.5)
	end
end



function StartLifeStealArea (mainData,data,area)
	local hero=mainData.UnitHero
	local x,y=GetUnitXY(hero)
	local e=nil
	GroupEnumUnitsInRange(perebor,x,y,area,nil)
	local hasUnit=false
	while true do
		e = FirstOfGroup(perebor)

		if e == nil then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) and not IsUnitType(e,UNIT_TYPE_STRUCTURE) then
			--print(GetUnitName(e))
			--StartLifeStealUnit(hero,e)
			MoveEffFrom2Unit(hero,e)
			hasUnit=true
		end
		GroupRemoveUnit(perebor,e)
	end
	return hasUnit
end


function MoveEffFrom2Unit(hero,e)
	local duration=5
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		duration=duration-TIMER_PERIOD
		if duration<=0 then
			DestroyTimer(GetExpiredTimer())
		end
		local eff= AddSpecialEffect("Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile_mini.mdl",GetUnitXY(e))
		TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
			local z, x,y=GetUnitZ(hero)+100,GetUnitXY(hero)
			local ze,xe,ye=GetUnitZ(e)+50,GetUnitXY(e)

			local effX,effY=BlzGetLocalSpecialEffectX(eff),BlzGetLocalSpecialEffectY(eff)
			local angle=AngleBetweenXY(effX,effY,x,y) / bj_DEGTORAD
			local nx,ny=MoveXY(effX,effY,15,angle)
			BlzSetSpecialEffectPosition(eff, nx,ny, 50)
			BlzSetSpecialEffectYaw(eff,math.rad(angle))
			local dist=DistanceBetweenXY(x,y,nx,ny)
			--print(dist)
			if dist<=30 then

				--print("эффект долетел")
				DestroyTimer(GetExpiredTimer())
				BlzSetSpecialEffectPosition(eff, OutPoint, OutPoint, 0)
				DestroyEffect(eff)
			end
		end)
	end)
end





function StartLifeStealUnitOLD(hero,e)
	local  eff=CreateEffectLighting3D(0,0,0,0,0,0,20,"Abilities\\Weapons\\PhoenixMissile\\Phoenix_Missile_mini.mdl",100)
	for i=1,#eff do
		BlzSetSpecialEffectScale(eff[i],0.1)
	end
	local maxDuration=60
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		maxDuration=maxDuration-TIMER_PERIOD
		--print("сосем каждый тик")
		local z, x,y=GetUnitZ(hero)+100,GetUnitXY(hero)
		local ze,xe,ye=GetUnitZ(e)+50,GetUnitXY(e)
		MoveEffectLighting3D(x,y,z,xe,ye,ze,40,eff,nil,true)
		--UnitDamageTarget(hero, e, 1, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
		if maxDuration<=0 or not UnitAlive(e) then
			--	print("окончено")
			DestroyTimer(GetExpiredTimer())
			DestroyEffectLighting3D(eff)
		end
	end)
end

