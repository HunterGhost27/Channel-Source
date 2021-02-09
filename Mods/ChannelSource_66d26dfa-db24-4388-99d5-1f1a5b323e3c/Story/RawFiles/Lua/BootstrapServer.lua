Ext.Require('Auxiliary.lua')

ConsoleCommander:Register({
    ['Name'] = 'AddSkillbooks',
    ['Description'] = 'Grants all ChannelSource Skillbooks to HostCharacter',
    ['Action'] = function ()
        for stat, template in pairs(ChannelSourceSkillbooks) do
            Osi.ItemTemplateAddTo(template, Osi.CharacterGetHostCharacter(), 1, 1)
        end
    end
})