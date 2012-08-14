---
layout: post
title: "Using UIPopoverController with iOS 4"
published: 2010-06-10 18:37:25
---
I ran into an interesting bug today while testing Hey Peanut on iOS 4. For those who don't know, Hey Peanut is a universal binary, which means it runs on both the iPhone and iPad. My iPhone has the GM version of iOS 4 installed on it, which I'm using to test my apps under iOS 4. 

Because Hey Peanut can run on both the iPhone and iPad, my code must include certain checks to avoid crashes. One check the code makes is to determine if the class UIPopoverController is available or not. Prior to iOS 4, this class was only available in iOS 3.2. The current release of iOS on the iPhone is version 3.1.3, and it does not include this class. To make use of the popover I use code such as the following:
    
       Class popoverControllerClass = NSClassFromString(@"UIPopoverController");
    
       if (popoverControllerClass) {
    
          popoverController_ = [[UIPopoverController alloc] initWithContentViewController:[self imagePicker]];
    
       }

Turns out there is a big problem with this code under iOS 4 causing Hey Peanut to crash each time. It wasn't obvious to me at first why this code was failing but as I thought it more, and as I talked through the issue with an Apple engineer, I realized, "Duh! iOS 4 is running on the iPhone, not the iPad." Simply checking for the existence of the class isn't good enough any more. Instead, I need to also check the device type. So with a quick change to the code, shown below, I was able to fix the crash in Hey Peanut. The code now checks that the class is available and is running on a iPad.
    
       Class popoverControllerClass = NSClassFromString(@"UIPopoverController");
    
       if (popoverControllerClass **&& UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad**) {
    
          popoverController_ = [[UIPopoverController alloc] initWithContentViewController:[self imagePicker]];
    
       }
