-- =============
-- FLAGS MANAGER
-- =============

Flags:Track({['flagName'] = 'S7_ExtenderAvailable'})
Flags:Track({['flagName'] = 'S7_ChannelSource_GiveMeBooks'})
Flags:Track({['flagName'] = 'S7_ChannelSource_DUBA'})
Flags:Track({['flagName'] = 'S7_CS_MutualCooldown'})

--  =======================
--  CONSOLE COMMAND TOGGLES
--  =======================

--  DUBA
--  ====

ConsoleCommander:Register({
    ['Name'] = 'ToggleCompatibilityMode',
    ['Description'] = 'Toggles Script-Based Compatibility Mode',
    ['Context'] = 'Server',
    ['Action'] = function ()
        Flags['S7_ChannelSource_DUBA']:Toggle()
    end
})

--  MUTUAL COOLDOWNS
--  ================

ConsoleCommander:Register({
    ['Name'] = 'ToggleMutualCooldown',
    ['Description'] = 'Toggles Channel-Source Mutual-Cooldowns',
    ['Context'] = 'Server',
    ['Action'] = function ()
        Flags['S7_CS_MutualCooldown']:Toggle()
    end
})
