<h1><img src="resources/icon.png" height="64" width="64"/> Remove-Redirects-Plus</h1>

<strong>☞︎ Smart Redirects-Removal and UnShortening Tiny-Links (Two Stages).</strong>

<blockquote>
This web-extension removes redirects and UnShort tiny-URLs to reveal the long, real, and direct URLs, 
it works in the background, resolving redirect-URLs and fixing links directly on the page without you need to do anything, it saves you time, keeping you secure, preventing you to "walk through" redirect-servers, 
it allows you to see the target of the link while you hover the mouse-above it so you'll be fully aware where you're "going to go".

This web-extension is the next-generation of an older web-extension of mine named <em>Remove-Redirects</em>, which only worked offline, and another web-extension of mine named <em>UnShorts</em> that used <code>http&#x003A;//9inchurl.com/api.php?url=</code> and <code>https&#x003A;//unshorten.me/s/</code> to resolve tiny-links to long ones.

<em>I've got the idea combining them from this feature-request: <a href="https://github.com/eladkarako/chrome_extensions/issues/4">https://github.com/eladkarako/chrome_extensions/issues/4</a> by <a href="https://github.com/grahamperrin">&#x0040;grahamperrin</a>.</em>
</blockquote>

This web-extension works in 3 stages:

<ol>
<li>
  Stage 1: <strong><em>works offline</em></strong>
  this is the classic way, same as in good old <em>Remove-Redirects</em>, 
  by decrypting parts of the <code>HREF</code> or other attributes (<code>onmousedown</code> or <code>data-saferedirecturl</code>, for example - commonly used in Google pages), 
  the web-extension can extract the real-URL and place it in the <code>HREF</code> attribute.
  
  In this stage, the web-extension also works hard to clean-up click-event-hooks (<code>onmousedown</code>), 
  leaving you with a standard link, pointing to the real-URL.
</li>

<li>
  Stage 2: <strong><em>UnShort tiny links</em></strong>
  The web-extension has a list of many tiny-url/short-links provider domains, 
  it then scans the page, and try to resolve the <strong>true, long-URL</strong> behind the tiny-URL, 
  this stage requires an online-access, and it uses free web-API such as 
  <code>9inchurl.com/api.php?url=...</code> and <code>https://unshorten.me/s/...</code>.
  
  The page-links are then <strong>get updated</strong> with the real-long URL, 
  saving you clicks, 'walking through' redirect-pages (and seeing ads..).
  
  The first stage saves this stage some traffic...
</li>

<li>
  Stage 3: <strong>NEW - <em>Background Offline Resolving</em></strong>
  This web-extension also sits in the background <em>just like a firewall</em>, 
  extracts the real-URL from an out-going request, just before it gets created, 
  it then provides the browser with the cleaned URL instead, to continue the request.
  
  This stage does not requires online-access, 
  it works entirely offline, in a similar way to stage 1, 
  but while stage 1 got the entire-DOM to draw information from 
  (for example, element's attributes such as '<code>data-url</code>' or '<code>onmousedown</code>'), 
  this stage "can only work with" the URL itself, 
  matching it against several sets of rules and regular-expressions matching.
  
  
  This stage does not inject JavaScript into the page, 
  so it will keep working even if stages 1 and 2 will be blocked, 
  for example on pages that block external JavaScript.
  
  <strong>I've just recently added this feature :)</strong>
</li>

</ol>


<strong>When will this web-extension only work partially?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<img src="resources/screenshot_1.png"/> <br/>

<img src="resources/screenshot_2.png"/> <br/>

<hr/>


<pre>
Developer's HUB / Changelog

2.1.5.203
+ adding support for 'cdn.embedly.com/...&url=___' which is an IFRAME service commonly used in reddit.

2.1.5.202
+ adding support for 'i*.wp.com/...' cache-links.
+ fixing regex match amp-project.
+ adding 'i*.wp.com' (wordpress-cache) and amp-project links to raw background-request-filter ('background_request_manipulation.js').

2.1.5.201
+ adding support for AmpProject-redirects (when used as a WordPress plug-in), bringing back the original URL.
* some code-changes in the particle-extraction for the URL, adding support for non-decoding end-componenet, supporting redirect that uses the page URL as a suffix (A.pathname) instead of an argument (A.search), but still falling back to default-decodeURIComponent (way it was used until now..).

2.1.4.114
* bug fix: "//" to "/" in the query string used [2.1.4.112] --- in I can not use "//" in the document.querySelectorAll for some complex combination of regex-replacements, it will result with an invalid query-phrase due to removal of some parts of the string.

2.1.4.112
+ adding support for Moz!lla-outgo!ng saf3-l!nks.

2.1.4.111
+ adding a network-component that works just like stage 1 - matching a redirect-URL against regular-expressions, tring to extract the real-URL from it - it then provides the browser with the better, cleaner URL. This stage works in the background even when the page will block JavaScript injections on to the page itself. There is only offline matching against set of rules/regex-s no online querying - so it is very fast.

2.1.3.207
* adding support for links with real href placed in 'data-original-href-url' attribute (www.reddit.com and old.reddit.com).

2.1.3.206
* improving cleanup of 'utm_*' URL-arguments from elements with 'HREF'-attributes.

2.1.3.205
+ also clean-up tracking arguments from 'A'-like-elements (utm_source=..., utm_medium=..., ..).

2.1.3.204
+ adding support for mandrillapp.com redirect-links which uses nasty BASE64-encoding and twice JSON-parsing, STRING-regex might be easier but then we have to deal with all that '//' escaping $hit!! - using a (semi-)heuristic method to handle the content.

2.1.3.203
* adding another error-case (timeout error message).

2.1.3.202
+ adding support for offline stripping DropBox download-links, to direct links.

2.1.3.201
+ making the main-action JavaScript run as a repeat 'timed' alarm every 1 minute. Uses "alarms" for the 'timer' and "tabs" for executing JavaScript file. The JavaScript file 'at_document_idle.js' (with just 'action();') will executed starting from 'document_start+1minute' and will repeat every one minute. This is a friendly way running timed code that does not uses setTimeout nor setInterval.

2.1.2.104
* removed logs.

2.1.2.103
+ adding support for 'vaugette.com' short-URL-service.
* prevent repeating resolving invalid-URLs or URLs that won't resolved by sending final-message of an empty-string to the resolved-url as a flag. this will caused the TAG-attribute 'unshorts-processing' (should be 'unshorts-invalid') to prevent the <A>-element from being re-discoverred.

2.1.2.101
* improve engine - the first requesting (GET) using own browser/DNS resolving, alternative onerror/ontimeout/onsuccess handling where everything gets to one handler that adds additional conditions such as server-failures, that single handler needs to be one for each URL (that's 3 - own (plain URL), "http://9inchurl.com/api.php?url=", "https://unshorten.me/s/") .
* improving placing the result (resolved) URL in A-element text-content, sensitive to not erasing its content, and when needed, manipulating '#text'-node (--- 3===nodeType) by '#text'-node - one by one.
+ adding test page, taken from the comment-data of https://www.youtube.com/watch?v=FT80mv3VCBY (Simon And Martina) which uses many short-links.


2.1.1.126
* engine improve.
+ re-adding 'goo.gl' and 'share.epidemicsound.com' .

2.1.1.125
+ first try HEAD-request to resolve 301/302 requests faster and "save API calls", on either of fail (HOSTS block) or no change in the URL, use the web-API of URL-unshort'ning.

2.1.1.124
- do not try to resolve 'goo.gl' domains, the unshort'ning-services can't handle it.

2.1.1.123
* better improving placing resolved links'-text.

2.1.1.122
* also change the extension-icon-title, when the badge-number-overlay changes (extension name with badge-number in brackets).

2.1.1.119
* improve filter-out bad cases of bad responses-from the web-resolving-API (error, polsar.ebay.com resolve failure to ebay-portale, and non-changed URL).

2.1.1.118
* update 'background_main.js' and renamed to 'background_badge.js'.

2.1.1.116
* adding handling of 'pulsar.ebay.com' redirect-links.

2.1.1.115
* rename 'fetch' to 'get' everywhere.

2.1.1.114
* improving fetch-code and request API error-handling (one fallback from 'http://9inchurl.com/api.php?url=...' to 'https://unshorten.me/s/...').

2.1.1.111
* joining Remove-Redirects and UnShorts with other improments to create Remove-Redirects-Plus.

</pre>

<a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a>