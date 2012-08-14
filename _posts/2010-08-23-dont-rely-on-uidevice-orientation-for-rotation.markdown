---
layout: post
title: "Don't Rely on UIDevice orientation for Rotation"
published: 2010-08-23 09:01:31
---
Last week I tweeted about having rotation issues with an iPad app I'm working on. This is the second time in recent weeks I've encountered rotation issues in an app. In both instances I was using a `UIScrollView` so I started thinking the `UIScrollView` was source of my problems. In the most recent instance the `UIScrollView` contains a `UIView` that uses a number of `CALayer` instances for content display.

For those who don't know, in Mac OS X 10.5 and greater, `CALayer` has the `autoresizingMask` property. Unfortunately this property does not exists under iOS, so it's up to my code to do the resizing CALayers as needed. This is where the rotation issue revealed itself.

As the device is rotated from portrait to landscape, or vice versa, my view must resize and adjust the layout of the CALayers. Because `UIView` does not receive the rotation notifications I decided to be smart and use the [orientation property](http://developer.apple.com/iphone/library/documentation/UIKit/Reference/UIDevice_Class/Reference/UIDevice.html#//apple_ref/doc/uid/TP40006902-CH3-SW3) from `UIDevice`. So in my view I had code similar to this:

    UIInterfaceOrientation interfaceOrientation = [[UIDevice currentDevice] orientation];

    if (UIInterfaceOrientationIsLandscape(interfaceOrientation) == YES) {

        // Adjust for landscape.

    } else {

        // Adjust for portrait.

    }

What I failed to realize, however, is that the property `orientation` will **always** return 0 unless orientation notifications are enabled. Here is a quote directly from the Developer Documentation:

"The value of this property always returns 0 unless orientation notifications have been enabled by calling beginGeneratingDeviceOrientationNotifications."

Doh! Guess I should have RTFM sooner.

Because the `orientation` property will return 0, sometimes the view in my app would not rotate. But I didn't know this was the source of the problem at the time.

After banging my head over and over on the wall, I decided to investigate exactly what was happening. I never suspected `[[UIDevice currentDevice] orientation]` but eventually I noticed it was returning 0. This seemed odd so I checked the Developer Documentation. I wasn't expecting to learn anything new. Boy, was I wrong. I was surprised when I read the property always returns 0 when orientation notifications are not enabled.

I now knew the source of my rotation problems, and a likely quick fix to the problem would have been to call `beginGeneratingDeviceOrientationNotifications`, get the device orientation, then call `endGeneratingDeviceOrientationNotifications`. But this just seemed wrong to me. The better fix, in my opinion, is to rely on the rotation notifications received by the view controller, so that's exactly what I did.

Now in my particular situation, there are two times I want to resize and layout the CALayers in the `UIView`. One of those times is when the device is rotated, which is when the view controller receives the `willRotateToInterfaceOrientation:duration:` message. This was easy to solve. I added an `adjustLayoutToInterfaceOrientation:` method to my `UIView` and I call the method inside the UIViewController's `willRotateToInterfaceOrientation:duration:` method. For example:

    - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration 

    {
        [view_ adjustLayoutToInterfaceOrientation:toInterfaceOrientation];
    }

The other time my _UIView_ needs to adjust the layout of the CALayers is when the _UIScrollView_ scrolls. I'm using a modified version of Matt Gallagher's [virtual pages in a UIScrollView](http://cocoawithlove.com/2009/01/multiple-virtual-pages-in-uiscrollview.html) approach, so the contents of my view changes as the user scrolls. This is where, previously, I was trying to be smart and use the _orientation_ property from _UIDevice_. But what I really need is the current orientation as received in the most recent call to `willRotateToInterfaceOrientation:duration:`.

My solution was to add the ivar currentOrientation to my view controller. My view already has a reference to the view controller. I exposed currentOrientation so my view can retrieve the property value. This allowed me to replace the `[[UIDevice currentDevice] orientation]` code with `[controller currentOrientation]`. Now the view always knows the current orientation and the app does not need to enable orientation notification in code.

As a result, the first code snippet in this posting changes to:

    UIInterfaceOrientation interfaceOrientation = [controller_ currentOrientation];

    if (UIInterfaceOrientationIsLandscape(interfaceOrientation) == YES) {

        // Adjust for landscape.

    } else {

        // Adjust for portrait.

    }

And the `willRotateToInterfaceOrientation:duration:` implementation changes to:


    - (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration 

    {

        currentOrientation_ = toInterfaceOrientation;

        [view_ adjustLayoutToInterfaceOrientation:toInterfaceOrientation];

    }

This has been an eye opener for me, and I now have a new rule of thumb. Never use `UIDevice orientation` in code that is responsible for the resizing and layouts of subviews and CALayers.
