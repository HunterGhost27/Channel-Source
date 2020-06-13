# Channel Source Changelog

----------

## [1.1.1.0] --- 16th May 2020 --- **_LUA_**

### NEW

* Enabled LUA.
* Option to enable ***Mutual-Cooldowns*** for all the **Channel-Source** skills. Created appropriate dialog options and variables.

### CHANGED

* `PROC Proc_S7_ChannelSource_ChangelogRequest()` removes old-instances of CHANGELOG from the player inventory before granting the items.
* (minor) Fixed a typo in a variable name: _LogSSwappedSkill_ to _LogSwappedSkill_.

## [1.1.0.0] --- 14th May 2020 --- **_Channel-Source Reborn_**

### NEW

* Created a **Mod-Menu**.
* A **note** and a **changelog** will be provided *in-game* whenever the mod *updates*.
* **Skillbooks** that the players *missed* can now be *acquired* using the **Mod-Menu**.
* Prevented application of *statuses* if ***DU-Compatibility-Script*** added SP using *call CharacterAddSourcePoints()*.
* **Channel Source - I** was consumable, *fixed*.
* Fancy *Localization*.

### CHANGED

* **Compatibility-Script** to add SP can now be *manually* **toggled** on or off using the **Mod-Menu**. Players can enable it for any mod that changes "source-healing". **Enabled** by default if ***DU*** is detected.

### REMOVED

* The old **recipe** method to *acquire* missing skill books is deprecated. Swapped all results with the author's note. Recipes still exist for people who already learned them.

### META

* Deleted old Git-repository. Reinitialized.

## [1.0.1.0] --- 10th April 2020 --- **_Divinity-Unleashed Band-Aid Fix_**

### NEW

* Created a ***Compatibility-script*** for **Divinity-Unleashed**. Script grants SP using the call _CharacterAddSourcePoints()_.

### CHANGED

* **Skillbooks** have proper *stats* assigned to them. - (forgot to do this at launch)

## [1.0.0.0] --- 20th March 2020 --- **_Initial Release_**

### NEW

* Initial Release.
