<h1><img src="resources/icon.png" height="64" width="64"/> Chrome-Extension-Pandora-Text-Select-Enabler</h1>

<strong>☞︎ Remove Text Protection 🔓, And Re-Enable Text Select/Copy 📖 Across The Whole Website.</strong>

This web-extension disables the copy/selection protection in pandora.com website, 
it allows you to select copy text across the whole website without restrictions 
(including artist and song details, and lyrics-content). 

Here is how it works (developers):
<ol>
  <li>
  Pure CSS3 fix (<code> !important</code>) to override marking of several elements 'unselectable', 
  this solution helps in-case there is a delay or the JavaScript injection won't work for some reason.
  </li>
  <li>
  JavaScript fix: 
    <ul>
      <li>
      removing attributes that marks elements in the page as 'unselectable'.
      </li>
      <li>
      nulli'fying/removing inline-event handlers that blocks copy/selection actions.
      </li>
      <li>
      inline-CSS text nulli'fying/fixing to unblock/re-allow user-interaction with DOM-elements (<code>pointer-events</code>/<code>touch-action</code> override).
      </li>
    </ul>
  </li>
</ol>


I've basically made this web-extension for myself, and then decided to share it with everyone, because sharing is caring. it's nothing fancy but it is small, quick and it works. If you've enjoyed using it I'll be thrilled to hear all about it in the review section. 

100% free (as beer..), include no ads (I hate those!), does NOT collect any data, includes NO analytics and works entirely offline.

<hr/>

<h3>This Extension Is A Great Way To Copy Your Favorite Lyrics, Or Use It If You Feel Like No-One Should Block Your Browser-Usability, Ever!</h3>

<img src="resources/screenshot_1.png"/> <br/>
<img src="resources/screenshot_2.png"/> <br/>
<img src="resources/screenshot_3.png"/> <br/>
<img src="resources/screenshot_4.png"/> <br/>

<hr/>

<pre>
Developer's HUB / Changelog

5.1.0.1
* cleanup of old code.
* replace setTimeout/setInterval with alarm-API (1 minute), combined with DOM-triggered-events to run main action.
* global counter-of-fixes for the web-extension badge-icon.
* improving CSS-fixes by adding cross-browser ones.
* run the code faster/earlier in the page load-lifecycle for improved performances.

4.0.3.8
* improving cross-browser-API compatibility.

4.0.3.2
* engine-update: improved identification of inline-blocking styles.

4.0.2.3
- removing HTTP-headers modifications and unneeded permissions.

4.0.2.2
+ smart-removing Pandora's evil events from elements on the page.
* engine update: efficient handling page resources.
+ added "hard but gentle" CSS-rule-override for "unselectable" nodes (complementary to the JavaScript solutions :] ).
* engine update: make main action more-lazy by repeating it every 5sec instead of 2.5sec.


4.0.2.1
* engine update handling HTTP-req./resp. related resources only for Pandora-domains.

4.0.1.2
* overall graphics update.

4.0.1.1
+ initial (no versioning while product was in-alpha developing :/ ).
</pre>

<!-- <a href="https://paypal.me/e1adkarak0"><img src="https://www.paypalobjects.com/webstatic/mktg/Logo/pp-logo-100px.png" alt="PayPal Donation"></a> -->