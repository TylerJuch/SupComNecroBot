local oldPosition1=1
local oldPosition2=1
local oldPosition3=1

function RespawnUnit(blueprint, army, position)
  if (oldPosition1 ~= pos1
    or oldPosition2 ~= pos2
    or oldPosition3 ~= pos3) then
    CreateUnitHPR(blueprint, army, position[1], position[2], position[3], 0, 0, 0)
  end
end
