<h1 align="center">Qt's Beginner's guide</h1>

## Contents
- [0. Overview](#0-overview)
- [1. Pre installation in different OS:](#1-pre-installation-in-different-os)
    - [Windows 10](#windows-10)
    - [Ubuntu 22.04](#ubuntu-2204)
    - [Red Hat Enterprise Linux 9.3](#red-hat-enterprise-linux-93)
- [2. Installation](#2-installation)
- [3. First Project](#3-first-project)
    - [Widgets Project](#widgets-project)
    - [QML Project](#qml-project)
- [4. Releasing your application to other PCs](#4-releasing-your-application-to-other-pcs)
    - [Windows 10](#windows-10-1)
    - [Linux](#linux)

## 0. Overview

> [!NOTE]  
> This procedure has been tested as of January 2024 with Qt 6.6.1. Things might change in the future

In this tutorial we will go over how to install an Open Source instance of Qt, develop a simple aplication and ship it to different users with different OS!.

This is an easy example on how to deploy an app as fast as possible. So the easiest and cleanest method will always be chosen.

I will provide the specific instructions for:
- Windows 10
- Ubuntu 22.04
- Red Hat Enterprise Linux 9.3.
- Arch Linux

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

The yum package man ager tells me that "C development Tools and Librariesis not available". So instead I used the "Development Tools" package and I got it to work:

```
sudo dnf groupinstall "Development Tools"
sudo dnf install mesa-libGL-devel
```

I also had to install these dependencies:

```
sudo dnf install xcb*
```

Then right click on the downloaded .run file and Allow executing file as a program:

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtRedHatExecute.PNG" width="40%">
</p>

### Arch Linux

Not named in [the official qt6 docs](https://doc.qt.io/qt-6/linux.html). But on a "normal" Arch Linux installation you should already have the Development Tools. The missing packages are the xcb ones. So a simple way of downloading every single package that begins with xcb is:

```
sudo pacman -S $(pacman -Ssq xcb)
sudo pacman -Sy base-devel  # Optional 
```

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


Accept all the Qt licences and click Install. If you chose the Custom installation as I did in the pictures, the download will be around 8GB. If you select the whole Qt 6.6.1 package, the download will be around 16GB on Linux and 40GB on Windows. 

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

#### Troubleshooting on RHEL 9.3

After the instalation on RHEL 9.3 if you try to run Qt Creator, it probably won't start and if you go to ```/home/$USER/Qt/tools/QtCreator/bin/qtcreator``` and start qtcreator by typing ```./qtcreator``` you might get this error:

```
Warning: Ignoring WAYLAND_DISPLAY on Gnome. Use QT_QPA_PLATFORM=wayland to run on Wayland anyway.
qt.qpa.plugin: Could not load the Qt platform plugin "xcb" in "" even though it was found.
This application failed to start because no Qt platform plugin could be initialized. Reinstalling the application may fix this problem.

Available platform plugins are: eglfs, linuxfb, minimal, minimalegl, offscreen, vkkhrdisplay, vnc, wayland-egl, wayland, xcb.

Aborted (core dumped)
```

You will have to type this every time you want to launch the program.

```
export QT_QPA_PLATFORM=wayland
/home/$USER/Qt/Tools/QtCreator/bin/qtcreator
```

A more permanent solution is to modify the .desktop file in ```/home/$USER/.local/share/applications``` and edit the ```org.qt-project.qtcreator.desktop```. Change the Exec line into this:

```
Exec=env QT_QPA_PLATFORM=wayland "/home/$USER/Qt/Tools/QtCreator/bin/qtcreator" %F
```

Now Qt Creator will succesfully launch in RHEL.

## 3. First Project:

TODO

#### Widgets Project

#### QML Project

## 4. Releasing your application to other PCs

Once you have finished developing your application. It is time to "deploy the application". Which means, compiling it and putting into a folder with all the necessary files so other people with different PCs and OSs can run it without installing Qt Creator.

Windows runs `.exe` files, Linux runs `rpm` files.  The easiest way to deploy Qt apps is to deploy them for the same system you are developing. If you want to compile for a different OS, Linux to Windows for example, you will have to search for information about cross compiling and deploying applications from Linux to Windows. This is a hard proccess and will not be covered here.

### Windows 10

[Qt's official documentation](https://doc.qt.io/qt-6/windows-deployment.html) indicates us how to do it.

For widgets applications you have to move the generated .exe file into a new empty folder, and in the powershell, write the directory of that folder as the argument in the windeploy function:

```
C:\Qt\6.6.1\mingw_64\bin\windeployqt.exe C:\Qt\Examples\Qt-6.6.1\designer\build-calculatorform_mi-Desktop-MinSizeRel\calculatorform_mi.exe
```

For an application developed with QML. You have to add the ```--qmldir``` and the ```<path-to-app-qml-files>``` in your powershell

```
C:\Qt\6.6.1\mingw_64\bin\windeployqt.exe --qmldir PONERQMLDIR C:\Qt\Examples\Qt-6.61\designer\build-calculatorform_mi-Desktop-MinSizeRel\calculatorform_mi.exe
```


### Linux

[Qt's official documentation](https://doc.qt.io/qt-6/linux-deployment.html) indicates us how to do it