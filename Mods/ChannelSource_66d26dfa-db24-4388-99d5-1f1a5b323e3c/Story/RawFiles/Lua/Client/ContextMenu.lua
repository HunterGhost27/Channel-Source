--  ============
--  CONTEXT MENU
--  ============

--  REGISTER LABELS
--  ===============

Ext.RegisterListener('SessionLoaded', function() -- UCL has been loaded by this point regardless of where it is in the load-order
    UCL = Mods['S7_UI_Components_Library'] -- Import UCL

    for stat, template in pairs(ChannelSourceSkillbooks) do
        -- Register Context-Menu label to CS Skillbooks
        UCL.ContextMenu:QuickRegister({
            ["RootTemplate::" .. template] = {
                {
                    ['actionID'] = 27201,
                    ['clickSound'] = true,
                    ['text'] = Color:Source("Mod Menu"),
                    ['isDisabled'] = false,
                    ['isLegal'] = true
                },
                {
                    ['actionID'] = 27202,
                    ['clickSound'] = true,
                    ['text'] = Color:Blue("Mod Information"),
                    ['isDisabled'] = false,
                    ['isLegal'] = true
                }
            }
        })
    end
end)

--  MOD-MANUAL
--  ==========

Ext.RegisterNetListener('S7UCL::ContextMenu', function (channel, payload)
    local payload = Ext.JsonParse(payload) or {}
    Destringify(payload)

    if payload.actionID == 27202 then
        local manual = LoadFile('Mods/ChannelSource_66d26dfa-db24-4388-99d5-1f1a5b323e3c/ModInformation.md', 'data')

        --  Replacers table
        local replacers = {
            {['?ModVersion'] = Version:Parse(MODINFO.Version):String()},
            {['?ModAuthor'] = MODINFO.Author},
            {['?ModDescription'] = MODINFO.Description},
        }

        local specs = UCL.Journalify(manual, replacers) -- Parse ModInformation.md into Journal Specification
        specs = Integrate(specs, {
            ['GMJournal'] = {
                ['Component'] = {['Name'] = 'S7_ConfigCtxMenu'},
                ['SubComponent'] = {['ToggleEditButton'] = {['Visible'] = false}}
            }
        })
        UCL.Render(specs) -- Render Journal on-screen
    end
end)