<h1><img src="resources/icon.png" height="64" width="64"/> Chrome-Extension-AndroidFileHost-Fix</h1>

<h2>Fix Links To Point To The New Unrestricted <code>dev.androidfilehost.com</code>.</h2>

<img width="1" height="1" src="resources/screenshot_1.png"/>


<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<pre>
Developer's HUB / Changelog

1.0.1.2
* additional repeat main method check, with alarms-api.

1.0.1.1
* improving cross-browser-API compatibility.

1.0.0.7
* support for about:blank frames.
+ explicit apply actions only for text/html pages.

1.0.0.6
+ initial.
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->