
do
	TimerStart(CreateTimer(), 0.1, false, function()
		InitMouseMoveTriggerFocus()
	end)
end


function InitMouseMoveTriggerFocus()
	local MouseMoveTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		--if GetPlayerSlotState(player) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(player) == MAP_CONTROL_USER then
		TriggerRegisterPlayerEvent(MouseMoveTrigger, player, EVENT_PLAYER_MOUSE_MOVE)
	end
	local FocusOnAnyUnit=false
	local effShield=AddSpecialEffect("Shield",OutPoint,OutPoint)
	local effAttack=AddSpecialEffect("Attack",OutPoint,OutPoint)
	local tShield = CreateTextTag()
	local tAttack = CreateTextTag()

	SetTextTagPos(tShield, OutPoint, OutPoint, 0)
	SetTextTagColor(tShield, 200, 200, 255, 200)
	SetTextTagFadepoint(tShield, 2)
	SetTextTagPermanent(tShield, false)
	BlzSetSpecialEffectScale(effShield,0.3)
	BlzSetSpecialEffectTimeScale(effShield,0)

	SetTextTagPos(tAttack, OutPoint, OutPoint, 0)
	SetTextTagColor(tAttack, 200, 200, 255, 200)
	SetTextTagFadepoint(tAttack, 2)
	SetTextTagPermanent(tAttack, false)
	BlzSetSpecialEffectScale(effAttack,0.3)
	BlzSetSpecialEffectTimeScale(effAttack,0)

	TriggerAddAction(MouseMoveTrigger, function()
		local FocusUnit=BlzGetMouseFocusUnit()
		local id = GetPlayerId(GetTriggerPlayer())

		if not FocusUnit then
			--print("нет фокуса")
			FocusOnAnyUnit=false
			BlzSetSpecialEffectPosition(effShield,OutPoint,OutPoint,0)
			BlzSetSpecialEffectPosition(effAttack,OutPoint,OutPoint,0)
			SetTextTagPos(tShield, OutPoint, OutPoint, 0)
			SetTextTagPos(tAttack, OutPoint, OutPoint, 0)
		end
		if FocusUnit then
			--print("фокус на юните "..GetUnitName(FocusUnit))
			FocusOnAnyUnit=true
			local x,y=GetUnitXY(FocusUnit)
			x=x+48
			y=y-64
			local z=GetTerrainZ(x,y)+25

			BlzSetSpecialEffectPosition(effShield,x,y,z)
			SetTextTagText(tShield, ""..math.floor(BlzGetUnitArmor(FocusUnit)), 0.024)
			SetTextTagPos(tShield, x+32,y-24,z)

			BlzSetSpecialEffectPosition(effAttack,x,y-48,z)
			SetTextTagText(tAttack, ""..math.floor(BlzGetUnitBaseDamage(FocusUnit,0)), 0.024)
			SetTextTagPos(tAttack, x+32,y-24-48,z)
		end
	end)
end

