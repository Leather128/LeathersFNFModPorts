local allowCountdown = false
function onStartCountdown()
	-- Block the first countdown and start a timer of 0.8 seconds to play the dialogue

setStrumVisibilty(0,false)
setStrumVisibilty(1,false)
setStrumVisibilty(2,false)
setStrumVisibilty(3,false)
setStrumVisibilty(4,false)
setStrumVisibilty(5,false)
setStrumVisibilty(6,false)
setStrumVisibilty(7,false)
	if not allowCountdown and isStoryMode and not seenCutscene then
		setProperty('inCutscene', true);
		runTimer('startDialogue', 0.8);
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onCreatePost()


setStrumVisibilty(0,false)
setStrumVisibilty(1,false)
setStrumVisibilty(2,false)
setStrumVisibilty(3,false)
setStrumVisibilty(4,false)
setStrumVisibilty(5,false)
setStrumVisibilty(6,false)
setStrumVisibilty(7,false)

end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'startDialogue' then -- Timer completed, play dialogue
		startDialogue('dialogue');
	end
end

-- Dialogue (When a dialogue is finished, it calls startCountdown again)
function onNextDialogue(count)
	-- triggered when the next dialogue line starts, 'line' starts with 1
end

function onSkipDialogue(count)
	-- triggered when you press Enter and skip a dialogue line that was still being typed, dialogue line starts with 1
end

function setStrumVisibilty(v1,vis)
		strum = v1
		strumset = 'opponentStrums'

		if strum > 3 then
			strumset = 'playerStrums'
		end
		
		strum = v1 % 4

		setPropertyFromGroup(strumset,strum,'visible',vis)
end