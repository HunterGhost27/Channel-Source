# Channel Source

=====================

## Mod Details

### Channel Source

- ***Mod Version***: _?ModVersion_
- ***Author***: ?ModAuthor
- ***Description***: ?ModDescription

## General Information

### Background

- The theme of `Source` is central to the story of ***Divinity Original Sin 2*** and yet the gameplay mechanics around the use of source are underwhelming in my opinion. Re-gaining source points is a pointless chore (and is not even a balance concern, as players can just teleport back and forth to a source fountain) and the game actively discourages you from keeping your SP count high, as a lot of bosses steal source and use OP skills against you.
- This leads players to frontload their attack plan with source-skills and use them ASAP. Finding `puddles of source` or eating a _source-orb_ do mitigate this problem a bit but are too rare to utilize consistently. I also find it hard to justify slotting 3SP skills, as they take up 3 Memory and become unusable as soon as you use a 1SP skill (which are some of the best source skills imo).
- ===
- There are plenty of source regen mods out there that fix this by eliminating the need to go back to Miestr Siva's basement after every fight. I, however, feel that they don't make a tangible difference in gameplay, they just speed up the process. This mod not only allows you to regenerate source in combat, It was designed to **be** used in combat.
- Action Points are king in DOS2, and the most OP skills are those that allow you to gain more Action Points. This mod does the reverse, it allows you to convert Action points to Source points. You're free to regenerate outside of combat however much you want, but during combat, trading AP is a serious commitment.

### Features

- Adds 3 tiers of `Channel Source` Skills that regenerates SP at the cost of AP.
- ***Channel Source*** - grants **1SP** at the cost of **2AP**.Can be found in ***Fort Joy***.
- ***Channel Source, Greater*** - grants **2SP** at the cost of **3AP**. Can be found in ***Driftwood***.
- ***Channel Source, Master*** - grants **3SP** at the cost of **4AP**. Can be found in the ***Nameless Isles***.
- ***Siphon Source*** - allows you to transfer **1SP** to someone else. Think reverse source-vampirism. Can be found with _Channel Source, Greater_ - in ***Driftwood***.
- Adds another skill similar in effect to the skills listed above, but much more powerful. I'll leave its location a secret.
- ===
- **NOTE:** _Most of these skill-books should not be hard to find and you will come upon them naturally as you progress the storyline. Even the secret skill isn't exactly well hidden. The skill-books, except for the last skill, are not consumable. One is enough for the entire party._
- ===
- ***Mod-Menu*** can be accessed by combining any **channel-source skillbook** with an **identifying-glass**. If you have the ***UI-Components-Library***, you can access the mod-menu by right-clicking any CS-Skillbook and selecting the **Mod-Menu** context-menu option.
- The `Channel-Source` skills have **Mutual-Cooldowns**. This means casting a channel-source skill will put all other channel-source skills on cooldown in-tandem. You can disable this feature and switch to individual cooldowns using the mod-menu. `(Requires the Script-Extender)`.

## <font color='#3F784C'>Changelog</font>

### [v1.3.0.0]<font color='#888888'>: 10-Feb-2021</font>

- Partial _Luaification_.
- *Added* `Console-Commands`.
- *Integrated* with ***UI-Components-Library***.
- *Added* ContextMenu option for _Mod Menu_.
- *Added* ContextMenu option for _Mod Manual_.
- *Added* `FX` when character is in Mod-Menu dialog.
- ===
- ***Removed*** unnecessary dependencies.
- ***Removed*** old stuff.
- ***Removed*** old CHANGELOG system in favor of Mod-Manual.
- ***Removed*** unimplemented skill-config-menu.

### [v1.2.1.0]<font color='#888888'>: 24-Aug-2020</font>

- *Added* a `CleanUp` diagnostics option to the mod-menu. Removes old unsupported skills from characters.
- *Changed* tooltip descriptions of old skills to tell players that they need to use CleanUp.
- CleanUp should be automatically called on updates.

### [v1.2.0.0]<font color='#888888'>: 20-Aug-2020</font>

- All Channel-Source skills are put in cooldown in-tandem. **Mutual-Cooldown** is now the default behaviour.
- *Created* a flag to toggle update notifications.
- *Created* database entries for **Skill-Config-Menu** to integrate with the ***Stats-Configurator***.

### [v1.1.0.0]<font color='#888888'>: 14-May-2020</font>

- *Created* a ***Mod-Menu***.
- A note and a changelog will be provided in-game whenever the mod updates.
- Skillbooks that the players missed can now be acquired using the Mod-Menu.
- The old recipe method to acquire missing skill books is now ***deprecated***. Swapped all results with the author's note. Recipes still exist for people who already learned them.
- **Compatibility-Script** to add SP can now be manually toggled on or off using the Mod-Menu. Players can enable it for any mod that changes "source-healing". `Enabled` by default if DU is detected.
- Prevented application of statuses if DU-Compatibility-Script added SP using call `CharacterAddSourcePoints()`.
- CS-I was consumable, fixed.
- Fancy Localization.

### [v1.0.1.0]<font color='#888888'>: 10-Apr-2020</font>

- Divinity Unleashed Band-Aid Fix.
- The skill books now have proper stats assigned to them (forgot to do this when I released the mod).
- **P.S**: Story scripts greatly inflate mod size. This thing went from 1.9Mb to ~11Mb with only a few lines of script. Probably all that compiled stuff.

### [v1.0.0.0]<font color='#888888'>: 20-Mar-2020</font>

- Initial Release.
