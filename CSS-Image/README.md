<h1><img src="resources/icon.png" height="64" width="64"/> Chrome-Extension-CSS-Image</h1>

<h3><em>★★★★★ To SPAN+CSS.</h3>

<img width="0" height="0" src="resources/screenshot_1.png"/>

Why?
ammm.... why not!


<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<pre>
Developer's HUB / Changelog

2.0.0.19
* additional repeat main method check, with alarms-api.

2.0.0.18
* register fewer events, and only on window, favoring a later (bubbled) reaction.

2.0.0.12
* fix strict-mode related issues.

2.0.0.11
* holding element-query multi-line string without the use of multiline method.

2.0.0.10
* improving cross-browser-API compatibility.

2.0.0.9
* set minimum of 3 images on the page, otherwise the page will not be handled.

2.0.0.8
+ moved some of the constant CSS to external file managed by the extension.
* fix the 'data-mouseover-src' template-target (copy/paste "made it" data-thumb... :/).

2.0.0.6
- removing CSS controlled attr/background-image and attr/content w/ and w/o ::before/::after since attr(url(...)) can not be used... :(
+ adding handling for YouTube's mouseover using CSS :hover, by writing an additional rule for overriding (properly) the image, while ':hover' to the WebP/"animated gif" resource. Cool!

2.0.0.4
+ (testing) YouTube data-thumb/data-mouseover-src using background-image/attr without (for now) :after/background-image/attr  or classic :after/content/attr combination.

2.0.0.3
+ 'src' improvements: prefer https when implicit ("://") or a secure-domain, YouTube: use data-thumb.

2.0.0.1
* improving re-discovery cycles.

2.0.0.1
+ initial.
</pre>

<br/>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->