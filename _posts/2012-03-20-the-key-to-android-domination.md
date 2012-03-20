---
layout: post
title: "The Key to Android Domination"
tags:
- android
- programming
---

Where's Google's Android IDE?  They have good Eclipse support which goes some way to competing with Apple's Xcode, but the experience of developing with Xcode is far more focused and arguably better.

I don't actually think developing a native Windows, Linux, and Mac OS IDE really fits with Google's approach -- they'd rather give developers the platform then get out of the way by allowing us to use our own tools.  However, there's one huge pain point in iOS development that Google could attack to win over developers: the difficulty of getting _your_ code running on _your_ device.

### The Developer's Experience

After downloading several gigabytes, then setting up the necessary certificates, a developer can finally run their first _Hello World_ application on an iOS device.  This represents a weakness in Apple's approach that could be exploited.

How?  Well, given that it's unlikely that Google will release a cross-platform IDE themselves, how about creating a web-based IDE?  That might sound like a nightmare to Vim hackers like me, but hear me out.  Imagine if Google had a developer site that ran something as high quality as [Cloud9 IDE](http://c9.io/) (which has Vim shortcuts), with a _built-in Android simulator_.

Within minutes developers could run a simple application in the simulator, without even owning a device.  No gigabyte downloads, no confusing certificates.  Google's web-based market can trigger downloads on Android devices, so how about linking devices with the IDE so apps can be sent directly to a device to run it?  A new Android developer with little experience could have a real app that they've made running on a device in minutes.

This also makes a huge amount of sense given ChromeOS and Chromebooks.

### Remove the Barriers

That's what Apple and Google's goal for developers should be: to let people run code with as few barriers as possible.  I think a robust web-based IDE would play a huge part in this, and the first to deploy it will get a huge win in terms of developer support.
