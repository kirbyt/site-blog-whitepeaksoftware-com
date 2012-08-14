---
layout: post
title: "Section 3.3.1 Does Not Prevent Cross Platform Development"
published: 2010-05-04 10:04:49
---
Apple has come under fire over its latest developer agreement for iPhone OS developers. The section causing concern is 3.3.1 which says applications must be originally written in Objective-C, C, and C++ (or JavaScript when using the WebKit engine). This restricts developers from using other cross-platform development tools such as Adobe's Flash CS5 packager.

Steve Jobs has clearly explained his [thoughts on Flash](http://www.apple.com/hotnews/thoughts-on-flash/), but more importantly he talks about the impact felt from third party cross platform development tools. Those of us who have been in the software industry long enough will likely agree with Steve's comments regarding the impact cross platform development tools have on software development. 

An interesting fact: An abstraction layer separating the developer from the platform does not have to come from a third party to cause problems. When Microsoft first released Windows 7 the only way to take full advantage of the new features was to use a development tool that allowed the developer to talk directly with the platform, in this case the Windows API. This may come as a surprise to some but it meant you could not use .NET including C# to tap into the newest Windows 7 features. Microsoft's own layer, the .NET Framework, prevented C# developers from tapping into the latest features in Windows 7. A developer's only option at the time was to use Visual C++ or Delphi.

For years programmers have dreamed of some magical development tool that would allow them to write code once and run it anywhere. Sound familiar? That was the promise made by Java over a decade ago. Guess what. It never really happened. Most cross platform applications are subpar and do not feel or behave like applications written specifically for the platform. 

This brings me to a comment I read this morning in an [article](http://www.electronista.com/articles/10/05/03/apple.could.dodge.ftc.complaints.with.sdk.change/) speculating Apple may change the iPhone developer agreement to avoid an antitrust case.

"Mobile advertiser Greystripe's CEO Michael Chang has explained that writing an app using Flash CS5 for the iPhone could cost $75,000 initially but would cost just a few thousand dollars more to port to Android. Without Adobe's tool, however, developers could be forced to rewrite from scratch and spend as much as they did before. The sheer expense could be considered anti-competitive as it would make writing for more than one platform cost-prohibitive for smaller studios."

First of all, writing a top quality cross platform application is hard and costly. It doesn't matter what development tools you are using. Second and more important, when did Flash CS5 become the **only** cross platform development option? Last time I checked C and C++ were considered cross platform programming languages with C being one of the more popular options for cross platform development. The iPhone developer agreement doesn't restrict the use of these cross platform programming languages.

Yes, it would be great if cross platform development were cheaper but to say the expense associated with cross platform development should be considered anti-competitive is just down right stupid. The developer agreement is not preventing cross platform development. It is preventing the use of third party cross platform abstraction layers that separate the developer from the platform. 

Why stop with Flash? Let's start a petition against Apple because I can't use my favorite programming language, Pascal. I think I should be able to use Pascal as my programming language of choice and not just for iPhone OS development. I want to use Pascal for any device and platform. Pascal should be a first class programming language for the Kindle, PSP and DSi, and Amazon, Sony and Nintendo should be responsible for making this happen otherwise face accusations of being anti-competitive.

This grumbling about section 3.3.1 in the iPhone developer agreement boils down to two things:

1) Businesses want to reduce development cost.

2) There are lots of lazy programmers out there.

Let's discuss these 2 points a bit further. Building a cross platform application using a tool like Flash CS5 might help businesses reduce development cost. Will it help a business be successful? Maybe and maybe not. Success depends on whether or not customers like the apps produced by the business. Personally I dislike non-native apps because most are subpar and behave differently. If the apps are subpar then a business will likely not succeed despite using third party cross platform development tools and saving a few dollars in development cost.

Now on to lazy programmers. Actually saying "lazy" is probably the wrong word to use. I often say I'm a good programmer because I'm lazy. I don't like to repeat the same task over and over, so I write a program to do the task for me. This makes me lazy because I find ways to reduce the amount of work I need to do. So being a lazy programmer can actually be a good thing. The [DRY](http://en.wikipedia.org/wiki/Don't_repeat_yourself) principle is another example of being a good type of lazy programmer.

In my second point I'm referring to a different type of lazy programmer, a bad lazy programmer. This is typically a programmer who does programming as a job and programming is just that, a job. This type of programmer doesn't have the same love for programming that someone like me has. This type of programmer isn't interested in learning new programming languages and this type of programmer definitely is not the type who would be programming even if he or she didn't get paid to do it.

The bad lazy programmer wants everything to be easy. He wants to write an app once and have it run everywhere. He's main goal is to move up the corporate ladder in hopes of making more money. And what better way to move up the ranks than showing your company how it can reduce development cost by using a third party abstraction layer and tool.

These are the types of programmers complaining about section 3.3.1. Programmers too lazy to learn a new programming language such as Objective-C, C or C++. Yes, these languages are harder to learn than many of the newer programming languages including those fun scripting languages used by many today. And yes, I might be a little basis because I first learned C over 25 years ago and I have no problems using it today. But instead of bitching about terms in the developer agreement why not accept the fact that cross platform development is hard and costly. After all you can still use the same C and C++ code in both iPhone and Android apps. Yes, that's right. The [Android NDK](http://developer.android.com/sdk/ndk/index.html) (Native Development Kit) does exists and allows C and C++ code to be used to implement parts of your application. It's not easy but it's possible.

Adding more fuel to my fire is this comment in NY Post [article](http://www.nypost.com/p/news/business/an_antitrust_app_buvCWcJdjFoLD5vBSkguGO#ixzz0myFnh9pP) from yesterday:

"Regulators, this person said, are days away from making a decision about which agency will launch the inquiry. It will focus on whether the policy, which took effect last month, kills competition by forcing programmers to choose between developing apps that can run only on Apple gizmos or come up with apps that are platform neutral, and can be used on a variety of operating systems, such as those from rivals Google, Microsoft and Research In Motion."

Yes, exactly what world needs. Apps that are platform neutral. But wait! Don't we already have that today in the form of web-based apps? And doesn't the iPhone and iPad come with Mobile Safari capable of running web-based applications "that are platform neutral and can be used on a variety of operating systems"?

Ah, but you say you want native built apps that take advantage of the platform. That's cool. You can have that too. But this notation that you can have a native built app that is also platform neutral is just crazy talk. It's not going to happen anytime soon and it shouldn't be Apple sole responsibility to make it happen.

I wonder, if Objective-C were more popular would the torch carrying mob go after Google, Research in Motion, and Microsoft for not supporting it on their mobile devices?
