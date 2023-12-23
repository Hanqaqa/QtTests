# Learning Qt from scratch for Windows and Linux

> [!NOTE]  
> This procedure has been tested as of January 2024 with Qt 6.6.1. Things might change in the future

In this tutorial we will go over how to install an Open Source instance of Qt, develop a simple aplication and ship it to different users with different OSs!

This is an easy example on how to deploy an app as fast as possible. So the easiest and cleanest method will always be chosen.

I will provide the specific instructions for:
- Windows 10
- Ubuntu 22.04
- Red Hat Enterprise Linux 9.3.

Whenever they are necessary. If the instructions are platform independent, the instructions will only be explained once.

## 1. Pre installation in different OS:

All of them begin by downloading the installer from their [Qt Open Source Development page](https://www.qt.io/download-open-source) and clicking in [Download the Qt Online installer](https://www.qt.io/download-qt-installer-oss) and choosing your system.

### Windows 10

The simplest install. Double click the downloaded .exe and the installation will start.

### Ubuntu 22.04

First we have to install some required libraries, [the official qt6 docs tells us to install](https://doc.qt.io/qt-6/linux.html):

```
sudo apt install build-essential libgl1-mesa-dev
```

I have found that you need to install these libraries too:

```
sudo apt install libxcb-xinerama0 libxcb-cursor0 
```


Then right click on the downloaded .run file and Allow executing file as a program:

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtUbuntuExecute.PNG" width="40%">
</p>

Close the window and double click the .run file to start the installation

### Red Hat Enterprise Linux 9.3

Bla bla algo de sus paquetes yum


## 2. Installation:

The procedure is the same in all the OSs.

The first step is giving your Qt credentials. If you don't have one, simply [create a new account in their webpage](https://login.qt.io/register). It's free!

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall1.PNG" width="40%">
</p>

Accept [Qt's licensing terms](https://www.qt.io/licensing).

Tl;dr: if you use the Open Source license, using Qt is free as long as you also Open Source your project.

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall2.PNG" width="40%">
</p>

Click Next on the Welcome to open source setup screen.

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall3.PNG" width="40%">
</p>

Allow or disable sending usage statistics to Qt.

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall4.PNG" width="40%">
</p>

Choose Custom Installation. (Although we will only be using Qt 6.6 for Desktop development, it is good to see what we are installing).

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall5.PNG" width="40%">
</p>

Choose to install Qt Design Studio (this allows you to create QML GUIs by drag and dropping), Qt 6.6.1 (the framework) and Qt Creator (Qt's IDE).

This installation method lots of packages like an Android development kit, Serial Port, Webview compatibilities... that we probably won't use. But it doesn't take too much space (~200Mb) and is a fast way to install it.

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall5a.PNG" width="40%">
</p>

Accept all the Qt licences and click Install. If you only chose Qt 6.6 for desktop development the download will be approximately of 3.2GB.

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall6.PNG" width="40%">
</p>

Wait for the installation.

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall7.PNG" width="40%">
</p>

Once the installation is finished you can automatically launch Qt

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall8.PNG" width="40%">
</p>

Switch the Qt Creator to dark mode via Edit->Preferences

Then in the new window click on Environment and change theme to dark. Qt Creator will restart once you apply the flat dark theme

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall9.PNG" width="40%">
</p>

## 2. First Project: