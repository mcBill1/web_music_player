# Introduction
A simple music player capable of playing local music and supporting reverse downloading.

## Software Architecture
Can be run directly in a web browser or deployed to your cloud server.

## Installation Instructions
1.  | Download the source code .zip file and extract (if you encounter payment requests, use free software like 7-Zip).
2.  | Extract to your desired location and create a "music" folder in the directory.
3.  | Place your music collection into the "music" folder.
4.  | Run "1_Move illegal filename files.bat".
5.  | After running "1_Move illegal filename files.bat", rename the MP3 files in the "disable_music" folder without "[", "]", or "'". Then move them to the "music" folder.
6.  | Run "3_Get musiclist.bat".
7.  | Open the generated "MusicList.txt" file and copy only "['a','b','c']" (do not copy line breaks).
8.  | Using a text editor (preferably VSCode for clarity), find line 130 and locate: const songs = ['a.mp3','b.mp3','c.mp3'];.
9.  | Replace ['a.mp3','b.mp3','c.mp3'] with the content from your clipboard and save.
10.  | Delete other files, leaving only the "music" and "icons" folders along with the "index.html" file.
## Usage Instructions
Simply run the "index.html" file.
## notice
Icons sourced from Alibaba Vector Icon Library.
