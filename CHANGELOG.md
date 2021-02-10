# Channel Source Changelog

---

## [1.3.0.0] --- 10th Februrary 2021 --- **_Modernization_**

### NEW

- Partial Luaification.
- Added Console-Commands.
- Integrated with UI-Components-Library.
- Add ContextMenu option for Mod Menu.
- Add ContextMenu option for Mod Manual.
- Added FX when character is in Mod-Menu dialog.

### REMOVED

- _Removed_ unnecessary dependencies.
- _Removed_ old stuff.
- _Removed_ old CHANGELOG system in favor of Mod-Manual.
- _Removed_ unimplemented skill-config-menu.

## [1.2.1.0] --- 24th August 2020 --- **_CleanUp Diagnostic_**

### NEW

- _Created_ a **Cleanup** dialog option. Removes unused stuff.
- _Added_ clean-up warnings for old skills.

### CHANGED

- Flags clear before proc execution. Minor script sequencing changes.
- Mod checks for alteast 1 book instead of only 1.

## [1.2.0.0] --- 20th August 2020 --- **_Finalize Update_**

### NEW

- Players can set the `S7_CS_DONTBOTHERME` flag if they do not wish to receive the Changelog and Update letter whenever the mod updates.
- _Created_ Github release.

### CHANGED

- **Mutual Cooldowns**are now _enabled_ by default. - I like the mod better this way.
- **Mutual Cooldowns** code is only read if the players have the script-extender installed.

### REMOVED

- _Removed_ `S7_Config` as project dependency.

## [1.1.2.0] --- 15th June 2020 --- **Skill Configure**

### NEW

- _Added_ `S7_Config` as project dependency. Temporarily.
- _Registered_ mod to `S7_Config`.

## [1.1.1.0] --- 16th May 2020 --- **_Mutual Cooldowns_**

### NEW

- Option to enable **_Mutual-Cooldowns_** for all the **Channel-Source** skills. Created appropriate dialog options and variables.

### CHANGED

- `PROC Proc_S7_ChannelSource_ChangelogRequest()` removes old-instances of CHANGELOG from the player inventory before granting the items.
- (minor) Fixed a typo in a variable name: _LogSSwappedSkill_ to _LogSwappedSkill_.

## [1.1.0.0] --- 14th May 2020 --- **_Channel-Source Reborn_**

### NEW

- Created a **Mod-Menu**.
- A **note** and a **changelog** will be provided _in-game_ whenever the mod _updates_.
- **Skillbooks** that the players _missed_ can now be _acquired_ using the **Mod-Menu**.
- Prevented application of _statuses_ if **_DU-Compatibility-Script_** added SP using _call CharacterAddSourcePoints()_.
- **Channel Source - I** was consumable, _fixed_.
- Fancy _Localization_.

### CHANGED

- **Compatibility-Script** to add SP can now be _manually_ **toggled** on or off using the **Mod-Menu**. Players can enable it for any mod that changes "source-healing". **Enabled** by default if **_DU_** is detected.

### REMOVED

- The old **recipe** method to _acquire_ missing skill books is deprecated. Swapped all results with the author's note. Recipes still exist for people who already learned them.

### META

- Deleted old Git-repository. Reinitialized.

## [1.0.1.0] --- 10th April 2020 --- **_Divinity-Unleashed Band-Aid Fix_**

### NEW

- Created a **_Compatibility-script_** for **Divinity-Unleashed**. Script grants SP using the call _CharacterAddSourcePoints()_.

### CHANGED

- **Skillbooks** have proper _stats_ assigned to them. - (forgot to do this at launch)

## [1.0.0.0] --- 20th March 2020 --- **_Initial Release_**

### NEW

- Initial Release.
