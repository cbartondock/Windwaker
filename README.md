# Windwaker
A couple projects of mine related to the GC game TLOZ Windwaker.

## Save States

A collection of save files for TLOZWW, for use with dolphin. I found that I couldn't find any mid-game gci's for the USA version of the game, so I am saving them as I go.

### Usage
Either import these into an MemoryCardA.USA.raw file via Dolphin's Memory Card Management, or if you are using GCI Folder
as your memory card simply name the save you want `01-GZLE-gczelda.gci` and place it in the `UserGlobalDirectory/GC/USA/Card A/` directory

## Pronoun Patcher
Originated [here](http://exple.tive.org/blarg/2012/11/07/flip-all-the-pronouns/) by Mike Hoye, this mod aims to patch the Windwaker iso so that all references
to Link are in the feminine. Brilliant idea. I noticed that several references were still in the masculine, so I fixed them. I used [HxD](https://mh-nexus.de/en/hxd/), but any hex editor should work. If you want to make further changes, just open the iso with such a hex editor and search for the line you want (in ANSI) and then make the changes, being sure to not change the filesize by adding or removing characters. If you want to create a patch/patcher bat of your own, use [xdelta3-gui](https://sourceforge.net/projects/xdelta3-gui/).

I used the patcher found [here](https://onthegreatsea.tumblr.com/post/142799570725/the-legend-of-zelda-the-wind-waker-pronoun) made by Hypatia and modified it so that the checksum matched my new and improved pronoun patch.

### Usage
First copy your legally obtained original iso having sha-1 hash `6b5f06c10d50ebb4099cded88217eb71e5bfbb4a` (if you aren't sure what this means or how to compute it, the file size of the iso should be 1,459,978,240 bytes or about 1,425,60 kilobytes) into the directory where the `PronounPatcher.bat` is located. Then, drag the iso onto the `PronounPatcher.bat`. It will open a window, press any key and let it do it's thing.


### Issue Requests
If you notice any other references are in the masculine, or if you think a certain phrasing could be made less awkward *without changing the number of characters used* (remember, I have to patch a hexadecimal file), then take a screenshot of the dialogue in game and create an issue request. I will fix it and ammend the vcdiff file herein.