do

local oldUnit = Unit

Unit = Class(oldUnit) {
  OnStartReclaim = function(self, target)
    # Store off BP and position so we can resurrect the correct thing at the correct place
    self.ReclaimTargetBP = target.AssociatedBP
    self.ReclaimTargetPosition = target:GetPosition()

    oldUnit.OnStartReclaim(self, target)
  end,

  OnStopReclaim = function(self, target)
    oldUnit.OnStopReclaim(self, target)

    LOG("OnStopReclaim Target:")
    LOG(repr(target))

    # If the reclaimer is a necro, then resurrect the unit that was reclaimed
    # We have to prevent multiple necros from resurrecting the same wreckage,
    # so we set a flag on the wreckage when it is reclaimed and check it here.
    # The wreckage can also be destroyed, so we have also have a safety check.
    if EntityCategoryContains(categories.NECRO, self) and target ~= nil and target.HasBeenResurrected ~= true then
      local blueprint = self.ReclaimTargetBP
      local army=self:GetArmy()
      local position=self.ReclaimTargetPosition
      CreateUnitHPR(blueprint, army, position[1], position[2], position[3], 0, 0, 0)
      target.HasBeenResurrected = true
    end
end,
}

end
