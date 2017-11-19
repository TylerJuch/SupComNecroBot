do
local necro = import('/mods/necro/necro.lua')
local oldUnit = Unit

Unit = Class(oldUnit) {
  OnStartReclaim = function(self, target)
    # Store off BP and position so we can resurrect the correct thing at the correct place
    self.ReclaimTargetBP = target.AssociatedBP
    self.ReclaimTargetPosition=target:GetPosition()

    oldUnit.OnStartReclaim(self, target)
  end,

  OnStopReclaim = function(self, target)
    oldUnit.OnStopReclaim(self, target)

    ForkThread(function()
      LOG(self.ReclaimTargetBP)
      LOG(self.ReclaimTargetPosition)

      if EntityCategoryContains(categories.NECRO, self) then
        local blueprint = self.ReclaimTargetBP
        local army=self:GetArmy()
        local position=self.ReclaimTargetPosition
        CreateUnitHPR(blueprint, army, position[1], position[2], position[3], 0, 0, 0)
      end
    end)
end,
}

end
