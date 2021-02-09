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

--  START MOD-MENU
--  ==============

ConsoleCommander:Register({
    ['Name'] = 'StartModMenu',
    ['Description'] = "Starts the Mod-Menu Dialog",
    ['Context'] = 'Shared',
    ['Action'] = function ()
        local character = UserInformation.CurrentCharacter or Osi.CharacterGetHostCharacter()
        StartModMenuDialog(character)
    end
})

--  ADD SKILLBOOK
--  =============

ConsoleCommander:Register({
    ['Name'] = 'AddSkillbooks',
    ['Description'] = "Grants all ChannelSource Skillbooks to HostCharacter",
    ['Context'] = 'Server',
    ['Action'] = function ()
        for stat, template in pairs(ChannelSourceSkillbooks) do
            Osi.ItemTemplateAddTo(template, Osi.CharacterGetHostCharacter(), 1, 1)
        end
    end
})

--  PROC UPDATER
--  ============

ConsoleCommander:Register({
    ['Name'] = 'ProcUpdater',
    ['Description'] = "Rerun Updater Procedure",
    ['Context'] = 'Server',
    ['Action'] = function ()
        if not Ext.OsirisIsCallable() then Debug:Warn('Osiris Inaccessible') return end
        Osi.Proc_S7_ChannelSource_Updater()
    end
})