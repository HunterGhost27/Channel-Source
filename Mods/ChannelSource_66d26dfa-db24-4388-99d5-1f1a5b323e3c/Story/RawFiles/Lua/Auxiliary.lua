----------------------------------------------------------------
--==============================================================

IDENTIFIER = 'S7_ChannelSource'

---@class MODINFO: ModInfo
---@field ModVersion string
---@field ModSettings table
---@field DefaultSettings table
---@field SubdirPrefix string
MODINFO = Ext.GetModInfo('66d26dfa-db24-4388-99d5-1f1a5b323e3c')

--  ========  AUX FUNCTIONS  ========
Ext.Require('AuxFunctions/Index.lua')
--  =================================

--==============================================================
----------------------------------------------------------------