---
layout: post
title: "Designing for Password Managers"
categories: 
- design
- security
---

> 1Password works so well because it isn’t just a security product, but it changes the way we deal with with website logins. That is, we do things more securely and more easily when 1Password is around.<span class="source">- [Looking ahead in security](http://blog.agilebits.com/2011/04/looking-ahead-in-security/), AgileBits</source>

I currently have 258 unique passwords.  I'm not addicted to creating accounts on web services; I have multiple identities as a result of separating personal and professional concerns.  Memorising 200+ unique passwords is never going to happen, so naturally I use a password manager.

Password managers are [probably best kept offline](http://blog.lastpass.com/2011/05/lastpass-security-notification.html) but they basically all work the same way -- there's some form of local application that integrates with browsers through plugins or the operating system's built-in password management framework.  That means password managers generally associate web form fields with credentials.

Using such a high number of accounts quickly reveals the vast differences in form design, and they don't all work well with password managers.  For example, Google Apps email has a form specific to the email domain -- it uses "username" but elsewhere Google's forms use "username@domain.com".  Should the password manager be designed to cope with this, or should Google simply use a consistent form design?

Some sign in forms contain fields that appear multiple times on the page.  Using [1Password](http://agilebits.com/products/1Password) to log in could leak the sign in username to the registration form.  I've always wondered if this is a potential security issue, but regardless, should pages be designed this way?

I've also found sites that include server-side generated random field names so it's extremely difficult to use my password manager at all.  I end up copy and pasting the credentials manually.  This has led me to research whether it's possible for browser plugins to silently access the contents of the paste buffer and extract plain-text passwords.

Password managers also detect when an account has been created or signed into for the first time.  Is it practical to support this directly?  I've often looked at new accounts in my password manager and found a mess of fields that aren't actually authentication credentials.

###Checklist

The next time I design a log in form, I'm going to follow a checklist:

* Ensure the field names are commonly used ones: username, email, password
* Use these field names consistently
* Keep the registration form on another page
* Make sure the sign in form is consistent across all entry points
* Test registration and sign in with popular password managers

As designers we need to cater for password managers.  [Hopefully something better will come along](http://www.lightbluetouchpaper.org/2011/08/12/pico-no-more-passwords-at-usenix-security/), but until then we're in the era of post-human password management (that doesn't mean passwords managed by super-advanced human entities, it just means nobody can be expected to do it properly anymore).

Perhaps conversely password managers should cater for us?  AgileBits could publish a set of guidelines for designers that demonstrate both best practices for authentication forms and also what works well with their product.

