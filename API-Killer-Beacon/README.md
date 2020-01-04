<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Beacon</h1>

<ul>
<li><img src="../_resources/github_firefox.png"/> &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox</a></li>
<li><img src="../_resources/github_chrome.png"/>  &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome</a></li>
<li><img src="../_resources/store_chrome.png"/>   &nbsp; (external) <a href="https://chrome.google.com/webstore/detail/okllieelegmmjlkfnddadhblbgejeido/">https://chrome.google.com/webstore/detail/okllieelegmmjlkfnddadhblbgejeido/</a></li>
<li><img src="../_resources/store_firefox.png"/>  &nbsp; (external) <a href="https://addons.mozilla.org/en-GB/firefox/addon/api-killer-beacon/">https://addons.mozilla.org/en-GB/firefox/addon/api-killer-beacon/</a></li>
</ul>

This web-extension disables beacon (ping) in three ways:
<ul>
<li>
It null'ify/purge/kill the HTML5 JavaScript API (https://developer.mozilla.org/en-US/docs/Web/API/Navigator/sendBeacon), <br/>
this way the page can not trigger sending of new PING-requests.
</li>
<li>
It removes <code>ping</code> attributes from HTML &lt;A&gt;-tag elements (https://developer.mozilla.org/en-US/docs/Web/HTML/Element/a ), <br/>
this stops the browser's built-in mechanism for auto-sending PING-requests on link-hover/click. <br/>
<sub>F.Y.I ping-attribute were just started being used in Google's search-page for each of the results-links.</sub>
</li>
<li>
It sits in the background just <strong>like a firewall</strong> and activly kill requests that uses the beacon/PING protocol, <br/>
so if by any chance there was a PING request triggered by the page - <strong>it will never leave the browser!</strong>.
</li>
</ul>


<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<pre>
Developer's HUB / Changelog

1.0.3.4
+ added execution from DOM-aspect.

1.0.3.3
* removed manually-generated string of the core-DOM function, in-favor of grabbing the actual-function string ('.toString') with reduced whitespace, this because of Mozilla-reviewers keeping flagging the string-injection as an obfuscated code (it is not).

1.0.3.2
* permission update for closed-tabs check before updating web-extension badge-number.

1.0.3.1
+ also removing 'ping' attributes of the 'A' HTML-elements, preventing the browser's built-in PING-sending on click.
- remove security-permission workaround.

1.0.1.1
+ workaround pages that limits javascript.

1.0.0.18
* improving JavaScript related blocking of beacon methods.

1.0.0.14
* engine fix.

1.0.0.8
* faster JavaScript-injection by storing the SRC of the api_killer_beacon as string before usage.

1.0.0.6
* slight engine modifications.

1.0.0.5
* holding element-query multi-line string without the use of multiline method.

1.0.0.4
* improving cross-browser-API compatibility.

1.0.0.3
+ initial.
</pre>
