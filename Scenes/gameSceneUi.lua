local hud = {}
local inventory = {}

function hud.new(uiStack) 
  local self = {}
  function self:hasKeyboardControl() 
    return false 
  end

  function self:hasMouseControl() 
    return false
  end

  function self:update()
  end

  function self:draw()
    love.graphics.print( "Press 'i' for inventory", 22, 88 )
  end

  function self:keypressed(key)
    if key == "i" then
      table.insert( uiStack, inventory.new(uiStack))
    end
  end

  function self:keyreleased(key)
  end

  return self
end

function inventory.new(uiStack) 
  local self = {}
  function self:hasKeyboardControl() 
    return true 
  end

  function self:hasMouseControl() 
    return true
  end

  function self:update()
  end

  function self:draw()
    love.graphics.print( "Inventory: on", 22, 100 )
  end

  function self:keypressed(key)
    if key == "i" then
      table.remove(uiStack)
    end
  end

  function self:keyreleased(key)
  end

  return self
end

local root = hud
return root