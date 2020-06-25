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
		BlzFrameSetText(text,string.format("%%02.1f",data.CurrentCDTime))
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
