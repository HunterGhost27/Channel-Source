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

--  =====================
--  START MOD-MENU DIALOG
--  =====================

---Starts CS Mod-Menu Dialog
---@param character string CharacterGUID
function StartModMenuDialog(character)
    local character = character or Osi.CharacterGetHostCharacter()
    if not IsValid(Osi.QRY_SpeakerIsAvailable(character)) then return end
    local sourceFX = Osi.PlayLoopEffect(character, "RS3_FX_GP_Status_SourceInfused_01", "")
    Osi.DB_S7_CS_SourceFX(sourceFX)
    Osi.Proc_StartDialog(0, "S7_ChannelSource_ModMenu", character)
end

--  ======
--  VARDEC
--  ======

ChannelSourceSkillbooks = {
    ["ChannelSource_SKILLBOOK_Source_ChannelSource_I"] = "79e78c16-3e86-4206-b22a-57a8f3081b69",
    ["ChannelSource_SKILLBOOK_Source_ChannelSource_II"] = "4cb15e3d-24e5-481c-98b8-9305a6019578",
    ["ChannelSource_SKILLBOOK_Source_ChannelSource_III"] = "a5ca77fd-9fc0-4ac4-beba-48f41d338bf3",
    ["ChannelSource_SKILLBOOK_Source_ChannelSource_IV"] = "1fa7c5c5-e8c3-4188-b7ec-3fea1fbcfb7f",
    ["ChannelSource_SKILLBOOK_Source_SiphonSource_I"] = "8651743f-c1e8-43c1-809f-12c738f74571",
}