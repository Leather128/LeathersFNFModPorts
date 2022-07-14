local allowCountdown = false
local stops = 0
local endstops = 0
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue

	if not allowCountdown and isStoryMode and not seenCutscene then
		
		triggerEvent('Change Character','bf','bf-car')
		triggerEvent('Change Character','bf','bf')
		setProperty('inCutscene', true);
		if stops == 0 then
			
makeAnimatedLuaSprite('whit','cuttinDeezeBalls',-400,-100)
addAnimationByPrefix('whit','crazy','Whitty Ballistic Cutscene',24,false)
objectPlayAnimation('whit','crazy',true)
addLuaSprite('whit',true)
			setProperty('dad.visible',false)
			setProperty('camGame.zoom',1.2)
			cameraShake('game',0.001,2)
			doTweenZoom('www','camGame',1.4,2,'linear')
			doTweenAngle('wwwrty','camGame',3,2,'linear')
			setProperty('camFollowPos.x',600)
			setProperty('camFollowPos.y',300)
			runTimer('kfin',10.1)
			runTimer('mthrow',87/24)
			runTimer('mslam',86/24)
			runTimer('yyy',80/24)
			runTimer('solja',128/24)
			runTimer('rumble',123/24)
			runTimer('stopfx',135/24)
			runTimer('23',155/24)
			runTimer('toe',158/24)
			runTimer('flashhh',2+(158/24))
			runTimer('mbreak',52/24)
			playSound('windLmao')
    			objectPlayAnimation('stage','BallisticBackgroundStart',false);
		end

		if stops == 1 then
setProperty('camGame._fxFadeAlpha', 0);
			cameraFlash('game','FFFFFF',0.8)
    			objectPlayAnimation('stage','BallisticBackground',false);
			setProperty('dad.visible',true)
			setProperty('whit.visible',false)
			runTimer('startDialogue', 0.8);
			allowCountdown = true;
		end
	stops  = stops + 1
		return Function_Stop;
	end
	return Function_Continue;
end

function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue','rumb');
	end
	if tag == 'kfin' then
		startCountdown()
	end
	if tag == '22' then
	end
	if tag == '23' then
			doTweenZoom('www','camGame',1,0.1,'circIn')
			doTweenAngle('wwwrty','camGame',-3,0.1,'circIn')
	end
	if tag == 'mthrow' then
			playSound('micThrow')
	end
	if tag == 'mslam' then
			doTweenY('wwfwGG','camFollowPos',350,0.3,'circInOut')
			playSound('slammin')
	end
	if tag == 'mbreak' then
			playSound('micBreak')
			cameraShake('game',0.004,0.2)
			doTweenZoom('www','camGame',1.5,0.4,'circIn')
	end
	if tag == 'yyy' then
			doTweenAngle('wwwrgfgty','camGame',0,0.1,'circIn')
			doTweenY('wwwhGG','camFollowPos',250,0.3,'circInOut')
			
	end
	if tag == 'solja' then
    			objectPlayAnimation('stage','BallisticBackgroundGo',false);
			playSound('souljaboyCrank')
			cameraShake('game',0.01,0.2)
	end
	if tag == 'rumble' then
			doTweenY('wwwGG','camFollowPos',300,1.4,'circIn')
			playSound('rumb')
	end
	if tag == 'toe' then
			playSound('ouchMyToe')
			cameraShake('game',0.05,3.5)
			doTweenZoom('wwwrr','camGame',0.9,3.5,'sineOut')
			doTweenAngle('wwwrgfgty','camGame',0,0.1,'circIn')
	end
	if tag == 'flashhh' then
			cameraFade('game','FFFFFF',1)
	end
	if tag == 'endshit' then
            setProperty('camHUD._fxFadeAlpha', 0);
            cameraFlash('hud','000000',1)
			makeLuaSprite('endcock','jabaited')
            addLuaSprite('endcock',true)
            setObjectCamera('endcock','camHUD')
	end

end
function onEndSong()

        endstops = endstops + 1
        if isStoryMode then
            if endstops == 1 then
                
                
			     runTimer('endshit',1)
			    cameraFade('hud','000000',1)
                
                return Function_Stop;
                
            end
        end
         return Function_Continue;

end
function onUpdatePost()
    
   
    if endstops == 1 and getProperty('endingSong') then
       
      if keyJustPressed('accept') then endSong() end
        
    end
    
    
end
-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end


function onCreatePost()
if not lowQuality then
addLuaScript('epicScripts/infishake')


addLuaScript('epicScripts/cam')
end
end
    