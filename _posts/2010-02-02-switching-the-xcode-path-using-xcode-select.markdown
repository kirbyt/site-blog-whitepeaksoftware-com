---
layout: post
title: "Switching the Xcode Path using xcode-select"
published: 2010-02-02 11:46:51
---
I currently have two versions of Xcode installed on my primary development machine. One version is the official release from Apple and the other version is a beta version. I install the latest release in the default directory /Developer and I install beta releases in a parallel directory, /Developer-n.n.n where "n.n.n" is the Xcode version number. 

I also have a number of different distribution certificates for making adhoc and distribution builds for my iPhone apps and client apps. I use different keychains to manage the multiple certificates. Because of this I rely on bash scripts to make adhoc and distribution builds of the different iPhone apps that I am responsible for. 

The latest Xcode beta release does not include iPhone OS SDK 2.2.1. Not really a big deal for me since the SDK is included in Xcode 3.2.1. However, to my surprise when I ran a script for a 2.2.1 app the build failed to find the 2.2.1 SDK. Turns out installing the latest beta release replaces the _/usr/bin/xcodebuild_ command. Oh know! My build script no longer works for 2.2.1 apps. 

Thanks to a tip from [@joar_at_work](http://twitter.com/joar_at_work) on Twitter I was able to solve the problem. The magical command I needed was _/usr/bin/xcode-select_. This command allows you to change the Xcode directory used by xcodebuild. For instance, in my situation xcodebuild was looking at /Developer-3.2.2 which does not include iPhone OS SDK 2.2.1. By using xcode-select I was able to point xcodebuild to the /Developer directory. 

Switching directories is simple with xcode-select. Just use the -switch option. For example: **xcode-select -switch /Developer**. This did the trick for me and my build scripts were once again working with the correct Xcode environment.
