---
layout: post
title: "Facelift at WhitePeakSoftware.com"
published: 2009-03-11 09:27:36
---
Last week I flipped the switch on the White Peak Software website rolling out the new site design. If you are reading this in a RSS feed reader then pop over to [whitepeaksoftware.com](http://www.whitepeaksoftware.com/) to check out the new website design. The new design was done by Michael and Jeff over at [Ocupop](http://ocupop.com/), the same design company that designed the new Labor Mate app icon.  I highly recommend these guys. 

The roll out of the new website did not go as smooth as I had hoped, but it did go well.  A lot of work was done behind the scenes so the roll out could potentially have had many more problems then it did.  The site was moved from Microsoft Windows server running IIS to a new Ubuntu (Linux) server running apache2.  This meant I needed to copy over a number of download files, pad files, xml version files, and so on.  It also meant I needed to map old URLs to new URLs so bookmarks, old links, and so on take the  visitor to the correct web page.  This caused at least 1 known hiccup for a customer who had just purchased a license for SMTP Diagnostics and was trying to download the latest version as I was rolling out the new website. 

In addition to moving the site to the new server I migrated the website application from ASP.NET/C# to [Python](http://www.python.org/) with [web2py](http://web2py.com/).  This is actually something I'm very excited about.  The original system was messy and adding new features to the application was not only a pain but time consuming as well.  Moving to Python and web2py allows me to reduce the amount of source code needed to run the website.  And going forward I will be able to add new content and features faster. For instance, I can finally incorporate a lost license key retrieval feature (coming soon) and I can build a better order management backend system needed to manage orders.  Good things for both you the customer and me. 

The new look also meant a new look for the store front and blog sites.  The store front gave me trouble due to some limitation in the ecommerce provider's template engine.  I'm not happy with the final results but at least the store front is functional.  And the typical site visitor will probably never notice the minor differences between the main site and the store front. 

So as you can see a number of things were included in the roll out beyond just a new look.  The site was moved to a new server running a different operating system.  The code base was moved to a new programming language and platform.  And a new look was applied to the website, store front, and blog. \[Note: I still need to update the [support forums](http://forum.whitepeaksoftware.com/forums/) with the new look, but that's a topic for a different posting.\] 

Despite the number of things that had to happen, I felt the roll out for the new site went as well as can be expected. As I said I wish it had been a bit smoother but there could have been a lot more problems.  The lesson learned from the experience: Don't try to do so much in a single roll out.
