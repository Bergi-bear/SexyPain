function InitGlobals()
end

function CreateBuildingsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("htow"), -2368.0, -1920.0, 270.000, FourCC("htow"))
end

function CreateUnitsForPlayer0()
    local p = Player(0)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("N000"), -2524.1, -1620.6, 224.436, FourCC("N000"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -2351.6, -1641.8, 155.011, FourCC("hpea"))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer0()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreatePlayerUnits()
end

--CUSTOM_CODE
function UnitDamageArea(u,damage,x,y,range,ZDamageSource,EffectModel)
	local isdamage=false
	local e=nil
	local hero=nil
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)
		if e == nil then break end
		if UnitAlive(e) and UnitAlive(u) and IsUnitEnemy(e,GetOwningPlayer(u))  and true then --and IsUnitZCollision(e,ZDamageSource)  -- момент урона
			--print("вызов проблемной функции "..GetPlayerName(GetOwningPlayer(u)).." "..GetUnitName(u).." "..damage)
			if EffectModel~=nil then
				--print("эффект"..EffectModel)
				local DE=AddSpecialEffect(EffectModel,GetUnitX(e),GetUnitY(e))
				BlzSetSpecialEffectZ(DE,ZDamageSource)
				DestroyEffect(DE)
			end
			UnitDamageTarget( u, e, damage, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
			--print("урон прошёл для "..GetUnitName(e))
			isdamage=true
			hero=e
		end
		GroupRemoveUnit(perebor,e)
	end
	--DestroyGroup(mperebor)
	--mperebor=nil
	if PointContentDestructable(x,y,range,true,1+damage/4,u) then	isdamage=true	end
	return isdamage, hero
end




GlobalRect=Rect(0,0,0,0)
function PointContentDestructable (x,y,range,iskill,damage,hero)
	local content=false
	local unitZ=GetUnitZ(hero)
	if range==nil then range=80 end
	if iskill==nil then iskill=false end
	--print(GetUnitName(hero))
	SetRect(GlobalRect, x - range, y - range, x + range, y +range)
	EnumDestructablesInRect(GlobalRect,nil,function ()
		local d=GetEnumDestructable()
		if GetDestructableLife(d)>0 and unitZ<=GetTerrainZ(x,y)+50 then
			content=true

			if iskill then
				if not IsDestructableInvulnerable(d) then
					SetDestructableLife(d,GetDestructableLife(d)-damage)
				end


				if GetDestructableLife(d)>=1 then
					SetDestructableAnimation(d,"Stand Hit")
				else

				end




			end
		else
		end
	end)
	return content
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 16.01.2020 23:40
---

GetPlayerMouseX = {}
GetPlayerMouseY = {}
function InitMouseMoveTrigger()
	local MouseMoveTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		local player = Player(i)
		--if GetPlayerSlotState(player) == PLAYER_SLOT_STATE_PLAYING and GetPlayerController(player) == MAP_CONTROL_USER then
		TriggerRegisterPlayerEvent(MouseMoveTrigger, player, EVENT_PLAYER_MOUSE_MOVE)
		GetPlayerMouseX[i] = 0
		GetPlayerMouseY[i] = 0
		--end
	end
	TriggerAddAction(MouseMoveTrigger, function()
		--print("ismove")
		--print("x="..BlzGetTriggerPlayerMouseX().." y="..BlzGetTriggerPlayerMouseY())
		local FocusUnit=BlzGetMouseFocusUnit()
		local id = GetPlayerId(GetTriggerPlayer())
		if FocusUnit==HERO[id].UnitHero then
			if not HERO[id].IsMainHeroOnHit then
			--	print("Херо он фокус")
			end
			HERO[id].IsMainHeroOnHit=true
		else
			if HERO[id].IsMainHeroOnHit then
				--print("потеря фокуса")
			end
			HERO[id].IsMainHeroOnHit=false
		end
		if BlzGetTriggerPlayerMouseX() ~= 0 then
		GetPlayerMouseX[id] = BlzGetTriggerPlayerMouseX()
		GetPlayerMouseY[id] = BlzGetTriggerPlayerMouseY()
		end
	end)
end



HeroID = FourCC("N000")
NextPoint=0.039

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 22:05
--
---Глобалки
TIMER_PERIOD = 0.03125
HERO = {}
do
	local InitGlobalsOrigin = InitGlobals
	function InitGlobals()
		InitGlobalsOrigin()
		perebor = CreateGroup() --1 едиснвенная глобальная группа на всю игру, никакие Destroy Привет гуишники
		--InitSpellTrigger() -- Инициализация функции кастов
		InitHEROTable() -- Инициализация таблицы героев
		KeyRegistration() -- инициализация отлова нажатия клавиш
		InitSelectionRegister() -- инициализация выбора
		InitMouseMoveTrigger() -- Запуск отслеживания положения мыши

		--InitSoundsA()--Создаём звуки
		--InitUnitDeath()-- инициализация смерти
		--CreateGlue()
		TimerStart(CreateTimer(), 0, false, function()
			--Test12FrameAbility()-- фреймы
			InitMainFrameTable()
		end)
	end

end

do
	-- Автоочистка таймеров
	local DestroyTimer_Original = DestroyTimer
	function DestroyTimer(whichTimer)
		PauseTimer(whichTimer)
		DestroyTimer_Original(whichTimer)
	end

end

function InitHEROTable()
	EnableDragSelect(false,false)

	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		HERO[i] = {
			pid = i,
			UnitHero = nil,
			IsInterface=false,
			IsMainHeroOnHit=false,
		}
	end
end


FrameTable={}
function InitMainFrameTable()
	--	local frames={}
	local k=0
	local k2=1
	local greed=0.0045
	for i=1,12 do
		FrameTable[i]={
			SelfFrame=nil, -- Основной фрейм
			IconFrame=nil, -- Его иконка
			CdIndicatorFrame=nil, -- Фрейм перезарядки
			Number=i,
			PosX=0,
			PosY=0,
			OnCD=false,
			CurrentCDTime=0,
			Timer=nil,
			PercentAmount=0,
			OnPaused=false,
			Full=0,
			CurrentCD=0,
		}
		local data=FrameTable[i]
		k=k+1

		if k==5 then
			k=1
			k2=k2+1
		end
		data.PosX=0.637+((NextPoint+greed)*(k-1))
		data.PosY=0.113-((NextPoint+greed)*(k2-1))
	end
	return FrameTable
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 20.05.2020 0:33
---

function KeyRegistration()


	-----------------------------------------------------------------LMB and Any Mouse
	local TrigPressLMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerEvent(TrigPressLMB, Player(i), EVENT_PLAYER_MOUSE_DOWN)
	end
	TriggerAddAction(TrigPressLMB, function()
		--print("any")
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.MarkIsActivated = false
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then
			--это леваый клик всё внутри LMB
			data.ReleaseLMB = true
			if data.IsMainHeroOnHit then
				--print("123")
				if not data.IsInterface and data.UnitHero then
				--	print("SetInterfaceToQuinOfPaint".." через более быстрый выбор")
					--print(111)
					ChangeInterfaceToQuin(data)
					data.IsInterface=true
				end
			end
		end
	end)
	local TrigDePressLMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerEvent(TrigDePressLMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end

	TriggerAddAction(TrigDePressLMB, function()
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then
			local pid = GetPlayerId(GetTriggerPlayer())
			local data = HERO[pid]
			data.ReleaseLMB = false
		end
	end)

	-----------------------------------------------------------------OSKEY_W --в это карте это якорь
	local gg_trg_EventUpW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpW, Player(i), OSKEY_W, 0, true)

	end
	TriggerAddAction(gg_trg_EventUpW, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseW then
			data.ReleaseW = true
			MarkCreatorW(data)
		end
	end)
	local TrigDepressW = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressW, Player(i), OSKEY_W, 0, false)
	end
	TriggerAddAction(TrigDepressW, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseW = false
	end)
	-----------------------------------------------------------------OSKEY_Q
	local gg_trg_EventUpQ = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpQ, Player(i), OSKEY_Q, 0, true)
	end
	TriggerAddAction(gg_trg_EventUpQ, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseQ then
			data.ReleaseQ = true
			--data.MarkIsActivated=false
			--print("Q is Pressed Mark Creation")
			MarkCreatorQ(data)
		end
	end)
	local TrigDepressQ = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressQ, Player(i), OSKEY_Q, 0, false)
	end
	TriggerAddAction(TrigDepressQ, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseQ = false
	end)
	-----------------------------------------------------------------OSKEY_E
	local gg_trg_EventUpE = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpE, Player(i), OSKEY_E, 0, true)
	end
	TriggerAddAction(gg_trg_EventUpE, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseE then
			data.ReleaseE = true
			--data.MarkIsActivated=false
			--print("Q is Pressed Mark Creation")
			MarkCreatorE(data)
		end
	end)
	local TrigDepressE = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressE, Player(i), OSKEY_E, 0, false)
	end
	TriggerAddAction(TrigDepressE, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseE = false
	end)
	-----------------------------------------------------------------OSKEY_R
	local gg_trg_EventUpR = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpR, Player(i), OSKEY_R, 0, true)
	end
	TriggerAddAction(gg_trg_EventUpR, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseR then
			data.ReleaseR = true
			--data.MarkIsActivated=false
			--print("Q is Pressed Mark Creation")
			MarkCreatorR(data)
		end
	end)
	local TrigDepressR = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressR, Player(i), OSKEY_R, 0, false)
	end
	TriggerAddAction(TrigDepressR, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseR = false
	end)

	-----------------------------------------------------------------OSKEY_ESC
	local gg_trg_EventUpESC = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpESC, Player(i), OSKEY_ESCAPE, 0, true)
	end
	TriggerAddAction(gg_trg_EventUpESC, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if not data.ReleaseE then
			data.ReleaseE = true
			--data.MarkIsActivated=false
			--print("Q is Pressed Mark Creation")
			data.MarkIsActivated = false
		end
	end)
	local TrigDepressESC = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressESC, Player(i), OSKEY_ESCAPE, 0, false)
	end
	TriggerAddAction(TrigDepressESC, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseE = false
	end)
	-----------------------------------------------------------------OSKEY_TAB
	local gg_trg_EventUpTAB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(gg_trg_EventUpTAB, Player(i), OSKEY_TAB, 0, true)
	end
	TriggerAddAction(gg_trg_EventUpTAB, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		local u = GetMainSelectedUnit(GetSelectedUnitIndex())
		if u==data.UnitHero then
			--print(222)
			ChangeInterfaceToQuin(data)
		else
			--print("юнит не выбран через TAB")
			--if not data.IsMainHeroOnHit then
				ResetInterfaceToDefault(data)
		--	end
		end



		if not data.ReleaseTAB then
			data.ReleaseTAB = true
			--data.MarkIsActivated=false
			--print("Q is Pressed Mark Creation")
			data.MarkIsActivated = false
		end
	end)
	local TrigDepressTAB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		BlzTriggerRegisterPlayerKeyEvent(TrigDepressESC, Player(i), OSKEY_TAB, 0, false)
	end
	TriggerAddAction(TrigDepressESC, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		data.ReleaseTAB = false
	end)
end-- do not copyend
------------------------------------------------------------------------------------------- EVENT_PLAYER_UNIT_SELECTED
function InitSelectionRegister()
	local this = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerUnitEvent(this, Player(i), EVENT_PLAYER_UNIT_SELECTED, nil)
	end
	TriggerAddAction(this, function()
		local hero = GetTriggerUnit()
		local data = HERO[GetPlayerId(GetTriggerPlayer())]

		if IsUnitType(hero, UNIT_TYPE_HERO) and GetOwningPlayer(hero) == GetTriggerPlayer() and GetUnitTypeId(hero) == HeroID then
			if not data.UnitHero then --первый выбор героя
				data.UnitHero = hero
				CreateAbilityFrame(5)
				CreateAbilityFrame(8)
				TimerStart(CreateTimer(), 0.01, true, function()
					local u = GetMainSelectedUnit(GetSelectedUnitIndex())
					if u==data.UnitHero then
						--print(333)
						ChangeInterfaceToQuin(data)
					else
						--print("юнит не выбран")
						if not data.IsMainHeroOnHit then
							ResetInterfaceToDefault(data)
						end
					end
				end)
			end
			if not data.IsInterface then
				--print("SetInterfaceToQuinOfPaint")
				--print(444)
				ChangeInterfaceToQuin(data)
				data.IsInterface=true
			end
		else
			--print("ResetInterfaceToDefault")
			ResetInterfaceToDefault(data)
			data.IsInterface=false
		end


	end)
end


---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.05.2020 23:15
---
local realTimerStart = TimerStart
TimerStart = function(timer, duration, repeating, callback)
	local pcallback = function()
		if callback == nil then return end
		local status, err = pcall(callback)
		if not status then
			print(err)
		end
	end
	realTimerStart(timer, duration, repeating, pcallback)
end

local realTriggerAddAction = TriggerAddAction
TriggerAddAction = function(trig, callback)
	local pcallback = function()
		local status, err = pcall(callback)
		if not status then
			print(err)
		end
	end
	realTriggerAddAction(trig, pcallback)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 23.06.2020 13:25
---
do
	--by Tasyen
	-- returns the local current main selected unit, using it in a sync gamestate relevant manner breaks the game.
	function GetMainSelectedUnitEx()
		return GetMainSelectedUnit(GetSelectedUnitIndex())
	end


	local containerFrame
	local frames = {}
	local group
	local units = {}
	local filter = Filter(function()
		local unit = GetFilterUnit()
		local prio = BlzGetUnitRealField(unit, UNIT_RF_PRIORITY)
		local found = false
		-- compare the current unit with allready found, to place it in the right slot
		for index, value in ipairs(units) do
			-- higher prio than this take it's slot
			if BlzGetUnitRealField(value, UNIT_RF_PRIORITY) < prio then
				table.insert(units, index, unit)
				found = true
				break
				-- equal prio and better colisions Value
			elseif BlzGetUnitRealField(value, UNIT_RF_PRIORITY) == prio and GetUnitOrderValue(value) > GetUnitOrderValue(unit) then
				table.insert( units, index, unit)
				found = true
				break
			end
		end
		-- not found add it at the end
		if not found then
			table.insert(units, unit)
		end

		unit = nil
		return false
	end)


	function GetSelectedUnitIndex()
		-- local player is in group selection?
		if BlzFrameIsVisible(containerFrame) then
			-- find the first visible yellow Background Frame
			for int = 0, #frames do
				if BlzFrameIsVisible(frames[int]) then
					return int
				end
			end
		end

		return nil
	end

	function GetUnitOrderValue(unit)
		--heroes use the handleId
		if IsUnitType(unit, UNIT_TYPE_HERO) then
			return GetHandleId(unit)
		else
			--units use unitCode
			return GetUnitTypeId(unit)
		end
	end


	function GetMainSelectedUnit(index)
		if index then
			GroupEnumUnitsSelected(group, GetLocalPlayer(), filter)
			local unit = units[index + 1]
			--clear table
			repeat until not table.remove(units)
			return unit
		else
			GroupEnumUnitsSelected(group, GetLocalPlayer(), nil)
			return FirstOfGroup(group)
		end
	end

	--init
	TimerStart(CreateTimer(), 0, false, function()
		local console = BlzGetFrameByName("ConsoleUI", 0)
		local bottomUI = BlzFrameGetChild(console, 1)
		local groupframe = BlzFrameGetChild(bottomUI, 5)
		--globals
		containerFrame = BlzFrameGetChild(groupframe, 0)
		group = CreateGroup()
		-- give this frames a handleId
		for int = 0, BlzFrameGetChildrenCount(containerFrame) - 1 do
			local buttonContainer = BlzFrameGetChild(containerFrame, int)
			frames[int] = BlzFrameGetChild(buttonContainer, 0)
		end
		DestroyTimer(GetExpiredTimer())
	end)
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 06.06.2020 0:43
---
function ChangeInterfaceToQuin(data)
	Hide10Buttons()
	--print(1111)
	HideAllCustomAbility(data,false)
	BlzFrameSetScale(BlzFrameGetChild(BlzGetFrameByName("ConsoleUI",0),5), 0.001)
	--print("кнопки скрыты")
	--BlzFrameSetVisible(BlzGetFrameByName("ConsoleUIBackdrop", 0), false)-- черная рамка, нажл пробовать с ней
end

function Hide10Buttons(data)
	for i =0,11 do
		if i~=1 then
			if i~=2 then
				--BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), false)
				BlzFrameSetSize(BlzGetFrameByName("CommandButton_"..i, 0),0.0001,0.0001)
			end
		end

	end
end


function ResetInterfaceToDefault(data)
	--print("кнопки отображены")
	HideAllCustomAbility(data,true)
	for i =0,11 do
		BlzFrameSetSize(BlzGetFrameByName("CommandButton_"..i, 0),NextPoint,NextPoint)
		--BlzFrameSetVisible(BlzGetFrameByName("CommandButton_"..i, 0), true)
	end
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 24.06.2020 13:08
---
function CreateCooldownIndicator(data)
	local cd= BlzCreateFrameByType("BACKDROP", "Face", data.SelfFrame, "", 0)
	BlzFrameSetTexture(cd, "DDS512".."\\0000000", 0, true)
	BlzFrameSetAlpha(cd,128)
	BlzFrameSetSize(cd, NextPoint, NextPoint)
	BlzFrameSetAbsPoint(cd, FRAMEPOINT_CENTER,data.PosX,data.PosY)
	return cd
end

function StarFrameCooldown(data,cd)
	if data.Timer then
	--	print("сборс КД если фрейм уже был в кд")
		DestroyTimer(data.Timer)
		data.Timer=nil
		BlzDestroyFrame(data.CdIndicatorFrame)
		data.Full=0
		data.OnCD=false
	end
	local frameCount=1024
	data.PercentAmount=(0.05*frameCount)/cd
	--print((0.05*frameCount)/cd)
	data.Full=0
	data.CdIndicatorFrame=CreateCooldownIndicator(data)
	local text = BlzCreateFrameByType("TEXT", "ButtonChargesText", data.CdIndicatorFrame, "", 0)
	data.OnCD=true
	BlzFrameSetPoint(text, FRAMEPOINT_CENTER, data.CdIndicatorFrame, FRAMEPOINT_CENTER, 0.,0.)
	BlzFrameSetScale(text,1.5)
	BlzFrameSetAlpha(text,255)
	data.CurrentCDTime=cd
	data.CurrentCD=cd
	data.Timer=CreateTimer()
	TimerStart(data.Timer, 0.05, true, function()
		if not data.OnPaused then
			data.Full=data.Full+data.PercentAmount
			data.CurrentCDTime=data.CurrentCDTime-0.05
		end
		BlzFrameSetText(text,string.format("%02.1f",data.CurrentCDTime))
		BlzFrameSetTexture(data.CdIndicatorFrame, "DDS512".."\\000"..Zero4(R2I(data.Full+data.PercentAmount)), 0, true)
		if data.Full>frameCount-1 then
			DestroyTimer(data.Timer)
			data.Timer=nil
			BlzDestroyFrame(data.CdIndicatorFrame)
			data.Full=0
			data.OnCD=false
		end
	end)
end

function Zero4(s)
	local ns=""
	if string.len(s)==1 then
		ns="000"..s
	elseif string.len(s)==2 then
		ns="00"..s
	elseif string.len(s)==3 then
		ns="0"..s
	else
		ns=s
	end
	return ns
end

function PauseFrameCD(data,isPaused)  --true - пауза, false - продолжить
	if isPaused then
		data.OnPaused=true
	else
		data.OnPaused=false
	end
end

function AddSpeedToFrameCD(data,sec)
	data.CurrentCDTime=data.CurrentCDTime-sec
	data.Full=data.Full+(2*sec*data.CurrentCD*data.PercentAmount)
end



function CreateAbilityFrame(pos,texture) -- позиция 1 - 12
	local data=FrameTable[pos]
	if not texture then
		texture="ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn"
	end

	data.SelfFrame = BlzCreateFrameByType("GLUETEXTBUTTON", "MyButton", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), "ScriptDialogButton", 0)
	data.IconFrame = BlzCreateFrameByType("BACKDROP", "FaceButtonIcon", data.SelfFrame, "", 0)

	BlzFrameSetAllPoints(data.IconFrame, data.SelfFrame)
	BlzFrameSetTexture(data.IconFrame, texture, 0, true)
	BlzFrameSetSize(data.SelfFrame,NextPoint,NextPoint)
	BlzFrameSetAbsPoint(data.SelfFrame,FRAMEPOINT_CENTER,data.PosX,data.PosY)
	BlzFrameSetText(data.SelfFrame,"TEST")

	local  this = CreateTrigger()
	BlzTriggerRegisterFrameEvent(this, data.SelfFrame, FRAMEEVENT_CONTROL_CLICK)
	TriggerAddAction(this, function ()
		--print("Нажата кнопка "..pos)
		if not data.OnCD then
			StarFrameCooldown(data,10)
		else
			--PauseFrameCD(data,true)
			--AddSpeedToFrameCD(data,0.5)
			--print("Способность ещё не перезарядилась, подождите "..data.CurrentCDTime.." сек.")
		end
	end)
end

function HideAllCustomAbility(data,isHide)
	--print("первый вызов")
	if isHide then
		for i=1,12 do
			BlzFrameSetVisible(FrameTable[i].SelfFrame,false)
		end
	else
		for i=1,12 do
			if GetLocalPlayer()==Player(data.pid) then
				BlzFrameSetVisible(FrameTable[i].SelfFrame,true)
			end
		end
	end
end

--CUSTOM_CODE
function InitCustomPlayerSlots()
    SetPlayerStartLocation(Player(0), 0)
    SetPlayerColor(Player(0), ConvertPlayerColor(0))
    SetPlayerRacePreference(Player(0), RACE_PREF_HUMAN)
    SetPlayerRaceSelectable(Player(0), true)
    SetPlayerController(Player(0), MAP_CONTROL_USER)
end

function InitCustomTeams()
    SetPlayerTeam(Player(0), 0)
end

function main()
    SetCameraBounds(-3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), -3328.0 + GetCameraMargin(CAMERA_MARGIN_LEFT), 3072.0 - GetCameraMargin(CAMERA_MARGIN_TOP), 3328.0 - GetCameraMargin(CAMERA_MARGIN_RIGHT), -3584.0 + GetCameraMargin(CAMERA_MARGIN_BOTTOM))
    SetDayNightModels("Environment\\DNC\\DNCLordaeron\\DNCLordaeronTerrain\\DNCLordaeronTerrain.mdl", "Environment\\DNC\\DNCLordaeron\\DNCLordaeronUnit\\DNCLordaeronUnit.mdl")
    NewSoundEnvironment("Default")
    SetAmbientDaySound("VillageDay")
    SetAmbientNightSound("VillageNight")
    SetMapMusic("Music", true, 0)
    CreateAllUnits()
    InitBlizzard()
    InitGlobals()
end

function config()
    SetMapName("TRIGSTR_003")
    SetMapDescription("TRIGSTR_005")
    SetPlayers(1)
    SetTeams(1)
    SetGamePlacement(MAP_PLACEMENT_USE_MAP_SETTINGS)
    DefineStartLocation(0, -2304.0, -1984.0)
    InitCustomPlayerSlots()
    SetPlayerSlotAvailable(Player(0), MAP_CONTROL_USER)
    InitGenericPlayerSlots()
end

