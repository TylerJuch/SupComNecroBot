local oldProp = Prop
Prop = Class(oldPropfile) {
  GetReclaimCosts = function(self, reclaimer)
    local reclaimTime = getReclaimTime(self, reclaimer)

    if EntityCategoryContains(categories.NECRO, reclaimer) then
      return (reclaimTime/10), 1, 1
    else
      return (reclaimTime/10), self.EnergyReclaim, self.MassReclaim
    end
  end,

  getMassReclaimTime = function(self, reclaimerBlueprint)
    return self.ReclaimTimeMassMult * (self.MassReclaim / reclaimer:GetBuildRate())
  end,

  getEnergyReclaimTime = function(self, reclaimerBlueprint)
    return self.ReclaimTimeEnergyMult * (self.EnergyReclaim / reclaimer:GetBuildRate())
  end,

  getReclaimTime = function (self, reclaimer)
    local massReclaimTime = getMassReclaimTime(self, reclaimer)
    local energyReclaimTime = getEnergyReclaimiTime(self, reclaimer)
    return = math.max(massReclaimTime, energyReclaimTime)
  end
}
