local class = require("lib/middleclass")
local Scene = require("Scenes/Scene")

local StartScene = class("StartScene", Scene)

function StartScene:initialize(changeSceneCallback)
  Scene.initialize(self, changeSceneCallback)
end

function StartScene:draw()
  love.graphics.print( "Press 'enter' to go", 22, 88 )
end

function StartScene:keypressed(key)
  if key == "return" then
    changeScene("caves")
  end
end

return StartScene