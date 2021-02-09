--  ============
--  CONTEXT MENU
--  ============

--  REGISTER LABELS
--  ===============

Ext.RegisterListener('SessionLoaded', function() -- UCL has been loaded by this point regardless of where it is in the load-order
    UCL = Mods['S7_UI_Components_Library'] -- Import UCL

    for stat, template in pairs(ChannelSourceSkillbooks) do
        -- Register Context-Menu label to CS Skillbooks
        UCL.ContextMenu:Register({
            ["RootTemplate::" .. template] = {
                {
                    ['actionID'] = 27201,
                    ['clickSound'] = true,
                    ['text'] = Color:Source("Mod-Menu"),
                    ['isDisabled'] = false,
                    ['isLegal'] = true
                }
            }
        })
    end
end)