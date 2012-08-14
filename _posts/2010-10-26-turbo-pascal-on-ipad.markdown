---
layout: post
title: "Turbo Pascal on iPad"
published: 2010-10-26 14:19:39
---
Isn't not like I need a distraction from work, but I couldn't resist this one. I saw a tweet about iDOS, a DOS emulator app just released for iPad and iPhone. For fear the app will be pulled from the App Store, I bought it right away. Besides, it's only 99 cent.

I read a story about someone [installing Windows 3.0 inside of iDOS](http://toucharcade.com/2010/10/26/idos/). Sounds cool but I'm not interested in Windows 3.0. Instead, I decided to install Turbo Pascal. Embarcadero recently posted [Turbo Pascal v5.5 as a free download](http://edn.embarcadero.com/article/20803) so the first thing I did was to grab a copy of it. Next, I grabbed an [unzip program](http://www.info-zip.org/UnZip.html#Downloads) so I can unzip TP55.zip in iDOS. (Save time and [go here](ftp://ftp.info-zip.org/pub/infozip/msdos/) to download unz552x3.exe.)

Here are the remaining steps I followed to get Turbo Pascal up and running on my iPad.

  * Connect the iPad to iTunes.

  * In iTunes, go to the Apps tab for the connected iPad and scroll down to the file sharing section.

  * Drag and drop TP55.zip and unz552x3.exe to iDOS.

  * Sync the device.

  * Once sync is complete, launch iDOS on the iPad. You'll find the two files in the root directory.

  * Copy unz552x3.exe to a new directory, or just run it in the root directory. This will uncompress the unzip utility files. I prefer running it in a separate directory to keep the root clean.

  * Unzip TP55.zip. This will create two directories, DISK1 and DISK2. Again, I copied TP55.zip to a temp directory before unzip.

  * Run install.exe found in the DISK1 directory. If your experience is similar to mine, you will get a message saying to insert the oop/demos/bgi/doc diskette. I'm guessing the installer can't find the directory DISK2.

  * At this point, I aborted the install. Not to worry. Turbo Pascal's IDE, compiler, etc have been installed.

  * By default, the IDE can be found in c:\TP. The program file to run is turbo.exe.

That's it. Happy coding!

Update: If those not lucky enough to grab a copy of iDOS from the App Store, you can [download the source code for DOSPad](http://code.google.com/p/dospad/) and build your own version. 

![photo-4.PNG](http://blog.whitepeaksoftware.com/wp-content/uploads/2010/10/photo-41.PNG)
