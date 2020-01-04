<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-IndexedDB</h1>

<ul>
<li><img src="../_resources/github_firefox.png"/> &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox</a></li>
<li><img src="../_resources/github_chrome.png"/>  &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome</a></li>
<!-- li><img src="../_resources/store_chrome.png"/>   &nbsp; (external) <a href="https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/">https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/</a></li -->
<li><img src="../_resources/store_firefox.png"/>  &nbsp; (external) <a href="https://addons.mozilla.org/en-GB/firefox/addon/api-killer-indexeddb/">https://addons.mozilla.org/en-GB/firefox/addon/api-killer-indexeddb/</a></li>
</ul>

Kills HTML5' <code>IndexedDB</code> API,
might break websites, if they do not have a localStorage/cookie fallback.


<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img width="0" height="0" alt="" src="resources/screenshot1.png"/>

<pre>
Developer's HUB / Changelog

1.0.4.7
+ added execution from DOM-aspect.

1.0.4.6
* removed manually-generated string of the core-DOM function, in-favor of grabbing the actual-function string ('.toString') with reduced whitespace, this because of Mozilla-reviewers keeping flagging the string-injection as an obfuscated code (it is not).

1.0.4.5
* permission update for closed-tabs check before updating web-extension badge-number.

1.0.4.4
* improving JavaScript-related breaking of IndexDB structured-methods.

1.0.3.8
* improving blocking with some 'Object.defineProperty' to work-around 'readonly' objects.
* changed the way SRC was stored and injected to the DOM.

1.0.3.4
* slight engine modifications.

1.0.3.3
* holding element-query multi-line string without the use of multiline method.

1.0.3.2
* improving cross-browser-API compatibility.

1.0.3.1
+ initial.
</pre>
