<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Beacon-NextGen</h1>

An experiment.

A manifest v3 web-extension to block Beacon/Ping requests.
a "fork" of https://github.com/eladkarako/chrome_extensions/tree/store/API-Killer-Beacon .


<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<pre>
Developer's HUB / Changelog

3.0.2.4
+ added execution from DOM-aspect.

3.0.2.3
* removed manually-generated string of the core-DOM function, in-favor of grabbing the actual-function string ('.toString') with reduced whitespace, this because of Mozilla-reviewers keeping flagging the string-injection as an obfuscated code (it is not).

3.0.2.2
* permission update for closed-tabs check before updating web-extension badge-number.
* removed invalid network-permissions leftover.

3.0.2.1
* switching to manifest v3: declarativeNetRequest rule-set.
* switching to manifest v3: service worker instead of background script.

</pre>
