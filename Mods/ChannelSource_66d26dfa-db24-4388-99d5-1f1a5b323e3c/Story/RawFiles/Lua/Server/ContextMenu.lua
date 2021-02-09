--  ======================
--  CONTEXT MENU RESPONDER
--  ======================

Ext.RegisterNetListener('S7UCL::ContextMenu', function (channel, payload)
    local payload = Ext.JsonParse(payload) or {}
    Destringify(payload)

    if payload.actionID == 27201 then
        local character = payload.CharacterGUID
        StartModMenuDialog(character)
    end
end)