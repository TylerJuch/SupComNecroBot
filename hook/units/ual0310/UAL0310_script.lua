#****************************************************************************
#**
#**  File     :  /cdimage/units/UAL0309/UAL0310_script.lua
#**  Author(s):  John Comes, David Tomandl
#**
#**  Summary  :  Aeon Unit Script
#**
#**  Copyright � 2005 Gas Powered Games, Inc.  All rights reserved.
#****************************************************************************
#
# AEON TECH 3 NECRO
#
local AConstructionUnit = import('/lua/aeonunits.lua').AConstructionUnit
UAL0310 = Class(AConstructionUnit) {
  OnCreate = function(self)
    AConstructionUnit.OnCreate(self)
  end
}
TypeClass = UAL0310
