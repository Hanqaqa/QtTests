# Learning Qt from scratch for Windows and Linux

> [!NOTE]  
> This procedure has been tested as of January 2024 with Qt 6.6.1. Things might change in the future

In this tutorial we will go over how to install an Open Source instance of Qt, develop a simple aplication and ship it to different users with different OS!

This is an easy example on how to deploy an app as fast as possible. So the easiest method will always be chosen. For example you could `sudo apt install qt6-base-dev` and then link everything, but this would make it more complicated.

I will provide the specific instructions for:
- Windows 10
- Ubuntu 22.04
- Red Hat Enterprise Linux 9.3.

Whenever they are necessary. If the instructions are platform independent, the instructions will only be explained once.

## 1. Pre installation in different OS:

All of them begin by downloading the installer from their [Qt Open Source Development page](https://www.qt.io/download-open-source) and clicking in [Download the Qt Online installer](https://www.qt.io/download-qt-installer-oss) and choosing your system.

#### Windows 10

The simplest install. Double click the downloaded .exe and the installation will start.

#### Ubuntu 22.04

First we have to install some required libraries:

```
sudo apt install build-essential libgl-dev libxcb-xinerama0 libxcb-cursor0 
```

Then right click on the .run file and Allow executing file as a program:

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtUbuntuExecute.PNG" width="40%">
</p>

Close the window and double click the .run file to start the installation

#### Red Hat Enterprise Linux 9.3

Bla bla algo de sus paquetes dnf


## 2. Installation in different OS:

The first step is giving your Qt credentials. If you don't have one, simply [create a new account in their webpage](https://login.qt.io/register). It's free!

<p align="center">
    <img src="https://github.com/Hanqaqa/QtTests/blob/master/Assets/Screens/QtInstall1.PNG" width="40%">
</p>

Accept [Qt's licensing terms](https://www.qt.io/licensing).

Tl;dr: if you use the Open Source license, using Qt is free as long as you also Open Source your project.

