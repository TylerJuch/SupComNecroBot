local oldPosition1=1
local oldPosition2=1
local oldPosition3=1

function RespawnUnit (blueprint, army, pos1, pos2, pos3)
  if (oldPosition1 ~= pos1
    or oldPosition2 ~= pos2
    or oldPosition3 ~= pos3) then
    CreateUnitHPR(blueprint, army, pos1, pos2, pos3, 0, 0, 0)
  end
end
