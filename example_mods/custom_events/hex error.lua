function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'hex glitch/stageback', -590, -180);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	addLuaSprite('stageback', false);
	
	makeLuaSprite('stagefront', 'hex glitch/stagefront', -650, 600);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);
    addLuaSprite('stagefront', false);
	
	makeLuaSprite('stageback2', 'hex glitch/WIREStageBack', -650, -130);
	setLuaSpriteScrollFactor('stageback2', 0.9, 0.9);
	addLuaSprite('stageback2', false);
	
	setProperty('stageback2.visible', false)

end
function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '2' then
			setProperty('stageback.visible', false);
			setProperty('stagefront.visible', false);
			setProperty('stageback2.visible', true);
		
		end

		if value1 == '1' then
	                setProperty('stageback.visible', true);
			setProperty('stagefront.visible', true);
			setProperty('stageback2.visible', false);
		end
	end
end