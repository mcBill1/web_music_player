# 网页音乐播放器
#### 介绍
一个简单的音乐播放器，可播放本地的音乐，反下载。
#### 软件架构
可直接在浏览器中运行，或部署到您的云服务器。
#### 安装教程

1.  | 下载源码.zip，解压(解压付费不要来找我，用7-zip或WinRAR免费软件。)
2.  | 解压到您想要的地方，在目录下新建"music"文件夹。
3.  | 将您的音乐集放到"music"文件夹。
4.  | 运行"1_Move illegal filename files.bat"。
5.  | 运行完"1_Move illegal filename files.bat"后，将disable_music文件夹里的mp3重命名，不可包含"[","]","'"。之后，便可移动到music文件夹。
6.  | 运行"2_Get musiclist.bat"。
7.  | 将输出的"MusicList.txt"文件打开，仅复制"['a','b','c']"(有换行不要复制)。
8.  | 用记事本(VSCode最好，一目了然)，找到130行的如下部分:        const songs = ['a.mp3','b.mp3','c.mp3'] ;
9.  | 将['a.mp3','b.mp3','c.mp3']，替换成你剪切板内容，保存。
10. | 删除其他文件，必须的只有"music","icons"文件夹和"index.html"文件。

#### 使用说明

1.  | 直接运行"index.html"文件

######
icon来自阿里巴巴矢量图标库。
