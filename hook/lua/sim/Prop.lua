# Overwrite GetReclaimCosts so that the player does not get mass or energy when a necro is the reclaimer
do

local oldProp = Prop
Prop = Class(oldProp) {
  GetReclaimCosts = function(self, reclaimer)
    local reclaimTime, energyReclaim, massReclaim = oldProp.GetReclaimCosts(self, reclaim)

    if EntityCategoryContains(categories.NECRO, reclaimer) then
      return reclaimTime, 1, 1
    else
      return reclaimTime, energyReclaim, massReclaim
    end
}

end
