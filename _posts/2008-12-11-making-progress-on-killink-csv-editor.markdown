---
layout: post
title: "Making Progress on Killink CSV Editor"
published: 2008-12-11 21:38:52
---
I am slowly but surely making progress on version 2 of Killink CSV Editor. I'm focusing most of my attention right now on huge (aka, very large) file support.  You know, files greater than 1GB.  My goal is to support up to 4GB file sizes under the 32-bit version of Windows XP and Vista.  However, a major challenge is how to handle sorting.  Image opening a very large file, say 3GB, highlighting columns B, D, and G, and sorting on all three columns.  With what will most likely be millions and millions of rows in the file, sorting is going to be a little slow, so I need to really ramp up the sort algorithm to ensure descent performance.  And I need to make sure memory usage is low at the same time.  Definitely fun challenges to tackle with version 2.
