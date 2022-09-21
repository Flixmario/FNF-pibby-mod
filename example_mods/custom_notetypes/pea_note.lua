function onCreate()
	-- credits to: https://gamebanana.com/members/1908754 Unholywanderer04 for this
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'pea_note' then --Check if the note on the chart is a Shootems Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'pea_note'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -80);
			--[[  	old note splash color
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -65); 
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 35);
			]]--	uncomment to change back
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

local gloopedAmount = 0
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'pea_note' then
		makeLuaSprite('proyectilepea', 'pea', -1600, 250)
		addLuaSprite('proyectilepea', true)
		doTweenX('watchOut', 'proyectilepea', 4000, 0.5, 'linear')
		runTimer('thrown', 1, 4)
		characterPlayAnim('boyfriend', 'dodge', true)
	end
end

function noteMiss(id, direction, noteType, isSustainNote)
	if noteType == 'pea_note'then
		characterPlayAnim('boyfriend', 'hurt', true);
                playSound('peasplash',1);
		cameraFlash('game', '0x00000', 5, true)
	end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'thrown' then
		removeLuaSprite('proyectilepea', false)
	end
end