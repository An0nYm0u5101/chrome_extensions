<h1><img alt="" src="resources/icon.png" height="64" width="64"/> API-Killer-Cookie</h1>

<ul>
<li><img src="../_resources/github_firefox.png"/> &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestFirefox</a></li>
<li><img src="../_resources/github_chrome.png"/>  &nbsp; (prefered) <a href="https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome">https://github.com/eladkarako/chrome_extensions/releases/tag/LatestChrome</a></li>
<li><img src="../_resources/store_chrome.png"/>   &nbsp; (external) <a href="https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/">https://chrome.google.com/webstore/detail/niekhfkkkdlijikahmbnalbdjplhckfp/</a></li>
<li><img src="../_resources/store_firefox.png"/>  &nbsp; (external) <a href="https://addons.mozilla.org/en-GB/firefox/addon/api-killer-cookie/">https://addons.mozilla.org/en-GB/firefox/addon/api-killer-cookie/</a></li>
</ul>

This web-extension both disables the JavaScript-API of 'document.cookie', 
and it works in the background, as a firewall, blocking arriving of new cookies from servers.

it does not modify/delete your existing cookie-data in any way, any existing data will kept in the browser, the JavaScript engine simply won't be able to reach it (read/write).
you may install this web-extension and clean all of your cookies (yourself) to make sure none new will be written.

Might break websites. Use it at your discretion.



<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<pre>
Additional ways of blocking cookies (browser specific):
Firefox: 'about:config' - 'network.cookie.cookieBehavior' - set to 2.
Chrome:  'chrome://settings/content/cookies' - setting to 'Blocked'.
</pre>

<img src="resource/screenshot_1.png" /> <br/>

<pre>
Developer's HUB / Changelog

1.0.1.4
+ added execution from DOM-aspect.

1.0.1.3
- removed unneeded permissions to modify network-response (leftover from a try to walkaround javascript blocking in several websites)
- removed removing of DOM variation of policy handling (leftover from...)
* removed manually-generated string of the core-DOM function, in-favor of grabbing the actual-function string ('.toString') with reduced whitespace, this because of Mozilla-reviewers keeping flagging the string-injection as an obfuscated code (it is not).

1.0.1.2
* permission update for closed-tabs check before updating web-extension badge-number.

1.0.1.1
+ workaround pages that limits javascript.

1.0.0.4
* improving badge-info code (applying label as well, and error-handling).

1.0.0.2
+ initial.
</pre>

