<h1><img src="resources/icon.png" height="64" width="64"/> Lazify</h1>

This web-extension improves the support of native-LazyLoading in every page, 
for all of the IMG and IFRAME elements.

If there is no support for the browser's built-in LazyLoading yet, 
a polyfill I've implemented efficiently will be used instead, it uses 'IntersectionObserver'.

<hr/>

Chrome users can try to activate their native LazyLoading with <code>chrome://flags/#enable-lazy-image-loading</code> and <code>chrome://flags/#enable-lazy-frame-loading</code> set to <code>Enabled</code>. 

Alternativly you can also activate it with the <code>--enable-features="LazyFrameLoading,LazyImageLoading"</code> command-line switches.

<hr/>

Firefox users - no native LazyLoading yet.

<hr/>

My UnLazy web-extension - interaction with Lazify:

Lazify will apply LazyLoading, 
UnLazy will remove all LazyLoading leaving plain images. It will not remove Lazify's LazyLoading.

You can have them BOTH up-and-running, 
the combination will remove all OTHER, nasty, 3rd-party LazyLoading-implementations, 
leaving you with either the native-browser one (if supported) or my slim and efficient one instead.

<hr/>

Some documents for more reading:
older browsers (from Jan. 2019) - ' lazyloading="on" '
- https://github.com/chromium/chromium/commit/b5278c3633150f6030882dc717426f690ffadeca
- https://github.com/chromium/chromium/commit/713811db8cfa4723dd18ee54db8d4f0a6840d231
newer browsers (from Jul. 2019) - ' loading="lazy" '
- https://addyosmani.com/blog/lazy-loading/
- https://github.com/scott-little/lazyload



<strong>When this web-extension will only work partially (not a full API-blocking)?</strong>
Some servers can prevent external-JavaScript from running on their pages, this includes JavaScript from web-extensions. It is usually done by serving the web-page with an additional 'Content-Security-Policy' header with the value 'default-src none', for example (https://addons.mozilla.org does it, and it prevents all, no just mine, web-extensions from working on that sub-domain). There isn't much to do in that matter, Firefox was designed to block web-extensions' JavaScript in those cases (yes, this web-extension's JavaScript too). When ever possible, I add an additional network-filter to each of my web-extension, for an increased security, those will always keep on working.

I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<pre>
Developer's HUB / Changelog

2.0.1.9
* additional repeat main method check, with alarms-api.

2.0.1.8
* additional prototype fix.
* element-query simplification to exclude all 'about:*' pages.

2.0.1.6
* excluding all embedded data SRC ('data:'), this simplifies the initial query as well.

2.0.1.5
* hard-coded excluding IFRAMES from '*.google.com'. Those are weird-a$$ $hit IFRAMES, most of them are logic-engines/loaders/API (such as captcha) which are DOM-located at the bottom of the page but CSS-static located in two-absolute containers where-as the captcha-form exist, is short- those do not plain nice with the lazyloading engine.
* excluding elements with SRC that loose-match 'about:*' and 'javascript:*' (IFRAMEs), those are not standard, and best not to handled even if were dynamically set (later) their SRC to a standard target.
* excluding  elements with BASE64-SRC (loose-match 'data:*base64') - those are already loaded in the body of the document and there is no-point-in 'saving traffic' by assigning LazyLoading to them, also they are possibly already LazyLoad'ed and containing a 'minimal base64 SRC', if the user will install my UnLazy-web-extension it will clear and (re)create a proper image with clear SRC, but as for now, it is best to understand the base64-SRC as a true-target, and not handling it.

2.0.1.4
* check intersection-value (effectivly the test to see if the element "is in" the viewport).
* apply min. 'exposure' of '1/10 percent' of the element inside the viewport for reaction..).

2.0.1.3
* making sure not to apply the polyfill which temp. removes 'src' and 'srcset' to an already loaded IMG/IFRAME, done using both image '.complete' attribute and custom 'onload' (that will be removed as-soon-as-possible) that will write 'complete' HTML-attribute on the tags, since IFRAME might not be have a reliable way of knowing if it finished loading (internal-document readyState-complete is only for 'src' in the same domain..).

2.0.1.1
+ apply new attributes when possible for images and iframes.
+ apply polyfill I've implement myself for LazyLoading using 'IntersectionObserver', it uses 'data-lazify-src' for 'src' and 'data-lazify-srcset' for 'srcset', those are not detectable through UnLazy web-extension, so UnLazy can work well with Lazify.

1.0.0.1
+ Initial (no up-versioning while I've developed it...)
</pre>
