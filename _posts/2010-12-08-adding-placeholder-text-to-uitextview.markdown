---
layout: post
title: "Adding Placeholder Text to UITextView"
published: 2010-12-08 10:19:19
---
I decided one of my apps should display placeholder text in a text view. Unfortunately UITextView does not have a placeholder property. I've always thought this is odd especially given the fact that UITextField has a placeholder property. 

I googled to see what others have done. I found [some good approaches](http://stackoverflow.com/questions/1328638/placeholder-in-uitextview) but no one solution that I liked. So I decided to write my own borrowing from the various ideas of others. The end result is KTTextView.

[KTTextView](https://github.com/kirbyt/KTTextView) derives from UITextView and enhances it with new features. At the moment the only new feature is the placeholder text. The **placeholderText** property works same as UITextField's placeholder property. I also added the property **placeholderColor** in case an app has the need to use a color different then the default placeholder color.

KTTextView is hosted on [github](https://github.com/kirbyt/KTTextView). The project includes a sample app showing how to use KTTextView. I plan to add more features as time allows. One feature I want to add is an option to display the text view in a rounded rectangle giving it a similar look to UITextField. In the meantime, I hope you find the KTTextView's current implementation useful.
