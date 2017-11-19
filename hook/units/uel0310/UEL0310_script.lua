#****************************************************************************
#**
#**  File     :  /cdimage/units/UEL0309/UEL0309_script.lua
#**  Author(s):  John Comes, David Tomandl
#**
#**  Summary  :  UEF Tech 3 Necro
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local TConstructionUnit = import('/lua/terranunits.lua').TConstructionUnit
local UEL0310 = Class(TConstructionUnit) {
  OnCreate = function(self)
    TConstructionUnit.OnCreate(self)
  end
}
TypeClass = UEL0310
