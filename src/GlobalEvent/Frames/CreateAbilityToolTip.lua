---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Bergi.
--- DateTime: 29.06.2020 16:21
---
function CreateAbilityToolTip(data)
	local TT=BlzCreateFrame("DemoBoxTooltip", BlzGetOriginFrame(ORIGIN_FRAME_GAME_UI, 0), 0, 0)
	BlzFrameSetSize(TT,0.29,0.1)
	BlzFrameSetAbsPoint(TT,FRAMEPOINT_CENTER,0.655,0.3)
	local contaiter=BlzFrameGetChild(TT,1)
	local title=BlzFrameGetChild(contaiter,0)
	local description=BlzFrameGetChild(contaiter,1)
	BlzFrameSetText(title,"Фазовый сдвиг")
	BlzFrameSetText(description,"При получении урона герой смещается между пространствами и избегает этого урона а также любого последующего в течении 0.5 сек. Атаки по герою уменьшают перезарядку способности на 1 секунду")

end
function ShowAbilityTooltip (data,isShow)
	return isShow
end
