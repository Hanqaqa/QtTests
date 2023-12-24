# Learning Qt from scratch for Windows and Linux

> [!NOTE]  
> This procedure has been tested as of January 2024 with Qt 6.6.1. Things might change in the future

In this tutorial we will go over how to install an Open Source instance of Qt, develop a simple aplication and ship it to different users with different OS!

This is an easy example on how to deploy an app as fast as possible. So the easiest and cleanest method will always be chosen.

I will provide the specific instructions for:
- Windows 10
- Ubuntu 22.04
- Red Hat Enterprise Linux 9.3.

Whenever they are necessary. If the instructions are platform independent, the instructions will only be explained once.

## 1. Pre installation in different OS:

All of installation in different OS begin by downloading the installer from their [Qt Open Source Development page](https://www.qt.io/download-open-source) and clicking in [Download the Qt Online installer](https://www.qt.io/download-qt-installer-oss) and choosing your system.

### Windows 10

The simplest install. Double click the downloaded .exe and the installation will start.

### Ubuntu 22.04

First we have to install some required libraries, [the official qt6 docs tells us to install](https://doc.qt.io/qt-6/linux.html):

```
sudo apt install build-essential libgl1-mesa-dev
```

I have found that you need to install the complete Xcb library:

```
sudo apt install libxcb*
```

Then right click on the downloaded .run file and Allow executing file as a program:

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtUbuntuExecute.PNG" width="40%">
</p>

Close the window and double click the .run file to start the installation

### Red Hat Enterprise Linux 9.3

Same as in Ubuntu, [the official qt6 docs tells us to install](https://doc.qt.io/qt-6/linux.html):

```
sudo yum groupinstall "C Development Tools and Libraries"
sudo yum install mesa-libGL-devel
```

C development tools me ha ido mal. me ha funcionado bien esto:

```
sudo yum groupinstall "Development Tools"
```

I also had to install these dependencies

```
sudo yum install xcb-util-wm xcb-util-image xcb-util-keysyms xcb-util-renderutil
```

Y este como va?

```
sudo yum install xcb*
```

Then right click on the downloaded .run file and Allow executing file as a program:

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtRedHatExecute.PNG" width="40%">
</p>

Close the window and double click the .run file to start the installation

## 2. Installation:

The procedure is the same in all the OSs.

The first step is giving your Qt credentials. If you don't have one, simply [create a new account in their webpage](https://login.qt.io/register). It's free!

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall1.PNG" width="40%">
</p>

Accept [Qt's licensing terms](https://www.qt.io/licensing).

Tl;dr: if you use the Open Source license, using Qt is free, as long as you also Open Source your project.

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

Choose Custom Installation for the complete Qt experience. Choose Qt 6.6 for Desktop development If you are only interested in the very basics of Qt (No serial port, charts, pdf genration, multimeda...)

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall5.PNG" width="40%">
</p>

If you chose Custom Installation, these options given to you are:

- Qt Design Studio: a program that allows you to create QML GUIs by drag and droping. Nice to have.
- Qt 6.6.1: The complete Qt libraries framework. The necessary ones for creating a very basic application are:
    - Desktop gcc 64-bit: Linux only. The C/C++ compiler. Obligatory if you want to compile your applications unless you already have one installed and plan on using that one.
    - MinGW: Windows only. The C/C++ compiler. Obligatory unless you already have it installed and plan on using that one. 
    - Sources: the basic Qt libraries. Obligatory if you want to develop a very basic Qt application.
    - Rest of them: if you want to develop an application with a specific library, you can choose them here. Optional.
- Developer and Designer Tools:
    - Qt Creator: The IDE. Obligatory unless you know what you are doing and plan on using a different IDE.
    - Debugging Tools for Windows: Windows only. Obligatory.
    - CMake: Obligatory.
    - Ninja: Obligatory.

The minimum installation should look like this: 

| Windows Minimum Installation | Linux Minimum Installation |
|---|---|
|<img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall5Windows.PNG">|<img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall5Linux.PNG">|
|In Windows CMake and Ninja are not shown on the image but are selected| --- |


Accept all the Qt licences and click Install. If you chose the full Custom installation like I did, the installation will be ~16GB(linux) ~40GB Windows. If instead you only chose Qt 6.6 for desktop development the download will be approximately of ~3GB(linux) or 4.5GB(Windows).

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

TODO

## 3. Releasing your application to other PCs

Once you have finished developing your application. It is time to "deploy the application". Which means, compiling it and putting into a folder with all the necessary files so other people with different PCs and OSs can run it without installing Qt Creator.

Windows runs `.exe` files, Linux runs `rpm` files.  The easiest way to deploy Qt apps is to deploy them for the same system you are developing. If you want to compile for a different OS, Linux to Windows for example, you will have to search for information about cross compiling and deploying applications from Linux to Windows. This is a hard proccess and will not be covered here.

### Windows 10

