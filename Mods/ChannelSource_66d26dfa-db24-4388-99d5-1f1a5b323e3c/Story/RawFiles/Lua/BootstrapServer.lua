--  =======
--  IMPORTS
--  =======

Ext.Require('Auxiliary.lua')

--  UI-COMPONENTS-LIBRARY INTEGRATION
--  =================================

if Ext.IsModLoaded('b66d56c6-12f9-4abc-844f-0c30b89d32e4') then Ext.Require('Server/ContextMenu.lua') end

--  ================
--  CONSOLE-COMMANDS
--  ================

ConsoleCommander:Register({
    ['Name'] = 'AddSkillbooks',
    ['Description'] = "Grants all ChannelSource Skillbooks to HostCharacter",
    ['Action'] = function ()
        for stat, template in pairs(ChannelSourceSkillbooks) do
            Osi.ItemTemplateAddTo(template, Osi.CharacterGetHostCharacter(), 1, 1)
        end
    end
})