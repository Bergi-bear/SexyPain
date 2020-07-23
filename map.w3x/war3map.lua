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
    u = BlzCreateUnitWithSkin(p, FourCC("ndqv"), -2087.4, -1356.0, 282.075, FourCC("ndqv"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -2351.6, -1641.8, 155.011, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("N000"), -2636.4, -1670.9, 24.710, FourCC("N000"))
    u = BlzCreateUnitWithSkin(p, FourCC("ndqt"), -2029.0, -1575.4, 280.277, FourCC("ndqt"))
    u = BlzCreateUnitWithSkin(p, FourCC("ndqp"), -2345.8, -1338.1, 302.885, FourCC("ndqp"))
    u = BlzCreateUnitWithSkin(p, FourCC("ndqs"), -1943.5, -1887.5, 318.932, FourCC("ndqs"))
    u = BlzCreateUnitWithSkin(p, FourCC("hkni"), -1959.8, -2480.4, 51.758, FourCC("hkni"))
end

function CreateUnitsForPlayer1()
    local p = Player(1)
    local u
    local unitID
    local t
    local life
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1934.5, -3067.2, 149.671, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1862.1, -3137.1, 0.593, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1739.7, -3162.9, 160.812, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1700.1, -3161.1, 353.210, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1684.8, -3107.1, 192.267, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1669.5, -3074.9, 137.806, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1700.5, -3049.9, 160.768, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1736.5, -3049.9, 152.912, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hpea"), -1771.8, -3097.7, 210.647, FourCC("hpea"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -975.3, -1833.3, 137.905, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -971.1, -1976.5, 321.668, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -909.6, -2084.0, 244.420, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -856.5, -2117.1, 210.768, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -899.6, -1992.5, 231.972, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -834.6, -1875.4, 77.950, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -886.3, -1824.8, 238.048, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -949.2, -1764.5, 224.260, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -895.3, -1889.3, 84.301, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -790.2, -1989.8, 267.141, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hfoo"), -775.8, -2094.2, 103.593, FourCC("hfoo"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1544.5, -237.2, 12.701, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1514.9, -450.6, 325.897, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1468.3, -541.1, 25.852, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1388.0, -560.8, 349.035, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1304.8, -496.3, 213.218, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1274.7, -401.5, 119.348, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1309.4, -300.4, 171.403, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1346.2, -237.2, 72.743, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1410.1, -212.0, 1.296, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1436.8, -273.1, 299.947, FourCC("hrif"))
    u = BlzCreateUnitWithSkin(p, FourCC("hrif"), -1414.4, -380.6, 118.414, FourCC("hrif"))
end

function CreatePlayerBuildings()
    CreateBuildingsForPlayer0()
end

function CreatePlayerUnits()
    CreateUnitsForPlayer0()
    CreateUnitsForPlayer1()
end

function CreateAllUnits()
    CreatePlayerBuildings()
    CreatePlayerUnits()
end

--CUSTOM_CODE
function OnPostDamage()
	local damage     = GetEventDamage() -- число урона
	local damageType = BlzGetEventDamageType()
	if damage < 1 then return end
	local target= GetTriggerUnit() -- тот кто получил урон
	local caster= GetEventDamageSource() -- тот кто нанёс урон

	if IsUnitType(target,UNIT_TYPE_HERO) then
		--print("Герой получил урон")
		local data=HERO[GetPlayerId(GetOwningPlayer(target))]
		if data.CustomAbilities[1].Ready then --Q
			--print("Есть способность уворот")
			if not data.FrameTable[9].OnCD then
				StarFrameCooldown(data.FrameTable[9],data.CustomAbilities[1].CD)
				data.EvasionState=true

				PhaseEvade(data)
			else
				AddSpeedToFrameCD(data.FrameTable[9],1)
			end
			if data.EvasionState then
				BlzSetEventDamage(0)
				FlyTextTagMiss(target,"Промах",GetOwningPlayer(target))
				if IsUnitEnemy(caster,GetOwningPlayer(target)) then
					FlyTextTagMiss(target,"Промах",GetOwningPlayer(caster))
				end
			end
		end
	end

	if IsUnitType(caster,UNIT_TYPE_HERO) then
		local mainData=HERO[GetPlayerId(GetOwningPlayer(caster))]
		local data=mainData.FrameTable[6] --пассивка крит
		if damage>=10 then
			if not data.OnCD then
				StarFrameCooldown(data,mainData.CustomAbilities[5].CD) --
				BlzFrameSetVisible(data.ReadyIndicator,false)
				--print("критический удар")
				FlyTextTagCriticalStrike(target,R2I(damage*5).."!",GetOwningPlayer(caster))
				BlzSetEventDamage(damage*5)
			else
				AddSpeedToFrameCD(data,1)
			end
		end
	end
		--любой получил урон

end


function InitDamage()
	local DamageTrigger = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		--TriggerRegisterPlayerUnitEvent(DamageTrigger, Player(i), EVENT_PLAYER_UNIT_DAMAGING) -- До вычета брони
		TriggerRegisterPlayerUnitEvent(DamageTrigger, Player(i), EVENT_PLAYER_UNIT_DAMAGED) -- После вычета брони
	end
	TriggerAddAction(DamageTrigger, OnPostDamage)
end



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
		--print("фокус юнит"..GetUnitName(FocusUnit))
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
	SetTextTagPermanent(tShield, true)
	BlzSetSpecialEffectScale(effShield,0.3)
	BlzSetSpecialEffectTimeScale(effShield,0)

	SetTextTagPos(tAttack, OutPoint, OutPoint, 0)
	SetTextTagColor(tAttack, 200, 200, 255, 200)
	SetTextTagFadepoint(tAttack, 2)
	SetTextTagPermanent(tAttack, true)
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

HeroID = FourCC("N000")
NextPoint=0.039
OutPoint=6000

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

		KeyRegistration() -- инициализация отлова нажатия клавиш
		InitSelectionRegister() -- инициализация выбора
		InitMouseMoveTrigger() -- Запуск отслеживания положения мыши
		InitDamage()
		InitHEROTable() -- Инициализация таблицы героев
		--InitSoundsA()--Создаём звуки
		--InitUnitDeath()-- инициализация смерти
		--CreateGlue()
		TimerStart(CreateTimer(), 0, false, function()
			InitMainFrameTable(HERO[0]) -- мульти создаётся здесь
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
	EnableDragSelect(false, false)
	if BlzLoadTOCFile("Main.toc") then
	else
		print("ошибка загрузки toc")
	end
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		HERO[i] = {
			pid = i,
			UnitHero = nil,
			IsInterface = false,
			IsMainHeroOnHit = false,
			EvasionState=false,
			FirePillarState=false,
			StartDrawing=false,
			DestroyDrawing=false,
			effDrawing=nil,
			DrawingTimer=nil,
			CustomAbilities = { -- статичные данные, но менять можно и муи
				[1] = {
					Ready = true,
					CD=10,
					Name="Фазовый сдвиг".." (|cffffcc00".."Пассивная".."|r)",
					Description="При получении урона герой смещается между пространствами и избегает этого урона а также любого последующего в течении 0.5 сек. Атаки по герою уменьшают перезарядку способности на 1 секунду",
					SizeTooltip=7,
				},
				[2] = {
					Ready = true,
					CD=15,
					Name="Огненный столб".." (|cffffcc00".."W ‡ ‡".."|r)",
					Description="Выпускает поток огня впереди себя",
					SizeTooltip=4,
				},
				[3] = {
					Ready = true,
					CD=0.1,
					Name="Поле кактусов".." (|cffffcc00".."E".."|r)",
					Description="Сажает кактусы в указанной точке, сажайте кактусы по 1 или удерживайте левую кнопку мыши зажатой, для массовм посадки. Способность имеет 10 зарядов, перезарядка заряда - 7 секунд ",
					MaxCharges=999,
					ManaCost=10,
					SizeTooltip=9,
				},
				[4] = {
					Ready = true,
					CD=7,
					Name="Массовое вытягивание жизни".." (|cffffcc00".."R".."|r)",
					Description="Отманиает у врагов жизни и передаёт их герою, герой неуязвим во время действия способности, пока испытывает нехватку здоровья и не может вытянуть больше здоровья чем у него недостаёт. Способность может быть отменена. Длительность: 5",
					ManaCost=50,
					SizeTooltip=10,
				},
				[5] = {
					Ready = true,
					CD=20,
					Name="Критический удар".." (|cffffcc00".."Пассивная".."|r)",
					Description="Когда способность готова, герой наносит увеличенный 5 кратный урон следующим любым источником урона, атаки с руки уменьшают перезарядку на 1 секунду",
					SizeTooltip=7,
				},
				[6] = {
					Ready = true,
					CD=20,
					Name="Движение".." (|cffffcc00".."ПКМ".."|r)",
					Description="Отдаёт юниту приказ движения в указанную точку, со скорость ".."|cffffcc00".."ms".."|r",
					SizeTooltip=5,
					Updatable=true
				},
				[7] = {
					Ready = true,
					CD=20,
					Name="Стоп".." (|cffffcc00".."S".."|r)",
					Description="Прерывает все текущие действия",
					SizeTooltip=4,
					Updatable=true
				},
				[8] = {
					Ready = true,
					CD=20,
					Name="Удерживать позицию".." (|cffffcc00".."H".."|r)",
					Description="Закрепляет текущую позицию как постоянную, но юнит может продолжать атаковать врагов в зоне дальности атаки ".."|cffffcc00".."ar".."|r",
					SizeTooltip=6,
					Updatable=true
				},
				[9] = {
					Ready = true,
					CD=20,
					Name="Атака".." (|cffffcc00".."A".."|r)",
					Description="Атакует указанное существо или первое существо, что попадётся на пути. Сила атаки: ap, Скорость атаки: as",
					SizeTooltip=6,
					Updatable=true
				},
				D = {},
				F = {}
			},
			FrameTable = {},
			ReleaseQ=false,
			ReleaseW=false,
			ReleaseE=false,
			ReleaseR=false,
			ReleaseLMB=false,
			ReleaseRMB=false,
			ReleaseESC=false,
			ReleaseTAB=false,
		}
	end
end


function InitMainFrameTable(data)
	--	local frames={}
	local k = 0
	local k2 = 1
	local greed = 0.0045
	for i = 1, 12 do -- заполнение таблицы пустышек
		data.FrameTable[i] = {
			SelfFrame = nil, -- Основной фрейм
			IconFrame = nil, -- Его иконка
			CdIndicatorFrame = nil, -- Фрейм перезарядки
			ToolTip=nil, -- фрейм подскизки, общий
			ChargesFrame=nil, -- фрейм зарядов
			ChargesFrameText=nil, --Число зарядов
			Number = i, -- номер фрейма 1-12 сверху вниз слева направо
			PosX = 0, -- координаты на сетке
			PosY = 0,
			OnCD = false, -- на кд
			CurrentCDTime = 0,  --время кд
			Timer = nil, --???
			PercentAmount = 0, -- фрейм показывающий число процентов для перезарядки
			OnPaused = false, -- кд на паузе
			Full = 0, --???
			CurrentCD = 0, -- Кд фрейма в момент его старта
			MouseOnFrame = false, -- мышка на кнопке
			HotKeyPos=0, -- номер фрейма по порядку QWER
			Charges=0, -- число зарядов
		}
		local data2 = data.FrameTable[i] --заполенеие ячеек, не трогать никогда
		k = k + 1
		if k == 5 then
			k = 1
			k2 = k2 + 1
		end
		data2.PosX = 0.637 + ((NextPoint + greed) * (k - 1))
		data2.PosY = 0.113 - ((NextPoint + greed) * (k2 - 1))
	end
	return data.FrameTable
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
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			data.ReleaseRMB = true
			if data.StartDrawing then
				DestroyEatingCactus(data,data.FrameTable[11],false)
				TimerStart(CreateTimer(), 0.001, false, function()
					if IssueImmediateOrder(data.UnitHero,"stop") then
						--print("stop?")
					end
				end)
				--data.DestroyDrawing=true
				--print("Нажал правую, отменяем маркер")
			end
		end
	end)
	local TrigDePressLMB = CreateTrigger()
	for i = 0, bj_MAX_PLAYER_SLOTS - 1 do
		TriggerRegisterPlayerEvent(TrigDePressLMB, Player(i), EVENT_PLAYER_MOUSE_UP)
	end

	TriggerAddAction(TrigDePressLMB, function()
		local pid = GetPlayerId(GetTriggerPlayer())
		local data = HERO[pid]
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_LEFT then

			data.ReleaseLMB = false
		end
		if BlzGetTriggerPlayerMouseButton() == MOUSE_BUTTON_TYPE_RIGHT then
			data.ReleaseRMB = false
		end
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
			--MarkCreatorQ(data)
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
			--print("кнопка W нажата, нужен огонь")
			--if not data.FrameTable[10].OnCD then --TODO реал реди
			if CustomAbilityIsReady(data,data.FrameTable[10]) then
				StarFrameCooldown(data.FrameTable[10],10)
				data.FirePillarState=true
				StartFirePillar(data)
			end
			--MarkCreatorW(data)
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
			if CustomAbilityIsReady(data,data.FrameTable[11]) and not data.StartDrawing then
				EatingCactus(data)
				data.StartDrawing=true
				data.DestroyDrawing=false
			end
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
			if CustomAbilityIsReady(data,data.FrameTable[12]) and not data.StartDrawing then
				--print("запуск высасывания черех хоткей")
				UnitUsedLifeStealAbility(data,data.FrameTable[12])
			end
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
		if not data.ReleaseESC then
			data.ReleaseESC = true
			if data.StartDrawing then
				DestroyEatingCactus(data,data.FrameTable[11],false)
			end
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
		data.ReleaseESC = false
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
				--CreateAbilityFrame(5)
				CreateAbilityFrame(data,9,"ReplaceableTextures\\PassiveButtons\\PASBTNEvasion", "passive",1)
				CreateAbilityFrame(data,10,"ReplaceableTextures\\CommandButtons\\BTNFireForTheCannon", "active",2)
				CreateAbilityFrame(data,11,"ReplaceableTextures\\CommandButtons\\BTNReplenishHealth", "active",3)
				CreateAbilityFrame(data,12,"ReplaceableTextures\\CommandButtons\\BTNLifeDrain", "active",4)
				CreateAbilityFrame(data,6,"ReplaceableTextures\\PassiveButtons\\PASBTNCriticalStrike", "passive",5)

				CreateAbilityFrame(data,1,"ReplaceableTextures\\CommandButtons\\btnmove", "active",6) --move
				CreateAbilityFrame(data,2,"ReplaceableTextures\\CommandButtons\\btnstop", "active",7)
				CreateAbilityFrame(data,3,"ReplaceableTextures\\CommandButtons\\btnholdposition", "active",8)
				CreateAbilityFrame(data,4,"ReplaceableTextures\\CommandButtons\\btnattack", "active",9)

				--CreateAbilityFrame(data,9,"ReplaceableTextures\\PassiveButtons\\PASBTNEvasion", "passive",1)
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
--- DateTime: 06.02.2020 12:47
---
function CreateAndForceBullet(hero, angle, speed, effectmodel, xs, ys, damage,maxDistance)
	local CollisionRange = 80
	if not damage then
		damage = 200
	end
	local xhero, yhero = GetUnitX(hero), GetUnitY(hero)
	local zhero = GetUnitZ(hero) + 60
	local bullet = AddSpecialEffect(effectmodel, xs, ys)
	local bam = nil--AddSpecialEffect("Abilities/Weapons/SteamTank/SteamTankImpact.mdl",xs,ys)
	local cloud = nil--AddSpecialEffect("Abilities/Weapons/SteamTank/SteamTankImpact.mdl",xs,ys)
	local CollisionEnemy = false
	local CollisisonDestr = false
	local DamagingUnit = nil
	if effectmodel == "Abilities\\Weapons\\FireBallMissile\\FireBallMissile" then
		--print("Пуля из мушкета капитана")
		BlzSetSpecialEffectScale(bullet, 2)
		--zhero = GetUnitZ(hero) + 120
	end
	BlzSetSpecialEffectScale(bam, 0.1)
	BlzSetSpecialEffectScale(cloud, 0.02)
	DestroyEffect(bam)
	DestroyEffect(cloud)
	BlzSetSpecialEffectZ(bullet, zhero)
	local angleCurrent = angle
	local heroCurrent = hero
	local dist = 0
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		dist = dist + speed
		local x, y, z = BlzGetLocalSpecialEffectX(bullet), BlzGetLocalSpecialEffectY(bullet), BlzGetLocalSpecialEffectZ(bullet)
		local zGround = GetTerrainZ(MoveX(x, speed * 2, angleCurrent), MoveY(y, speed * 2, angleCurrent))
		BlzSetSpecialEffectYaw(bullet, math.rad(angleCurrent))
		BlzSetSpecialEffectPosition(bullet, MoveX(x, speed, angleCurrent), MoveY(y, speed, angleCurrent), z - 2)
		--[[if GetUnitTypeId(heroCurrent) == FourCC('e009') then
			-- у горного великана тиника нет потери высоты
			BlzSetSpecialEffectPosition(bullet, MoveX(x, speed, angleCurrent), MoveY(y, speed, angleCurrent), z)
		else
			BlzSetSpecialEffectPosition(bullet, MoveX(x, speed, angleCurrent), MoveY(y, speed, angleCurrent), z - 2)
		end]]


		--BlzSetSpecialEffectPosition(cloud,MoveX(x,speed/3,angle),MoveY(y,speed/3,angle),z-2)
		SetFogStateRadius(GetOwningPlayer(heroCurrent), FOG_OF_WAR_VISIBLE, x, y, 400, true)-- Небольгая подсветка

		--local xbam,ybam=BlzGetLocalSpecialEffectX(bam),BlzGetLocalSpecialEffectY(bam)
		--BlzSetSpecialEffectPosition(bam,MoveX(xbam,2*data.CurrentSpeed,GetUnitFacing(hero)),MoveY(ybam,2*data.CurrentSpeed,GetUnitFacing(hero)),z-50)
		local ZBullet = BlzGetLocalSpecialEffectZ(bullet)
		--print("zGround ="..zGround.."z= "..z)
		--BlzSetSpecialEffectPosition(bam,MoveX(GetUnitX(hero),120,GetUnitFacing(hero)),MoveY(GetUnitY(hero),120,GetUnitFacing(hero)),z)
		CollisionEnemy, DamagingUnit = UnitDamageArea(heroCurrent, 0, x, y, CollisionRange, ZBullet)
		if GetUnitTypeId(DamagingUnit) == FourCC('e009') then
			--print("Есть пробитие")
			if effectmodel == Special then
				HealUnit(DamagingUnit, -200)
			end
			if effectmodel == stoneEffModel then
				HealUnit(DamagingUnit, -10)
			end
		end
		CollisisonDestr = PointContentDestructable(x, y, CollisionRange, false,0,hero)
		local PerepadZ = zGround - z
		if dist > maxDistance or CollisionEnemy or CollisisonDestr or IsUnitType(DamagingUnit, UNIT_TYPE_STRUCTURE) or PerepadZ > 20 then
			--or zGround+z>=-70+z --z<=147
			PointContentDestructable(x, y, CollisionRange, true,0,hero)
			--print(z)
			--print("Условие урона прошло для"..GetUnitName(DamagingUnit))
			local stunDuration=1
			--StunArea(hero,x,y,CollisionRange,stunDuration)
			UnitDamageArea(hero, damage, x, y, CollisionRange, ZBullet)
			if DamagingUnit  and IsUnitType(hero,UNIT_TYPE_HERO) then
				-- тут был показ урона
			end

			DestroyEffect(bullet)
			DestroyTimer(GetExpiredTimer())


			if not DamagingUnit then
				DestroyEffect(bullet)
				DestroyTimer(GetExpiredTimer())
			end
		end
	end)
end



---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 30.06.2020 12:49
---
function CustomAbilityIsReady(mainData,data)
	local isReady=false
	local hero= mainData.UnitHero

	if mainData.CustomAbilities[data.HotKeyPos].Ready -- список условий ограничивающих каст этой способности
			and not data.OnCD
			and UnitAlive(hero)
			--and GetUnitState(hero,UNIT_STATE_MANA)>=BlzGetUnitAbilityManaCost(hero,abiID,GetUnitAbilityLevel(hero,abiID)-1)
			and IsUnitSelected(hero,GetOwningPlayer(hero))
	then
		isReady=true
	end
	return isReady
end


---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 29.06.2020 23:06
---
cactusModel = "Doodads\\Barrens\\Plants\\Cactus\\Cactus" .. "" --0-9
function DestroyEatingCactus(mainData,data,WCD)
	mainData.StartDrawing=false
	local hero=mainData.UnitHero
	DestroyTimer(mainData.DrawingTimer)
	BlzSetSpecialEffectPosition(mainData.effDrawing, OutPoint, OutPoint, 0)
	DestroyEffect(mainData.effDrawing)
	mainData.effDrawing = nil

	--CreateCactus(mainData, x, y, r,curAngle)
	if WCD then
		--print("отмена с кд")
		--StarFrameCooldown(data,0)
		SelectUnitForPlayerSingle(hero,GetOwningPlayer(hero))
	else
	--	print("одиночный клик?")
	end
	EnableSelect(true,true)
	return WCD
end


function EatingCactus(mainData)
	--print("курсор превращается в кактус")
	local hero = mainData.UnitHero
	local lastX, lastY = GetPlayerMouseX[mainData.pid], GetPlayerMouseY[mainData.pid]
	local r = GetRandomInt(0, 9)

	mainData.effDrawing = AddSpecialEffect(cactusModel .. r, lastX, lastY)
	BlzSetSpecialEffectAlpha(mainData.effDrawing,60)
	BlzSetSpecialEffectYaw(mainData.effDrawing, math.rad(GetRandomReal(0, 360)))


	local lastDistance = 0
	local range=80
	local angleCast = AngleBetweenXY(GetUnitX(hero), GetUnitY(hero), GetPlayerMouseX[mainData.pid], GetPlayerMouseY[mainData.pid]) / bj_DEGTORAD
	local curAngle = angleCast
	local distance = DistanceBetweenXY(GetUnitX(hero), GetUnitY(hero), GetPlayerMouseX[mainData.pid], GetPlayerMouseY[mainData.pid])
	local cutDistance = distance
	local starDrawing=false
	local data=mainData.FrameTable[11]
	EnableSelect(false,false)
	SelectUnitForPlayerSingle(hero,GetOwningPlayer(hero))
	mainData.DrawingTimer=CreateTimer()


	TimerStart(mainData.DrawingTimer, TIMER_PERIOD, true, function()
		distance = DistanceBetweenXY(GetUnitX(hero), GetUnitY(hero), GetPlayerMouseX[mainData.pid], GetPlayerMouseY[mainData.pid])
		cutDistance = math.lerp(cutDistance, distance, TIMER_PERIOD * 16)
		angleCast = AngleBetweenXY(GetUnitX(hero), GetUnitY(hero), GetPlayerMouseX[mainData.pid], GetPlayerMouseY[mainData.pid]) / bj_DEGTORAD
		curAngle = lerpTheta(curAngle, angleCast, TIMER_PERIOD * 16)

		local xp, yp = GetPlayerMouseX[mainData.pid], GetPlayerMouseY[mainData.pid]
		local x, y = MoveXY(GetUnitX(hero), GetUnitY(hero), cutDistance, curAngle)
		local distanceMove = DistanceBetweenXY(xp, yp, lastX, lastY)

		if IsPointCanCreatedCactus(mainData,x,y)  then
			BlzSetSpecialEffectColor(mainData.effDrawing,255,255,255)
			BlzSetSpecialEffectAlpha(mainData.effDrawing,60)
		else
			BlzSetSpecialEffectColor(mainData.effDrawing,255,0,0)
			BlzSetSpecialEffectAlpha(mainData.effDrawing,128)
		end

		if mainData.ReleaseLMB  then-- кнопка хажата
			starDrawing=true
			lastDistance = lastDistance + distanceMove
		else
			if starDrawing or mainData.DestroyDrawing then
				if DestroyEatingCactus(mainData,data,true) then
					CreateCactus(mainData, x, y, r,curAngle)
				end

				return
			end
		end
		if lastDistance > range then
			DestroyEatingCactus(mainData,data,false)

			if CustomAbilityIsReady(mainData,data) then
				EatingCactus(mainData)
			end

			if lastDistance>range*2 then
				local int = R2I(lastDistance / range)
				for i = 0, int do
					local angle = AngleBetweenXY(lastX, lastY, xp, yp) / bj_DEGTORAD
					--print(angle)
					r = GetRandomInt(0, 9)
					local nx, ny = MoveXY(lastX, lastY, range * i, angle)
					--AddSpecialEffect(cactusModel..r,nx,ny)
					CreateCactus(mainData, nx, ny, r,angle)
					--print("рисуем недостающие кактусы "..i)
				end
			else
				CreateCactus(mainData, x, y, r,curAngle)
			end
		end
		lastX, lastY = x, y
		local z = GetTerrainZ(x, y)
		if mainData.effDrawing then
			BlzSetSpecialEffectPosition(mainData.effDrawing, x, y, z)
			BlzSetSpecialEffectYaw(mainData.effDrawing, math.rad(curAngle))
		end
	end)
end

function CreateCactus(mainData, x, y, r,angle)
	local eff=nil
	local timeLife = CreateTimer()
	local data=mainData.FrameTable[11]
	if data.Charges>0 then
		if IsPointCanCreatedCactus(mainData, x, y) then
			data.Charges=data.Charges-1
			eff = AddSpecialEffect(cactusModel .. r, x, y)
			BlzSetSpecialEffectYaw(eff, math.rad(angle))
		end
	else
		mainData.ReleaseLMB=false
		mainData.DestroyDrawing=true
		--print("Зарядов больше нет")
	end

	TimerStart(timeLife, TIMER_PERIOD, true, function()
		-- урон и отталкивание
		--Кактус пикает группу вокруг себя
		local e=nil
		GroupEnumUnitsInRange(perebor,x,y,80,nil)
		while true do
			e = FirstOfGroup(perebor)

			if e == nil then break end
			if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(mainData.UnitHero)) then
				local angleBU=AngleBetweenXY(x,y,GetUnitXY(e))/ bj_DEGTORAD
				if onForces[GetHandleId(e)] or onForces[GetHandleId(e)]==nil then
					--print("урон?")
					UnitDamageTarget( mainData.UnitHero, e, 20, true, false, ATTACK_TYPE_NORMAL, DAMAGE_TYPE_NORMAL, WEAPON_TYPE_WHOKNOWS )
				end
				UnitAddForceSimple(e,angleBU,30,180)
			end
			GroupRemoveUnit(perebor,e)
		end

	end)
	TimerStart(CreateTimer(), 10, false, function()
		DestroyTimer(GetExpiredTimer())
		DestroyTimer(timeLife)
		BlzSetSpecialEffectPosition(eff, OutPoint, OutPoint, 0)
		DestroyEffect(eff)
	end)
end

function IsPointCanCreatedCactus(mainData,x,y)
	return not (IsTerrainPathable(x, y,PATHING_TYPE_WALKABILITY)
			or not IsVisibleToPlayer(x, y,GetOwningPlayer(mainData.UnitHero))
			or DistanceBetweenXY(x,y,GetUnitXY(mainData.UnitHero))>=1000
	)
end
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


---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 26.06.2020 14:56
---
function StartFirePillar(data)
	local effModel="Abilities\\Weapons\\FireBallMissile\\FireBallMissile"
	local hero=data.UnitHero
	local angleCast = GetUnitFacing(hero)--AngleBetweenXY(GetUnitX(hero), GetUnitY(hero), GetPlayerMouseX[data.pid], GetPlayerMouseY[data.pid]) / bj_DEGTORAD
	local curAngle=angleCast

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		angleCast = AngleBetweenXY(GetUnitX(hero), GetUnitY(hero), GetPlayerMouseX[data.pid], GetPlayerMouseY[data.pid]) / bj_DEGTORAD
		curAngle = lerpTheta(curAngle, angleCast, TIMER_PERIOD * 8)
		--angle=GetUnitFacing(hero)
		if not data.FrameTable[10].OnCD then
			data.FirePillarState=false
		end

		if data.FirePillarState then
			local x,y=MoveXY(GetUnitX(hero),GetUnitY(hero),50,curAngle)
			CreateAndForceBullet(hero,curAngle,50,effModel,x,y,5,250)
		else
			DestroyTimer(GetExpiredTimer())
		end
		if not UnitAlive(hero) then -- и прочие услоия прерывания огнемёта
			DestroyTimer(GetExpiredTimer())
		end
	end)
end

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


---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 29.06.2020 16:21
---
function CreateAbilityToolTip(mainData,data)
	data.ToolTip=BlzCreateFrame("DemoBoxTooltip", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0)
	local size=mainData.CustomAbilities[data.HotKeyPos].SizeTooltip
	BlzFrameSetSize(data.ToolTip,0.29,0.012*size)
	--BlzFrameSetAbsPoint(data.ToolTip,FRAMEPOINT_CENTER,0.655,0.25)

	BlzFrameSetPoint(data.ToolTip, FRAMEPOINT_BOTTOM, BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), FRAMEPOINT_BOTTOM, 0.25, 0.16)

	local contaiter=BlzFrameGetChild(data.ToolTip,1)
	local title=BlzFrameGetChild(contaiter,0)
	local description=BlzFrameGetChild(contaiter,1)
	BlzFrameSetText(title,mainData.CustomAbilities[data.HotKeyPos].Name)
	BlzFrameSetText(description,mainData.CustomAbilities[data.HotKeyPos].Description)
	BlzFrameSetVisible(data.ToolTip,false)
	local k=0
	if mainData.CustomAbilities[data.HotKeyPos].ManaCost then
		BlzFrameSetText(title,mainData.CustomAbilities[data.HotKeyPos].Name.."\n    ".."|cffffff00"..mainData.CustomAbilities[data.HotKeyPos].ManaCost.."|r") -- |cffffff00TEXT|r
		--print("способность имеет ману")
		local res= BlzCreateFrameByType("BACKDROP", "Face",data.ToolTip, "", 0)
		BlzFrameSetTexture(res, "UI\\Widgets\\tooltips\\Human\\tooltipmanaicon", 0, true)
		BlzFrameSetSize(res, 0.01, 0.01)
		BlzFrameSetPoint(res, FRAMEPOINT_TOPLEFT, data.ToolTip, FRAMEPOINT_TOPLEFT, 0.005,-0.017)
		k=0.01
	end
	BlzFrameSetText(title,BlzFrameGetText(title).."\n ") --вставка сеператора
	local separator=BlzCreateFrameByType("BACKDROP", "Face",data.ToolTip, "", 0)
	BlzFrameSetTexture(separator, "UI\\Widgets\\tooltips\\Human\\horizontalseparator", 0, true)
	BlzFrameSetSize(separator, 0.28, 1/16*0.01)
	BlzFrameSetPoint(separator, FRAMEPOINT_TOPLEFT, data.ToolTip, FRAMEPOINT_TOPLEFT, 0.005,-0.02-k)
	--print(mainData.CustomAbilities[data.HotKeyPos].Name)
	--Динамическо обновление
	if mainData.CustomAbilities[data.HotKeyPos].Updatable then --Обновление текста в тултипах
		TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
			local NativeString=mainData.CustomAbilities[data.HotKeyPos].Description
			NativeString =string.gsub(NativeString,'ms',math.floor(GetUnitMoveSpeed(mainData.UnitHero)))
			NativeString =string.gsub(NativeString,'ar',math.floor(BlzGetUnitWeaponRealField(mainData.UnitHero,UNIT_WEAPON_RF_ATTACK_RANGE,0)))
			NativeString =string.gsub(NativeString,'ap',math.floor(BlzGetUnitBaseDamage(mainData.UnitHero,0)))
			NativeString =string.gsub(NativeString,'as',BlzGetUnitAttackCooldown(mainData.UnitHero,0))
			BlzFrameSetText(description,NativeString)
		end)
	end

end
function ShowAbilityTooltip (mainData,data,isShow)
	if isShow then
		if GetLocalPlayer()==Player(mainData.pid) then
			--print(mainData.CustomAbilities[data.HotKeyPos].Name.." Шоу тултип вызван")
			BlzFrameSetVisible(data.ToolTip,true)
		end
	end
	return isShow
end

function HideAllToolTips(mainData)
	--print("способности скрыты")
	for i=1,12 do
		local data=mainData.FrameTable[i]
	BlzFrameSetVisible(data.ToolTip,false)
	end
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
		BlzFrameSetSize(BlzGetFrameByName("CommandButton_"..i, 0),0.0001,0.0001) --убирает всё
		if i~=1 then
			if i~=2 then
				--BlzFrameSetSize(BlzGetFrameByName("CommandButton_"..i, 0),0.0001,0.0001) -- оставляет холд и стоп
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
--- DateTime: 04.07.2020 2:23
---
Force2DTable={}
function UnitAddForceVector2D(hero,speed,angle)
	if not Force2DTable[GetHandleId(hero)] then
		--	print("оглушен первый раз")
		Force2DTable[GetHandleId(hero)]={
			Time=0,
			Timer=nil
		}
	end
	local data=Force2DTable[GetHandleId(hero)]

	TimerStart(data.Timer, TIMER_PERIOD, true, function()

	end)
end

--Старый кастрированный вариант
onForces = {}
function UnitAddForceSimple(hero, angle, speed, distance)
	-- псевдо вектор использовать только для юнитов
	local currentdistance = 0
	if onForces[GetHandleId(hero)] == nil then
		onForces[GetHandleId(hero)] = true
	end
	if not IsUnitType(hero, UNIT_TYPE_STRUCTURE) and onForces[GetHandleId(hero)]  then
		onForces[GetHandleId(hero)]=false
		TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
			currentdistance = currentdistance + speed
			--print(currentdistance)
			local x, y = GetUnitX(hero), GetUnitY(hero)
			local newX, newY = MoveX(x, speed, angle), MoveY(y, speed, angle)

			SetUnitPositionSmooth(hero, newX, newY)

			if currentdistance >= distance then
				--or (data.OnWater and data.OnTorrent==false)
				--data.IsDisabled=false
				--data.OnWater=false
				DestroyTimer(GetExpiredTimer())
				onForces[GetHandleId(hero)]=true
				--print("stop cur="..currentdistance.." dist="..distance)
			end
		end)
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
		EndFrameCD(data)
	end
	local frameCount=1024
	data.PercentAmount=(0.05*frameCount)/cd
	data.Full=0
	data.CdIndicatorFrame=CreateCooldownIndicator(data)
	data.OnCD=true
	data.CurrentCDTime=cd
	data.CurrentCD=cd
	data.Timer=CreateTimer()
	TimerStart(data.Timer, 0.05, true, function()
		if not data.OnPaused then
			data.Full=data.Full+data.PercentAmount
			data.CurrentCDTime=data.CurrentCDTime-0.05
		end
		local textShowed=string.format("%02.1f",data.CurrentCDTime)
		if data.CurrentCDTime>=10 then
			textShowed=R2I(data.CurrentCDTime)
		end
		BlzFrameSetText(data.SelfFrame,textShowed)
		BlzFrameSetTexture(data.CdIndicatorFrame, "DDS512".."\\000"..Zero4(R2I(data.Full+data.PercentAmount)), 0, true)
		if data.Full>frameCount-1 then
			EndFrameCD(data)
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

function EndFrameCD(data)
	DestroyTimer(data.Timer)
	BlzFrameSetText(data.SelfFrame, "")
	data.Timer=nil
	BlzDestroyFrame(data.CdIndicatorFrame)
	data.Full=0
	data.OnCD=false
	if data.Number==6 then
		BlzFrameSetVisible(data.ReadyIndicator,true)
	end
end

function AddSpeedToFrameCD(data,sec)
	data.CurrentCDTime=data.CurrentCDTime-sec
	--10=2
	--20=1
	local k=1
	if data.CurrentCD==20 then
		k=1
	end
	if data.CurrentCD==10 then
		k=2
	end
	data.Full=data.Full+(k*sec*data.CurrentCD*data.PercentAmount)
	--print(data.Full)
end



function CreateAbilityFrame(mainData,pos,texture,type,HotKeyPos) -- позиция 1 - 12
	local data=mainData.FrameTable[pos]
	data.HotKeyPos=HotKeyPos -- выставление индекса
	CreateAbilityToolTip(mainData,data)-- создание тултипа
	if not texture then
		texture="ReplaceableTextures\\CommandButtons\\BTNSelectHeroOn"
	end

	data.SelfFrame = BlzCreateFrame("GlueWText", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0)
	data.IconFrame = BlzFrameGetChild(data.SelfFrame, 0)
	BlzFrameSetTexture(data.IconFrame, texture, 0, true)
	BlzFrameSetText(BlzFrameGetChild(data.SelfFrame, 2), "")
	BlzFrameSetAllPoints(data.IconFrame, data.SelfFrame)
	BlzFrameSetSize(data.SelfFrame,NextPoint,NextPoint)
	BlzFrameSetAbsPoint(data.SelfFrame,FRAMEPOINT_CENTER,data.PosX,data.PosY)

	--Индикатор готовности
	if data.Number==6 then
		data.ReadyIndicator = BlzCreateFrameByType("SPRITE", "justAName", data.SelfFrame, "WarCraftIIILogo", 0)
		BlzFrameSetPoint(data.ReadyIndicator , FRAMEPOINT_BOTTOMLEFT, data.SelfFrame, FRAMEPOINT_BOTTOMLEFT, 0.02, 0.02)
		BlzFrameSetSize(data.ReadyIndicator , 1., 1.)
		BlzFrameSetScale(data.ReadyIndicator , 1.)
		BlzFrameSetModel(data.ReadyIndicator , "SystemGeneric\\selecter3.mdx", 0)
		BlzFrameSetVisible(data.ReadyIndicator,true) -- TODO добавить локального игрока и где то есть ещё второе место такое же
	end

	--print(type)
	if type=="active" then
		--print("создана ативная кнопка")
		local  ClickTrig = CreateTrigger()
		BlzTriggerRegisterFrameEvent(ClickTrig, data.SelfFrame, FRAMEEVENT_CONTROL_CLICK)
		TriggerAddAction(ClickTrig, function ()
			--print("Нажата кнопка "..pos)
			BlzFrameSetEnable(BlzGetTriggerFrame(), false)
			BlzFrameSetEnable(BlzGetTriggerFrame(), true)
			if not data.OnCD then
				if pos==10 then --перезарядка огнемёта
					StarFrameCooldown(data,10)
					mainData.FirePillarState=true
					StartFirePillar(mainData)
				end
				if pos==11 then -- старт кактусов
					if CustomAbilityIsReady(mainData,data) and not mainData.StartDrawing then
						EatingCactus(mainData)
						mainData.StartDrawing=true
						mainData.DestroyDrawing=false
					end
				end
				if pos==12 then -- старт отсоса
					--StarFrameCooldown(data,12)
					--print("запускаем функция отсасывания")
					--StartLifeStealArea(mainData,data,500)
					UnitUsedLifeStealAbility(mainData,data)
				end --
			end
		end)
	end


	if mainData.CustomAbilities[HotKeyPos].MaxCharges then
		data.Charges=R2I(mainData.CustomAbilities[HotKeyPos].MaxCharges/2)
		--print(data.Charges)
		data.ChargesFrame= BlzCreateFrameByType("BACKDROP", "Face",data.SelfFrame, "", 0)
		data.ChargesFrameText = BlzCreateFrameByType("TEXT", "ButtonChargesText", data.ChargesFrame, "", 0)
		BlzFrameSetTexture(data.ChargesFrame, "UI\\Widgets\\Console\\Human\\CommandButton\\human-button-lvls-overlay", 0, true)
		BlzFrameSetSize(data.ChargesFrame, 0.02, 0.015)
		--BlzFrameSetAbsPoint(data.ChargesFrame, FRAMEPOINT_CENTER,0.4+0.02 , 0.6-0.02)
		BlzFrameSetPoint(data.ChargesFrame, FRAMEPOINT_BOTTOMRIGHT, data.SelfFrame, FRAMEPOINT_BOTTOMRIGHT, 0,0)
		BlzFrameSetText(data.ChargesFrameText, data.Charges)
		BlzFrameSetPoint(data.ChargesFrameText, FRAMEPOINT_CENTER, data.ChargesFrame, FRAMEPOINT_CENTER, 0.,0.)
		if HotKeyPos==3 then
			TimerStart(CreateTimer(), 1, true, function()
				if data.Charges<mainData.CustomAbilities[HotKeyPos].MaxCharges then
					data.Charges=data.Charges+1
				end
			end)
			TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
				BlzFrameSetText(data.ChargesFrameText, data.Charges)
				--print(GetHandleId(data.ChargesFrameText))
			end)

		end
	end

	local  TrigMOUSE_ENTER = CreateTrigger()
	BlzTriggerRegisterFrameEvent( TrigMOUSE_ENTER, data.SelfFrame, FRAMEEVENT_MOUSE_ENTER)
	TriggerAddAction( TrigMOUSE_ENTER, function ()
		--print("показать подсказку")
		ShowAbilityTooltip(mainData,data,true)
		data.MouseOnFrame=true
		local pid=GetPlayerId(GetTriggerPlayer())
		--print(GetUnitName())
		if data.Number==9 then--радиус для уворота
			CreateVisualMarkerRadius(data,250,HERO[pid].UnitHero)
		end
		if data.Number==10 then--радиус огнемёта
			CreateVisualMarkerRadius(data,800,HERO[pid].UnitHero,nil,nil,data.Number)
		end
		if data.Number==11 then--радиус сажания кустов
			CreateVisualMarkerRadius(data,2000,HERO[pid].UnitHero,nil,nil,data.Number)
		end
		if data.Number==12 then--радиус отсоса
			CreateVisualMarkerRadius(data,1000,HERO[pid].UnitHero,nil,nil,data.Number)
		end
	end)
	local  TrigMOUSE_LEAVE = CreateTrigger()
	BlzTriggerRegisterFrameEvent( TrigMOUSE_LEAVE, data.SelfFrame, FRAMEEVENT_MOUSE_LEAVE)
	TriggerAddAction( TrigMOUSE_LEAVE, function ()
		data.MouseOnFrame=false
		HideAllToolTips(mainData)
		--print("убрать подсказку")
	end)


end

function HideAllCustomAbility(data,isHide)
	--print("первый вызов")
	if isHide then
		for i=1,12 do
			BlzFrameSetVisible(data.FrameTable[i].SelfFrame,false)
		end
	else
		for i=1,12 do
			if GetLocalPlayer()==Player(data.pid) then
				BlzFrameSetVisible(data.FrameTable[i].SelfFrame,true)
			end
		end
	end
end

function CreateVisualMarkerRadius (data,radius,hero,x,y,number,timed)
	if hero then
		--print(GetUnitName(hero))
		--x,y=GetUnitXY(hero)
	end
	-- circle_fill
	local path="circ"
	path="replaceabletextures\\selection\\rangeindicator"
	if number==10 then
	--	path="circle_fill"
	end


	local CircleImage=CreateImage(path,radius,radius,radius,OutPoint,OutPoint,0,0,0,0,4)
	if timed then
		SetImageColor(CircleImage,255,0,0,255)
	end
	SetImageRenderAlways(CircleImage, true)
	ShowImage(CircleImage,false)

	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		local xs,ys=GetUnitX(hero)-radius/2-16,GetUnitY(hero)-radius/2-16
		SetImagePosition(CircleImage,xs,ys,0)
		if GetLocalPlayer()==GetOwningPlayer(hero) then
			ShowImage(CircleImage,true)
		end

		if timed then
			timed=timed-TIMER_PERIOD
			if timed <=1 then
				SetImageColor(CircleImage,255,0,0,math.floor(255*timed))
			end
		end

		if (not data.MouseOnFrame and not timed) or (timed and timed<=0) then
			SetImagePosition(CircleImage,OutPoint,OutPoint,0)
			DestroyImage(CircleImage)
			DestroyTimer(GetExpiredTimer())
		end
	end)
	return CircleImage
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 03.06.2020 17:02
---

do --Инициализация
	TimerStart(CreateTimer(), 0.1, false, function()
		if BlzLoadTOCFile("SystemGeneric\\Main.toc") then
		--print("успех")
		else
			print("провал загрузки ток кастом бара")
		end
	end)
end


function CallingBarCreate(u,cd,text,support)
	if not text then text="Подготовка" end
	local amount=5/cd
	local full=0
	local bar = BlzCreateSimpleFrame("MyFakeBar", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0)
	BlzFrameSetAbsPoint(bar, FRAMEPOINT_CENTER, 0.4, 0.15)
	BlzFrameSetValue(bar, 0)
	BlzFrameSetTextSizeLimit(bar,1)
	if support then
		CallingBarCancelCond(u,bar)
	end

	if GetLocalPlayer()==GetOwningPlayer(u)  then -- хп бары, они точно в норме
		BlzFrameSetVisible(bar,true)
	end
	BlzFrameSetTexture(bar, "Replaceabletextures\\Teamcolor\\Teamcolor0"..(GetConvertedPlayerId(GetOwningPlayer(u))-1)..".blp", 0, true)
	BlzFrameSetTexture(BlzGetFrameByName("MyFakeBarBorder",0),"SystemGeneric\\MyBarBorder.blp", 0, true)
	BlzFrameSetText(BlzGetFrameByName("MyFakeBarTitle",0), text)--‡ Сердце ™ щит

	local lefttext = BlzGetFrameByName("MyFakeBarLeftText",0)
	local righttext = BlzGetFrameByName("MyFakeBarRightText",0)
	BlzFrameSetText(lefttext, "")
	BlzFrameSetText(righttext, "")

	TimerStart(CreateTimer(), 0.05, true, function()
		full=full+amount
		BlzFrameSetValue(bar, full)
		--print(full)
		if full>=100 then
			--print("destroy")
			CallingBarDestroy(u,bar)
		end
	end)
	return bar
end

function CallingBarDestroy(hero,bar)
	if UnitRemoveAbility(hero,FourCC('Abun')) then
	--	print("атака возвращена")
	end
	DestroyTimer(GetExpiredTimer())
	BlzDestroyFrame(bar)
end

function CallingBarCancelCond(hero,bar) --
	UnitAddAbility(hero,FourCC('Abun'))
	TimerStart(CreateTimer(), TIMER_PERIOD, true, function()
		CallingBarIsStatus(hero,bar)
	end)
end

function CallingBarIsStatus(hero,bar)
	local status=true
	if IsUnitPaused(hero) or GetUnitCurrentOrder(hero)~=String2OrderIdBJ("")	then -- указываем списо условий который могус сбить каст
		if GetUnitCurrentOrder(hero)~=String2OrderIdBJ("doom") then
			--print(OrderId2String(GetUnitCurrentOrder(hero)))
			--print("Каст сбит")
			UnitRemoveAbility(hero,FourCC('Abun'))
			CallingBarDestroy(hero,bar)
			status=false
		end
	end
	return status
end
---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 10.01.2020 23:44
---
---@param x real
---@param y real
---@return boolean
function InMapXY(x, y)
	return x > GetRectMinX(bj_mapInitialPlayableArea) and x < GetRectMaxX(bj_mapInitialPlayableArea) and y > GetRectMinY(bj_mapInitialPlayableArea) and y < GetRectMaxY(bj_mapInitialPlayableArea)
end

---@param x real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetX(x, distance, angle)
	return x + distance * math.cos(angle)
end

---@param y real
---@param distance real
---@param angle real radian
---@return real
function GetPolarOffsetY(y, distance, angle)
	return y + distance * math.sin(angle)
end

---@param x real
---@param distance real
---@param angle real degrees
---@return real
function MoveX(x, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD)
end

---@param y real
---@param distance real
---@param angle real degrees
---@return real
function MoveY(y, distance, angle)
	return y + distance * math.sin(angle * bj_DEGTORAD)
end


local GetTerrainZ_location = Location(0, 0)
---@param x real
---@param y real
---@return real
function GetTerrainZ(x, y)
	MoveLocation(GetTerrainZ_location, x, y)
	return GetLocationZ(GetTerrainZ_location)
end

---@param target unit
---@return real
function GetUnitZ(target)
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	return GetLocationZ(GetTerrainZ_location) + GetUnitFlyHeight(target)
end

---@param target unit
---@param z real
function SetUnitZ(target, z)
	UnitAddAbility(target, FourCC('Aave'))
	UnitRemoveAbility(target, FourCC('Aave'))
	MoveLocation(GetTerrainZ_location, GetUnitX(target), GetUnitY(target))
	SetUnitFlyHeight(target, z - GetLocationZ(GetTerrainZ_location), 0)
end

---@param h real максимальная высота в прыжке на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки, где следует взять высоту по параболе
---@return real
function ParabolaZ (h, d, x)
	return (4 * h / d) * (d - x) * (x / d)
end

---@param zs real начальная высота высота одного края дуги
---@param ze real конечная высота высота другого края дуги
---@param h real максимальная высота на середине расстояния (x = d / 2)
---@param d real общее расстояние до цели
---@param x real расстояние от исходной цели до точки
---@return real
function GetParabolaZ(zs, ze, h, d, x)
	return (2 * (zs + ze - 2 * h) * (x / d - 1) + (ze - zs)) * (x / d) + zs
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real
function DistanceBetweenXY(xa, ya, xb, yb)
	local dx = xb - xa
	local dy = yb - ya
	return math.sqrt(dx * dx + dy * dy)
end

---@param xa real
---@param ya real
---@param za real
---@param xb real
---@param yb real
---@param zb real
---@return real
function DistanceBetweenXYZ(xa, ya, za, xb, yb, zb)
	local dx = xb - xa
	local dy = yb - ya
	local dz = zb - za
	return math.sqrt(dx * dx + dy * dy + dz * dz)
end

---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@return real radian
function AngleBetweenXY(xa, ya, xb, yb)
	return math.atan(yb - ya, xb - xa)
end

---@param a real radian
---@param b real radian
---@return real radian
function AngleDifference(a, b)
	local c---@type real
	local d---@type real
	if a > b then
		c = a - b
		d = b - a + 2 * math.pi
	else
		c = b - a
		d = a - b + 2 * math.pi
	end
	return c > d and d or c
end

--@author https://xgm.guru/p/wc3/warden-math
---@param a real degrees
---@param b real degrees
---@return real degrees
function AngleDifferenceDeg(a, b)
	a, b = math.abs(a, 360), math.abs(b, 360)
	local x---@type real
	if (a > b) then
		a, b = b, a
	end
	x = b - 360
	if (b - a > a - x) then
		b = x
	end
	return math.abs(a - b)
end

-- Находит длину перпендикуляра от отрезка, заданного xa, ya, xb, yb к точке, заданной xc, yc
--@author https://xgm.guru/p/wc3/perpendicular
---@param xa real
---@param ya real
---@param xb real
---@param yb real
---@param xc real
---@param yc real
---@return real
function Perpendicular (xa, ya, xb, yb, xc, yc)
	return math.sqrt((xa - xc) * (xa - xc) + (ya - yc) * (ya - yc)) * math.sin(math.atan(yc - ya, xc - xa) - math.atan(yb - ya, xb - xa))
end

--@Hate https://xgm.guru/p/wc3/241479
---@param source unit
---@param x real
---@param y real
function SetUnitPositionSmooth(source, x, y)
	local last_x = GetUnitX(source)
	local last_y = GetUnitY(source)
	local bx
	local by
	--print("Смус выполнена")
	SetUnitPosition(source, x, y)
	if (RAbsBJ(GetUnitX(source) - x) > 0.5) or (RAbsBJ(GetUnitY(source) - y) > 0.5) then
		SetUnitPosition(source, x, last_y)
		bx = RAbsBJ(GetUnitX(source) - x) <= 0.5
		SetUnitPosition(source, last_x, y)
		by = RAbsBJ(GetUnitY(source) - y) <= 0.5

		---
		local dx=math.abs(x-last_x)
		if dx>=100 then
			print("Телепорт бак в функции Smooth"..dx )
		end
		---
		if bx then
			SetUnitPosition(source, x, last_y)
		elseif by then
			SetUnitPosition(source, last_x, y)
		else
			SetUnitPosition(source, last_x, last_y)
		end
	end
end

--Bergi
function GetUnitXY(unit)
	return GetUnitX(unit),GetUnitY(unit)
end

function MoveXY(x,y, distance, angle)
	return x + distance * math.cos(angle * bj_DEGTORAD),y + distance * math.sin(angle * bj_DEGTORAD)
end

function UnitCollisionOFF(unit)
	UnitAddAbility(unit,FourCC('A000'))
	IssueImmediateOrder(unit,"windwalk")
end

function AngleBetweenUnits(caster,target)
	local yb,ya,xb,xa=GetUnitY(target),GetUnitY(caster),GetUnitX(target),GetUnitX(caster)
	return Atan2BJ(yb - ya, xb - xa)
end

function math.clamp (inb, low, high) --
	return math.min( math.max(inb, low ), high )
end

function math.lerp(a, b, t)
	return a + (b - a) * t
end

function repeatN(t, m)
	return math.clamp(t - math.floor(t / m) * m, 0, m)
end

function lerpTheta(a, b, t)
	local dt = repeatN(b - a, 360)
	if dt>180 then	dt=dt-360 end
	return math.lerp(a, a + dt, t)
end

function AngleBetweenXYZ(x1, y1,z1, x2, y2,z2)
	local a=x1*x2+y1*y2+z1*z2
	local b=math.sqrt(x1*x1+y1*y1+z1*z1)
	local c=math.sqrt(x2*x2+y2*y2+z2*z2)
	return math.acos(a/(b*c))
end

-- функия принадлежности точки сектора
-- x1, x2 - координаты проверяемой точки
-- x2, y2 - координаты вершины сектора
-- orientation - ориентация сектора в мировых координатах
-- width - уголовой размер сектора в градусах
-- radius - окружности которой принадлежит сектор
function IsPointInSector(x1,y1,x2,y2,orientation,width,radius)
	local lenght=DistanceBetweenXY(x1,y1,x2,y2)
	local angle=Acos(Cos(orientation*bj_DEGTORAD)*(x1-x2)/lenght+Sin(orientation*bj_DEGTORAD)*(y1-y2)/lenght )*bj_RADTODEG
	return angle<=width and lenght<=radius
end

function GetParabolaPitch(height,distance,i, speed)
	local f = function(x)
		return ParabolaZ(height, distance, x)
	end

	local df = function(x)
		return ParabolaZDerivative(height, distance, x)
	end
	local x0 = i * speed
	local x1 = x0 + speed
	local thisZ = f(x0)
	local someTangentZ = Tangent(f, df, x0, x1)
	return math.atan(someTangentZ - thisZ, x1 - x0)--pitch
end
function Tangent(f, df, x0, x)
	return f(x0) + df(x0) * (x - x0)
end
function ParabolaZDerivative(height, distance, x)
	return 4 * height / distance / distance * (distance - 2 * x)
end

---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 27.05.2020 13:57
---
stuneff="Abilities\\Spells\\Human\\Thunderclap\\ThunderclapTarget"
StunSystem={}
function StunUnit(hero,dur)
	if not StunSystem[GetHandleId(hero)] then
		--	print("оглушен первый раз")
		StunSystem[GetHandleId(hero)]={
			Time=0,
			Eff=nil,
			Timer=nil
		}
	end
	local data=StunSystem[GetHandleId(hero)]

	local curdur=0
	if data.Time==0 then
		data.Timer=CreateTimer()
		--print("старт нового таймера")
		data.Eff=AddSpecialEffectTarget(stuneff,hero,"overhead")
		BlzPauseUnitEx(hero,true)
	end

	if data.Time<dur  then
		--print("Более сильное оглушение, обновляем время")
		data.Time=dur
	else
		--print("Есть более долгое оглушение")
		return
	end

	TimerStart(data.Timer, 0.1, true, function()
		curdur=curdur+0.1
		data.Time=data.Time-0.1
		--print(data.Time)
		if curdur>=dur or not UnitAlive(hero) then
			--print("Вышел из стана")
			BlzPauseUnitEx(hero,false)
			--BlzPauseUnitEx(hero,false)
			DestroyTimer(GetExpiredTimer())
			data.Time=0
			DestroyEffect(data.Eff)
			data.Timer=nil
		end
	end)
end

function StunArea(hero,x,y,range,duration)
	local e=nil
	--DestroyEffect(AddSpecialEffect("Abilities\\Spells\\Human\\Thunderclap\\ThunderClapCaster",x,y))
	GroupEnumUnitsInRange(perebor,x,y,range,nil)
	while true do
		e = FirstOfGroup(perebor)

		if e == nil then break end
		if UnitAlive(e) and IsUnitEnemy(e,GetOwningPlayer(hero)) and not IsUnitType(e,UNIT_TYPE_STRUCTURE) then
			--	print(GetUnitName(e))
			StunUnit(e,duration)
		end
		GroupRemoveUnit(perebor,e)
	end
end
---@param text string
---@param textSize real
---@param x real
---@param y real
---@param z real
---@param red integer
---@param green integer
---@param blue integer
---@param alpha integer
---@param xvel real
---@param yvel real
---@param fadepoint real
---@param lifespan real
---@param player player
---@return texttag
function FlyTextTag(text, textSize, x, y, z, red, green, blue, alpha, xvel, yvel, fadepoint, lifespan, player)
	local t = CreateTextTag()
	SetTextTagText(t, text, textSize)
	SetTextTagPos(t, x, y, z)
	SetTextTagColor(t, red, green, blue, alpha)
	SetTextTagVelocity(t, xvel, yvel)
	SetTextTagFadepoint(t, fadepoint)
	SetTextTagLifespan(t, lifespan)
	SetTextTagPermanent(t, false)
	if player ~= nil then
		SetTextTagVisibility(t, player == GetLocalPlayer())
	end
	return t
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagGoldBounty(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target) - 16, GetWidgetY(target), 0, 255, 220, 0, 255, 0, 0.03, 2, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagLumberBounty(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target) - 16, GetWidgetY(target), 0, 0, 200, 80, 255, 0, 0.03, 2, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagMiss(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 255, 0, 0, 255, 0, 0.03, 1, 3, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagCriticalStrike(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 255, 0, 0, 255, 0, 0.04, 2, 5, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagManaBurn(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 82, 82, 255, 255, 0, 0.04, 2, 5, player)
end

---@param target widget
---@param text string
---@param player player
---@return texttag
function FlyTextTagShadowStrike(target, text, player)
	return FlyTextTag(text, 0.024, GetWidgetX(target), GetWidgetY(target), 0, 160, 255, 0, 255, 0, 0.04, 2, 5, player)
end

function FlyTextTagHealXY(x,y, text, player)
	return FlyTextTag(text, 0.024, x, y, 150, 88, 250, 13, 255, 0, 0.03, 1, 3, player)
end

function FlyTextTagShieldXY(x,y, text, player)--™
	local xr=GetRandomReal(-0.05,0,05)
	return FlyTextTag(""..text, 0.018, x, y, 150, 128, 128, 128, 255, xr, 0.03, 1, 3, player)
end
do
	Vector = {}
	Vector.__index = Vector
end


function Vector:new(x, y, z)
	local v = {x = x, y = y, z = z}
	setmetatable(v, self)
	return v
end

function Vector:copy()
	return Vector:new(self.x, self.y, self.z)
end

function Vector:dot(other)
	return self.x * other.x + self.y * other.y + self.z * other.z
end

function Vector:length()
	return math.sqrt(self.x * self.x + self.y * self.y + self.z * self.z)
end

function Vector:length2d()
	return math.sqrt(self.x * self.x + self.y * self.y)
end

function Vector:__mul(num)
	return Vector:new(self.x * num, self.y * num, self.z * num)
end

function Vector:__div(num)
	return Vector:new(self.x / num, self.y / num, self.z / num)
end

function Vector:__div(num)
	return Vector:new(self.x / num, self.y / num, self.z / num)
end

function Vector:normalize(clone)
	if clone then
		return self / self:length()
	end
	local l = self:length()
	self.x = self.x / l
	self.y = self.y / l
	self.z = self.z / l
	return self
end

function Vector:angleBetween(other)
	return math.acos(self:dot(other) / other:length() / self:length())
end

function Vector:yaw()
	return math.atan(self.y, self.x)
end

function Vector:pitch()
	return math.atan(self.z, self:length2d())
end

function CreateEffectLighting3D(x1, y1, z1, x2, y2, z2, step, effModel,length)
	local vector = Vector:new(x2 - x1, y2 - y1, z2 - z1)
	local normalized = vector:normalize(true)
	local chainCount = math.floor(vector:length() / step)
	local pitch = vector:pitch()
	local yaw = vector:yaw()
	local eff = {}
	if not length then
		length=chainCount
	end
	if length <1 then
		print("ОШИБКА, СЛИШКОМ МАЛО ЭЛЕМЕНТОВ МЕЖДУ ТОЧКАМИ, ЗАДАЙТЕ ЧИСЛО ВРУЧНУЮ length")
		length=100
	end
	for i = 1, length do
		if i<=chainCount then
			eff[i] = AddSpecialEffect(effModel, 0, 0)
			local v = normalized * (step * i)
			BlzSetSpecialEffectPosition(eff[i], x1 + v.x, y1 + v.y, z1 + v.z)
			BlzSetSpecialEffectPitch(eff[i], -pitch)
			BlzSetSpecialEffectYaw(eff[i], yaw)
		else
			eff[i] = AddSpecialEffect(effModel, OutPoint, OutPoint)
		end
	end
	return eff
end

function MoveEffectLighting3D(x1, y1, z1, x2, y2, z2, step, eff,length,isUnit)
	local vector = Vector:new(x2 - x1, y2 - y1, z2 - z1)
	local normalized = vector:normalize(true)
	local chainCount = math.floor(vector:length() / step)
	local pitch = vector:pitch()
	local yaw = vector:yaw()
	if not length then
		length=#eff
	end
	if isUnit then
		pitch=pitch-math.rad(90)
	end

	for i = 1, length do
		local v = normalized * (step * i)
		if i<=chainCount then
			local z = z1 + v.z
			--print(z)
			BlzSetSpecialEffectPosition(eff[i], x1 + v.x, y1 + v.y, z)
			BlzSetSpecialEffectPitch(eff[i], -pitch)
			BlzSetSpecialEffectYaw(eff[i], yaw)

			if true then --эффет перетекания

			end
		else
			--print("молния удалена")
			BlzSetSpecialEffectPosition(eff[i], OutPoint, OutPoint, 0)
		end

	end
	return pitch
end

function DestroyEffectLighting3D(eff)
	for i = 1, #eff do
		BlzSetSpecialEffectPosition(eff[i], OutPoint, OutPoint, 0)
		DestroyEffect(eff[i])
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

