function onCreate()
	--credits to: https://gamebanana.com/members/1908754 Unholywanderer04 for this
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Shootems' then --Check if the note on the chart is a Shootems Note
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Shootems_Assets'); --Change texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', -65);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', 35);
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', false); --Miss has penalties
			end
		end
	end
end

local huh = false
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'Shootems' then
		if songName == 'blammed-pibby' then
			makeLuaSprite('bullet', 'bulletPico_asset', 340, 587)
		else
			makeLuaSprite('bullet', 'bulletPico_asset', 340, 500)
		end
		addLuaSprite('bullet', true)
		doTweenX('itsComin', 'bullet', 4500, 0.4, 'linear')
		cameraFlash('game', '0xFFFFFF', 0.2, true)
		characterPlayAnim('boyfriend', 'dodge', true)
                characterPlayAnim('dad', 'attack', true)
		setProperty('boyfriend.specialAnim', true);

		end
end

function noteMiss(id, direction, noteType, isSustainNote)
	local shotCounter = 0

	if noteType == 'Shootems' then
		makeLuaSprite('bullet', 'bulletPico_asset', 340, 500)
		addLuaSprite('bullet', true)
		doTweenX('itsComin', 'bullet', 4000, 0.4, 'linear')
		cameraFlash('game', '0xFFFFFF', 0.2, true)
		playSound('HESGOTAGUN')

end
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'shot' then
		if keyPressed("space") then
			setProperty('health', getProperty('health')- 0.05)
		else
			setProperty('health', getProperty('health')- 0.131)
		end
	end
	if tag == 'shotsFired' then
		removeLuaSprite('bullet', false)
	end
end