function Prop:GetReclaimCosts = function(self, reclaimer)
  local reclaimTime = getReclaimTime(self, reclaimer)

  if EntityCategoryContains(categories.NECRO, reclaimer) then
    return (reclaimTime/10), 1, 1
  else
    return (reclaimTime/10), self.EnergyReclaim, self.MassReclaim
  end
end

function Prop:getMassReclaimTime = function(self, reclaimerBlueprint)
  return self.ReclaimTimeMassMult * (self.MassReclaim / reclaimer:GetBuildRate())
end,

function Prop:getEnergyReclaimTime = function(self, reclaimerBlueprint)
  return self.ReclaimTimeEnergyMult * (self.EnergyReclaim / reclaimer:GetBuildRate())
end,

function Prop:getReclaimTime = function (self, reclaimer)
  local massReclaimTime = getMassReclaimTime(self, reclaimer)
  local energyReclaimTime = getEnergyReclaimiTime(self, reclaimer)
  return = math.max(massReclaimTime, energyReclaimTime)
end
