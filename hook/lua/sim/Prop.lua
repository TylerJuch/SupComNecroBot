# Overwrite GetReclaimCosts so that the player does not get mass or energy when a necro is the reclaimer
do

local oldProp = Prop
Prop = Class(oldProp) {
  GetReclaimCosts = function(self, reclaimer)
    local reclaimTime, energyReclaim, massReclaim = oldProp.GetReclaimCosts(self, reclaimer)

    if EntityCategoryContains(categories.NECRO, reclaimer) then
      return reclaimTime, 0, 0
    else
      return reclaimTime, energyReclaim, massReclaim
    end
  end
}

end
