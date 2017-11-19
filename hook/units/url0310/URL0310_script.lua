#****************************************************************************
#**
#**  File     :  /cdimage/units/URL0309/URL0309_script.lua
#**  Author(s):  John Comes, David Tomandl
#**
#**  Summary  :  Cybran Tier 3 Necro Script
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
local CConstructionUnit = import('/lua/cybranunits.lua').CConstructionUnit
local URL0310 = Class(CConstructionUnit) {
  OnCreate=function(self)
    CConstructionUnit.OnCreate(self)
  end
}
TypeClass = URL0310
