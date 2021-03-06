---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 25.06.2020 22:27
---
function PhaseEvade(data)
	local hero=data.UnitHero
	local duration=0.5
	local sx,sy=GetUnitXY(hero)
	--local angle=0
	local speed=80
	local IsTurn=1
	local maxRange=speed/2

	local eff=AddSpecialEffect("units\\demon\\Demoness\\Demoness",GetUnitXY(hero))
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		duration=duration-TIMER_PERIOD
		local angle=GetUnitFacing(hero)-90
		local z,x,y=GetUnitZ(hero),MoveXY(GetUnitX(hero),GetUnitY(hero),speed*IsTurn,angle)

		BlzSetSpecialEffectPosition(eff,x,y,z)
		BlzSetSpecialEffectYaw(eff,math.rad(GetUnitFacing(hero)))
		--SetUnitX(hero,x)
		--SetUnitY(hero,y)

		--speed=speed-10
		--maxRange=maxRange-10
		--print(maxRange)
		if  DistanceBetweenXY(x,y,GetUnitXY(hero))>=maxRange then
			IsTurn=-IsTurn
		end
		if duration<=0 then
			data.EvasionState=false
			DestroyTimer(GetExpiredTimer())
			BlzSetSpecialEffectPosition(eff,OutPoint,OutPoint,0)
			DestroyEffect(eff)
			--SetUnitPositionSmooth(hero,sx,sy)
		end
	end)
end

