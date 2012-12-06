---
layout: post
title: "What Was The Future of Web Apps?"
categories: 
- fowa
---

I went to either the first or second Carsonified Future of Web Apps/Design conferences -- I think it was back in 2005, so over seven years ago now.  I've been thinking a lot about that time and the things that used to preoccupy me: 37signals, Ruby on Rails, Digg, Apple products, Ajax, and IE bugs spring to mind.

What happened since then?

The most obvious answer has to be "the cloud".  Historically, distributed systems and software/platform as a service have existed since before 2005, but Amazon launched AWS in 2006 and that's when the term started to become widely known.  At least that's when journalists started using it in an annoying way.

Ajax exploded, JSONP became the norm, client-side JavaScript evolved from something evil to exciting and finally accepted.  jQuery rules the roost.  There are those working to break client-side scripting into smaller, more manageable libraries -- the [Component](https://github.com/component) and [Ender](https://github.com/ender-js/Ender) spring to mind.

XML RPC is now largely regarded as a painful corporate technology, while RESTful JSON APIs are far more common on the contemporary Web.

Authentication has been democratised by OAuth -- I know I'm more likely to try something out if I see "sign in with Twitter" or GitHub.

Speaking of Twitter... It's amazing to think about that first conference existing _without_ Twitter.  Twitter appeared in 2006, and has been prominent at many related conferences since then.

2007: iPhone.  At first Apple claimed applications would be purely delivered through Safari, but eventually the App Store appeared and changed everything.  Although industry stalwarts like Ericsson, HP, Palm, Nokia, and even HTC (they had early touchscreen phones) were all making smartphones, Apple's move away from physical buttons stole everyone's imagination.  I'm not sure I'd have even used Twitter at conferences without a smartphone.

Hacker News: 2007.  I use Hacker News (and reddit) purely as a way to find interesting content to read.  One thing that I like about Hacker News is it often feels like programmers trying to hack business -- a pool of shared experienced to help the wider community conquer business-related issues.  That community has done a lot to sell entrepreneurialism to fellow nerds.

Heroku: 2007.  Initially aimed at Ruby developers, Heroku simplified web application deployment.  Thinking back to 2005, it's something I definitely wanted at the time, and I had my own ridiculous cocktail of scripts that did something similar.  I'm still running web applications on servers that originated in that era, and as a lone developer (with a network of helpful friends) I wish I was running my apps on Heroku or similar services.

In 2008 GitHub was launched, and is probably one of the only companies I've consistently wished I worked at.  Before GitHub, most of us struggled along with Subversion and sites like SourceForge, but it's fair to say GitHub has revolutionised collaboration for programmers and web developers in general.

For me 2009 is when everything started to change.  My interest in JavaScript grew to the point when I felt the need to start writing [DailyJS](http://dailyjs.com/), which I still enjoy running today.  In the same year Node was released, and coincidentally Redis.  Both had a focus on performance, addressing issues that were hinted at years before but became more widely known around this time.  The main issue being I/O as the major bottleneck for web application performance.  MongoDB was also released in 2009, so this was really the nexus of NoSQL.

I remember Blaine Cook's talk about using XMPP to make scalable web applications back in 2008.  The concept of publish/subscribe has been embodied in many popular technologies since then, and event-based programming in general is pretty fundamental at this point.

I'm aware events is not the only solution.  I enjoy my share of Go and Clojure, but the production realtime software I've made has been powered by Node.

After 2009 apps started to take over.  I think if I ran a conference like The Future of Web Apps I'd have wondered if native smartphone apps were a threat to the potential audience size.  I still seem to meet _far_ more developers who write Ruby, Python, or use Microsoft's web development technologies than write Objective-C or use Android's Java SDKs.  I went to an iOS developer conference in 2010, didn't meet many iOS developers but landed a contract from someone looking for Objective-C programmers.

As a web developer who also writes "native" code I saw apps as an opportunity, and it forms a healthy part of my business as a freelance programmer.  In 2012 it felt like an equal share of startups on Hacker News were working on web applications or mobile apps (or both).

Around  2010 is when responsive design started to become prominent.  Designers were having to support multiple types of mobile devices, including the iPhone 4's Retina Display.  Resolution independence is something that's been around since TeX, but the reliance on bitmap graphics in desktop and web design makes it difficult to use everywhere.  Responsive design has given us web sites that are able to serve different images (or totally different layouts) based on the device's resolution.  This is a good thing, but I wish designers would figure out the difference between the _brand name_ "Retina Display" and the concept of supporting high DPI displays in general.

Since 2005 a lot of things have changed for the better: HTML5 seems to have caught on, proprietary technologies like Flash and Silverlight have received a steady drumming, Git lets me work offline and collaborate without many headaches, Node lets me write JavaScript on the server in a way that I enjoy.

I don't think the _Future of..._ conferences were ever meant to be prescient, but I feel like web apps still haven't met their full potential.  Yes, small ARM computers and 3D printing are exciting, and I anticipate exciting events to occur in the hardware hacking space.  However, I'll still be juggling hundreds of usernames and passwords, web applications that can't talk to each other intelligently, and vendor-specific rendering bugs.

Here's to the future of web _hacks_!

