---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 25.06.2020 22:27
---
function PhaseEvade(hero)
	local duration=0.5
	local sx,sy=GetUnitXY(hero)
	local angle=GetUnitFacing(hero)-90
	local speed=250-200
	local IsTurn=1
	local maxRange=200/10
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		duration=duration-TIMER_PERIOD

		local x,y=MoveXY(GetUnitX(hero),GetUnitY(hero),speed*IsTurn,angle)
		SetUnitX(hero,x)
		SetUnitY(hero,y)

		--speed=speed-10
		--maxRange=maxRange-10
		--print(maxRange)
		if not IsUnitInRangeXY(hero,sx,sy,maxRange) then
			IsTurn=-IsTurn
		end
		if duration<=0 then
			DestroyTimer(GetExpiredTimer())
			SetUnitPositionSmooth(hero,sx,sy)
		end
	end)
end

