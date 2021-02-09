--  ======================
--  CONTEXT MENU RESPONDER
--  ======================

Ext.RegisterNetListener('S7UCL::ContextMenu', function (channel, payload)
    local payload = Ext.JsonParse(payload) or {}
    Destringify(payload) -- Converts stringified numeric keys back into numbers

    Ext.Print(payload.actionID)
    if payload.actionID == 27201 then
        local character = payload.CharacterGUID
        local sourceFX = Osi.PlayLoopEffect(character, "RS3_FX_GP_Status_SourceInfused_01", "")
        Osi.DB_S7_CS_SourceFX(sourceFX)
        Osi.Proc_StartDialog(0, 'S7_ChannelSource_ModMenu', character)
    end
end)