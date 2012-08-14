---
layout: post
title: "How to Translate an iPhone App Name"
published: 2009-11-06 21:15:56
---
[](http://blog.whitepeaksoftware.com/wp-content/uploads/2009/11/iPhoneJapanese1.png)[![iphone-ja](http://blog.whitepeaksoftware.com/wp-content/uploads/2009/11/iphone-ja.png)](http://blog.whitepeaksoftware.com/wp-content/uploads/2009/11/iphone-ja.png)I recently went through the process of translating Labor Mate into 8 different languages. Unfortunately the phrase "Labor Mate" doesn't translate well into other languages such as Japanese and Germany so the translators came up with new localized app names. The problem I had though was displaying the translated app name on the iPhone's springboard. 

After a bit of experimenting I finally got the translated app name to display. Turns out the steps are fairly simple. Here are the steps I took to localize the app name: 

  1. Added the property LSHasLocalizedDisplayName to Info.plist and set to True (mark the checkbox). Note that Xcode might change the property name to "Application has localized display name".

  2. Add a new strings file called InfoPlist.strings.

  3. Make the file InfoPlist.strings localizable.

  4. Add the languages that will have a translated app name.

  5. For each localized version of the InfoPlist.strings file, add the follow string key/value pair: CFBundleDisplayName = "App Name";

  6. Be sure to set "App Name" to the translated value.

That's it. 

[![Info.plist](http://blog.whitepeaksoftware.com/wp-content/uploads/2009/11/Info.plist.png)](http://blog.whitepeaksoftware.com/wp-content/uploads/2009/11/Info.plist.png)

[![InfoPlist.strings](http://blog.whitepeaksoftware.com/wp-content/uploads/2009/11/InfoPlist.strings.png)](http://blog.whitepeaksoftware.com/wp-content/uploads/2009/11/InfoPlist.strings.png)

Speaking of language translation, I hired the fine folks over at [iphone-i18n.com](http://iphone-i18n.com/) to translate the app description, keywords, and in-app strings for Labor Mate. I met Chuck and Judith of iphone-i18n.com at [360iDev|Denver](http://www.360idev.com/). They impressed me with their knowledge of internationalizing and localizing applications as well as their specific technical how to knowledge for the iPhone. 

If you are an iPhone developer looking to [translate your iPhone application](http://iphone-i18n.com/) into other languages then I highly recommend talking with Chuck and Judith at iphone-i18n.com.
