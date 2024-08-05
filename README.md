## Introduction
A simple music player capable of playing local music and supporting reverse downloading.

# Software Architecture
Can be run directly in a web browser or deployed to your cloud server.

# Installation Instructions
1.  | Download the source code .zip file and extract (if you encounter payment requests, use free software like 7-Zip).
2.  | Extract to your desired location and create a "music" folder in the directory.
3.  | Place your music collection into the "music" folder.
4.  | Run "1_去除网易云音乐歌手名(可选).bat" (optional: note that this step is optional).
5*. | Run "2_移动非法文件名文件.bat".
1.  | After running "2_移动非法文件名文件.bat", rename the MP3 files in the "disable_music" folder without "[", "]", or "'". Then move them to the 1.  | "music" folder.
1.  | Run "3_获取音乐列表.bat".
1.  | Open the generated "MusicList.txt" file and copy only "['a','b','c']" (do not copy line breaks).
1.  | Using a text editor (preferably VSCode for clarity), find line 130 and locate: const songs = ['a.mp3','b.mp3','c.mp3'];.
1.  | Replace ['a.mp3','b.mp3','c.mp3'] with the content from your clipboard and save.
1.  | Delete other files, leaving only the "music" and "icons" folders along with the "index.html" file.
# Usage Instructions
Simply run the "index.html" file.
# notice
Icons sourced from Alibaba Vector Icon Library.
