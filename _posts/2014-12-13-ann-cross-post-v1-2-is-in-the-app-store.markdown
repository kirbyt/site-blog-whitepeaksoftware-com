---
layout: post
title: "ANN: Cross Post v1.2 is in the App Store"
categories:
    - announcements
    - cross post
    - ios
---
The latest update to Cross Post has hit the App Store. This update fixes bugs and adds new features including:

- A photo album picker.
- An option to attach the last photo taken.
- Smart quotes and punctuations.
- *wpscrosspost* URL scheme for Launch Center Pro support

## Smart Quotes

To turn on smart quotes and punctuations, tap the post composer and select **Use Smart Quotes** in the edit menu. Select **Use Dumb Quotes** to turn it off.

![](https://farm8.staticflickr.com/7524/15392871453_65c9d32fd2_z.jpg)

## URL Scheme

**wpscrosspost** has been added as the custom URL scheme for Cross Post. You can use it to launch Cross Post from other apps. There is also a compose action that lets you set the post text and even attach the last photo.

To launch Cross Post, use the URL:

  **wpscrosspost://**

To compose a new post, use:

  **wpscrosspost://compose?text=[text]&attachment=photo:last**

Both parameters are optional. The parameter *text* can be any text that you want to include in the post. The parameter *attachment* lets you attach a photo to the post. At the moment **photo:last** is the only supported value for *attachment* parameter.
