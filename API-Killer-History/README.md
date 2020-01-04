<h1><img src="resources/icon.png" height="64" width="64"/> API-Killer-History</h1>

<ul>
<li><img src="../_resources/github_firefox.png"/> &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox</a></li>
<li><img src="../_resources/github_chrome.png"/>  &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome</a></li>
<!-- li><img src="../_resources/store_chrome.png"/>   &nbsp; (external) <a href="https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/">https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/</a></li -->
<li><img src="../_resources/store_firefox.png"/>  &nbsp; (external) <a href="https://addons.mozilla.org/en-GB/firefox/addon/api-killer-history/">https://addons.mozilla.org/en-GB/firefox/addon/api-killer-history/</a></li>
</ul>

<strong>☞︎ Disable's HTML5's History API. Most WebSites That Uses SPF Or JS-Navigation Will Fallback To Standard-Page Loading.</strong>

Disable (null'ify/erase) the HTML5 History-API, and preventing any usage of the related objects/factories and method(s), it also locks the <code>popstate</code>-event against any event-handler registrations (blocking really "fast loading" libraries), and then it simply decimate the method. <br/>

This Solution Is A Bit <strong>Overkill</strong> (But It Will Work...)<br/>
For Disabling SPF, JS-Navigation and other dynamic page loading that uses the History-API (<strong>And Checks For Fallback..</strong>).



<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img width="0" height="0" src="resources/screenshot_1.png"/>

<pre>
Developer's HUB / Changelog

2.0.1.8
+ added execution from DOM-aspect.

2.0.1.7
* permission update for closed-tabs check before updating web-extension badge-number.

2.0.1.6
+ pre-locking the popstate-event against any event-handlers (for fast-loading lib.s)
* improving removing JavaScript-related methods.

1.0.3.12
* improved SRC storage as a non-whitespace string, for the JavaScript-injection.

1.0.3.8
* slight engine modifications.

1.0.3.7
* improving cross-browser-API compatibility.

1.0.3.6
* optimize code for a reduced in-memory-footprint.

1.0.3.5
* limiting to html pages (not XML ones, for example).

1.0.3.4
+ inject script, has content set by inner-html instead of a text-node child which won't work in early loading stages (before body loads..).
* trying to delete references first (of history-related objects).

1.0.1.1
* improved removing of History class and history instance, along with history state event of frame. On YouTube you will see SPF.JS errors on the main console, that is because the developers of SPF havn't verified History class exist before using it. Everything should work fine though, plus now you can block all 'spf.js' and 'lazy.min.js' instances with uBlock/AdBlock.

1.0.0.7
* invalidate History/history under main scope.

1.0.0.5
* changed to blocking code-block, to halt-rendering until executed (very early..)

1.0.0.3
+ initial.
</pre>

<br/>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->