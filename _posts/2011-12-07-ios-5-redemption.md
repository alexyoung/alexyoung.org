---
layout: post
title:  "iOS 5 Redemption: ARC, UIAppearance, Blocks"
author: "Alex Young"
tags:   
- iphone
- iOS
- programming
- design
---

iOS 5 redeems iOS development in my eyes through several new features.  There are Objective-C changes, but also new APIs that make common tasks a lot easier.  When Apple released the new SDK, I created a blank project to see what fundamental project organisation changes had been made, and the only major thing I noticed was the addition of Storyboards.

Unfortunately, Storyboards are not compatible with iOS 4.  It may be possible to create a fork of a project with iOS 4 support that has a different UI, or to somehow conditionally use Storyboards.  However, we all know how much hand-coded interface development is required for real iOS projects, so I can't see myself using Storyboards.

### Automatic Reference Counting

> Automatic Reference Counting implements automatic memory management for Objective-C objects and blocks, freeing the programmer from the need explicitly insert retains and releases. It does not provide a cycle collector; users must explicitly manage lifetime instead.

_From_: [LLVM: Automatic Reference Counting](http://clang.llvm.org/docs/AutomaticReferenceCounting.html)

When friends tell me they're learning iOS development, the first thing I find myself helping them with is memory management.  Learning where to use `retain`, `release`, and `autorelease` isn't too difficult, but it's sometimes hard for people to realise it's a convention rather than something the compiler will automatically help with.  That has now all changed with Automatic Reference Counting (ARC).

ARC is a build setting, and once it's enabled properties get new keywords and the compiler will raise errors where the old memory management keywords are used unexpectedly.  Now we can `alloc` and initialize objects without worrying about releasing them.  If you work with pure Objective-C (no C data structures) then this is easy and cuts down a lot of code.  It feels _wrong_ at first, but after a while it's completely natural.

Be sure to study the notes in [What's New In Mac OS X: Automatic Reference Counting](http://developer.apple.com/library/mac/#releasenotes/MacOSX/WhatsNewInOSX/Articles/MacOSX10_7.html) because it's not quite as simple as throwing away all `retain` and `release` keywords.  [Everything you need to know about automatic reference counting](http://www.learn-cocos2d.com/2011/11/everything-know-about-arc/) is also a thorough post on the topic.

In terms of accessibility, ARC makes iOS a lot easier for new developers.

### `UIAppearance`

I've always struggled with meeting client expectations in terms of application appearance.  Apple's iOS apps tend to have intricately themed interfaces, and while the default widgets and colours are adequate, corporate branding soon rears its ugly head and forces me to write lots of custom UI code.

The first tool in my application skinning arsenal was `stretchableImageWithLeftCapWidth:topCapHeight:`:

{% highlight objective-c %}
UIImage *buttonImage = [[UIImage imageNamed:@"button.png"] stretchableImageWithLeftCapWidth:5.0 topCapHeight:0.0];
{% endhighlight %}

This makes it possible to create buttons with gradients, shadows, and rounded corners -- anything you can put in a PNG.  [iDev Recipes: Stretchable Images and Buttons](http://idevrecipes.com/2010/12/08/stretchable-images-and-buttons/) is a good post on this because it includes a diagram showing how images get stretched.

Skinning buttons isn't enough for most clients.  I think every freelance client I've had has demanded a background image in a `UIToolbar`.  Not just a tint, but an image.  I typically subclasses `UIToolbar` and change `drawRect` to draw an image.  This solution goes against the general wisdom that, if possible, subclassing API classes should be avoided in Objective-C.  Incidentally, there's an interesting on Stack Overflow about this very topic: [Is subclassing in Objective-C a bad practice?](http://stackoverflow.com/questions/844199/is-subclassing-in-objective-c-a-bad-practice)

We now have an adequate solution for application-wide skinning through the `UIAppearance` protocol.  It's now possible to skin an entire app with very little code:

{% highlight objective-c %}
UIImage *navBarImage = [UIImage imageNamed:@"images/menubar.png"];
[[UINavigationBar appearance] setBackgroundImage:navBarImage
                                   forBarMetrics:UIBarMetricsDefault];

UIImage *barButton = [UIImage imageNamed:@"images/barbutton.png"];
[[UIBarButtonItem appearance] setBackgroundImage:barButton
                                        forState:UIControlStateNormal
                                      barMetrics:UIBarMetricsDefault];

UIImage *backButton = [UIImage imageNamed:@"images/back.png"];
[[UIBarButtonItem appearance] setBackButtonBackgroundImage:backButton
                                                  forState:UIControlStateNormal
                                                barMetrics:UIBarMetricsDefault];

UIImage *tabBarBackground = [UIImage imageNamed:@"images/tabbar.png"];
[[UITabBar appearance] setBackgroundImage:tabBarBackground];
[[UITabBar appearance] setSelectionIndicatorImage:[UIImage imageNamed:@"images/selection-tab.png"]];
{% endhighlight %}

Given suitable high quality 24bit PNGs with subtle shadows and textures, your app will now blow your client's mind.

### Blocks

At first I thought blocks were pretty needless, because after years of working with asynchronous APIs in Objective-C I'm comfortable with delegates.  After using blocks in a project I'm now a convert.  I actually write a lot of JavaScript, so I'm a master manipulator of closures, and I feel like some of the same code organisation techniques transition to Objective-C.

What convinced me was actually something unexpected: [Parse](http://parse.com).  Parse is a service aimed at mobile developers that provides a backend that can be used to sync user data.  It can handle user registration, password resets, and arbitrary structured data and files.  While iCloud is great, Parse allows us to sync our data across iOS and Android, and potentially more platforms in the future --  all without having to write a web app.

Parse's code samples have a button for displaying code that uses blocks or callbacks.  This is an example of block-based code:

{% highlight objective-c %}
[PFUser logInWithUsernameInBackground:@"myname" password:@"mypass"
  block:^(PFUser *user, NSError *error) {
    if (user) {
        // do stuff after successful login.
    } else {
        // the username or password is invalid.
    }
}];
{% endhighlight %}

Once the reader understands the block syntax, this code is immediately understandable.  Contrast this to the callback-based code:

{% highlight objective-c %}
// First set up a callback.
- (void)handleUserLogin:(PFUser *)user error:(NSError **)error {
    if(user) {
        // do stuff after successful login.
    } else {
        // the username or password is invalid. 
    }
}

// Then, elsewhere in your code...
[PFUser logInWithUsernameInBackground:@"myname" 
                             password:@"mypass" 
                           withTarget:self
                             selector:@selector(handleUserLogin:error:)];
{% endhighlight %}

As Objective-C developers we know the second part of this code is in another method, and that's the key.  Blocks keep related code together.  As long as your block isn't too large, this is easier to follow and therefore potentially easier to maintain.

Blocks are largely intuitive, but `__block` is a syntactical wrinkle that's worth learning properly.  Apple's [Blocks and Variables](http://developer.apple.com/library/ios/#documentation/cocoa/Conceptual/Blocks/Articles/bxVariables.html#//apple_ref/doc/uid/TP40007502-CH6-SW1) documentation covers this, but I also found [Programming with C Blocks on Apple Devices](http://thirdcog.eu/pwcblocks/#objcblocks) useful as well.

All three of these of these features make iOS development more accessible to newcomers, so if you've been putting off iOS development, now would be a good time to jump aboard.
