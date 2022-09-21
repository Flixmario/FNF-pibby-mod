function onCreate()
	-- background shit
	makeLuaSprite('gardenback', 'garden/none', -3300,-1600);
	setScrollFactor('gardenback', 0.7, 1);
       scaleObject('gardenback', 1.5, 1.5);

	makeLuaSprite('gardenback2', 'garden/gardenback2', -3200,-15);
	setScrollFactor('gardenback2', 1, 1);
         scaleObject('gardenback2', 1.5, 1.5);

	makeLuaSprite('gardenfront', 'garden/gardenfront', -4200,-1600);
	setScrollFactor('gardenfront', 1.5, 1.5);
       scaleObject('gardenfront', 1.5, 1.5);

	makeLuaSprite('gardenfront2', 'garden/gardenfront2', -2600,530);
	setScrollFactor('gardenfront2', 1, 1);
        scaleObject('gardenfront2', 1.5, 1.5);

       
        makeAnimatedLuaSprite('gardenanimated','garden/gardenanimated',-1200,-400)addAnimationByPrefix('gardenanimated','dance','zombot',25,true)
        objectPlayAnimation('gardenanimated','dance',true)
        setScrollFactor('gardenanimated', 1, 1);

        makeAnimatedLuaSprite('gardenanimated2','garden/gardenanimated2',-1800,-200)addAnimationByPrefix('gardenanimated2','dance','torso zombot',25,true)
        objectPlayAnimation('gardenanimated2','dance',true)
        setScrollFactor('gardenanimated2', 1, 1);

        makeAnimatedLuaSprite('gardenanimated3','garden/gardenanimated3',-1800,-600)addAnimationByPrefix('gardenanimated3','dance','hand_zombot',25,true)
        objectPlayAnimation('gardenanimated3','dance',true)
        setScrollFactor('gardenanimated3', 1, 1);

        makeAnimatedLuaSprite('gardensurvivor','gf_pibby',190, -100)addAnimationByPrefix('gardensurvivor','dance','gf_pibby',23,true)
        objectPlayAnimation('gardensurvivor','dance',true)
        setScrollFactor('gardensurvivor', 1, 1);

        makeAnimatedLuaSprite('gardensurvivor2','pibby_idle',290, 200)addAnimationByPrefix('gardensurvivor2','dance','pibby_idle',24,true)
        objectPlayAnimation('gardensurvivor2','dance',true)
        setScrollFactor('gardensurvivor2', 1, 1);

        makeAnimatedLuaSprite('gardenanimated5','garden/charactergarden5',-500,-600)addAnimationByPrefix('gardenanimated5','dance','torre',25,true)
        objectPlayAnimation('gardenanimated5','dance',true)
        setScrollFactor('gardenanimated5', 1, 1);
        makeAnimatedLuaSprite('gardenanimated4','garden/charactergarden4',-3000,300)addAnimationByPrefix('gardenanimated4','dance','charactersgardengreen',25,true)
        objectPlayAnimation('gardenanimated4','dance',true)
        setScrollFactor('gardenanimated4', 1, 1);
 scaleObject('gardenanimated4', 2, 2);



        
        addLuaSprite('gardenback', false);
        addLuaSprite('gardenanimated5', false);
        addLuaSprite('gardenanimated2', false);
        addLuaSprite('gardenanimated3', false);
        addLuaSprite('gardenback2', false);
        addLuaSprite('gardenfront', false);
        addLuaSprite('gardenanimated', false);
        addLuaSprite('gardensurvivor', false);
        addLuaSprite('gardensurvivor2', true);
        addLuaSprite('gardenfront2', true);
        addLuaSprite('gardenanimated4', true);




	
       
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
