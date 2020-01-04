<h1><img src="resources/icon.png" height="64" width="64"/> Chrome-Extension-Ellipsis-Fix</h1>

<strong>☞︎ Replace Ellipsis Ending Links (\"…\") With Full Ones.</strong>



<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img alt="" src="resources/screenshot_1.png"/> <br/>
<img alt="" src="resources/screenshot_2.png"/> <br/>
<img alt="" src="resources/screenshot_3.png"/> <br/>
<img alt="" src="resources/screenshot_4.png"/> <br/>

<pre>
Developer's HUB / Changelog

1.0.1.14
* additional repeat main method check, with alarms-api.

1.0.1.12
* disabling "1.0.1.4 only format a 'looks like a link' links"-check/limit since some websites include just relative URLs, but since it sits in HREF and it is in a node that has no-child nodes, it is probably safe to assign innerText.

1.0.1.6
* adding another 'end link' variation:  ..&gt; commonly used in https://nodejs.org/download/nightly/ for example
* better-escaping the regular-expression.

1.0.1.5
* improving cross-browser-API compatibility.

1.0.1.4
* only format a "looks like a link" links.
+ include '...' variation.
+ support dynamic page-content (SPF and such...).

1.0.1.2
+ initial.

</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->