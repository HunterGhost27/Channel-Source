--  ======================
--  CONTEXT MENU RESPONDER
--  ======================

Ext.RegisterNetListener('S7UCL::ContextMenu', function (channel, payload)
    local payload = Ext.JsonParse(payload) or {}
    Destringify(payload) -- Converts stringified numeric keys back into numbers

    Ext.Print(payload.actionID)
    if payload.actionID == 27201 then
        Osi.Proc_StartDialog(1, 'S7_ChannelSource_ModMenu', Osi.CharacterGetHostCharacter())
    end
end)