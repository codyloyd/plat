local class = require("lib/middleclass")
local GameScene = require("Scenes/gameScene")

local Caves = class("Caves", GameScene)

function Caves:initialize(changeSceneCallback, gameState)
  GameScene.initialize(self, changeSceneCallback, gameState, "map/caves.lua")
end

return Caves