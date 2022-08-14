--CREDIT TO 1F1D ON GAMEBANANA FOR MAKING THIS SCRIPT
function onCreatePost()

makeLuaText("nametext", songName, 0, 600, 17.5)
setTextSize('nametext', 20)
addLuaText("nametext")
setTextAlignment('nametext', 'left')

setProperty('timeBarBG.visible', false)
setProperty('timeBar.visible', false)
setProperty('timeTxt.visible', false)
setProperty('scoreTxt.visible', false)

makeLuaText("score", "Score:", 0, 700, 675)
setTextSize('score', 20);
addLuaText("score");
setTextAlignment('score', 'left')
setTextBorder("score", 0)
end

function onCreate()

makeLuaSprite('black', 'black', 297.5, 20)
makeLuaSprite('gray', 'gray', 304, 24.25)
makeLuaSprite('green', 'green', 304, 24.25)

addLuaSprite('black', true)
addLuaSprite('gray', true)
addLuaSprite('green', true)

setObjectCamera('black', 'hud')
setObjectCamera('gray', 'hud')
setObjectCamera('green', 'hud')

scaleObject('black', 2, .065)
scaleObject('gray', 1.965, .035)
scaleObject('green', 1.965, .035)

end

function onUpdate()
scaleObject('green', 1.965 * getProperty("songPercent"), .035)
setTextString("score", string.format('Score:%s', score))
end
