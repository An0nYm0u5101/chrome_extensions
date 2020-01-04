<h1><img alt="" src="resources/icon.png" height="64" width="64"/> Capture</h1>

<h2>Capture</h2>

<img alt="" height="1" width="1" src="resources/screenshot_1.png"/>

a testing on how to capture the viewport, using plain-minimal-simple-no-clientside web-extension,
it is ready for adding some client-side JavaScript as-well (not used yet).

Creates a data URI encoding an image of the visible area of the currently active tab in the specified window. You must have the <all_urls> permission to use this method. (Alternately, Chrome allows use of this method with the activeTab permission and a qualifying user gesture).
https://developer.mozilla.org/en-US/docs/Mozilla/Add-ons/WebExtensions/API/tabs/captureVisibleTab

You need to click <code>inspect</code> to see the console of the "extension-side" (not the client-side), <br/>
then you can right-click the long string (<code>data:image/jpeg;base64,/9j/4AAQSkZJ.....</code> for example) <br/>
and click "save to a temp. global variable", <br/>
then use the built-in function <code>copy</code> and the name of the temp. variable (<code>copy(temp1);</code>). <br/>
<h4>it is now in your clipboard, you can paste it into an open-tab as a URL to check how it looks</h4>

this will save a JPEG with quality 70, you can keep it "jpeg" with different quality, with values from 0-to-100, <br/>
or change it to "png" (the quality value is being ignored in PNG-mode).

<hr/>

<pre>
Developer's HUB / Changelog

1.0.1.4
* permission update for closed-tabs check before updating web-extension badge-number.

1.0.1.3
* more buttons/text in control-panel, maybe instead of a preset GIF time its best to set a hotkey to stop capturing.

1.0.1.1
* moved action-trigger to a button in a 'control-panel' that opens when clicking the extension-icon. the first button does the action that used to be before the main-icon-click action (draw red-square, send size to 'background_capture.js', snapshot, crop the snapshot to size).


1.0.0.7
* correcting the crop (with my addition of fixing pixel/screen-scale) with https://stackoverflow.com/questions/26015497/how-to-resize-then-crop-an-image-with-canvas - still not 100% accurate but quite good.

1.0.0.6
* switching from message-over-port to simple messaging to specific tab (with tab-id), it works better.
* not removing red-square on finish (just on re-creation) to avoid-unneeded (heavy) operations (it also allows hiding the red-square using inline-css and sending a message with the red-square size which trigger capturing the screen) - so the screen-capture result won't have the red-screen visible.
* delaying sending the result red-square-size message (which is a trigger to screen-capture) a bit to let some element-related-operations finish.

1.0.0.5
* successfully crop (creating a canvas with smaller size according to red-square size, applying image to canvas with an offset according to red-square top/left size). The canvas generates the image to console (background).
* using PNG as file-type for better quality.
+ add resource regarding considering scale in canvas width/height (with 'width*window.devicePixelRatio;' for example) this way the images won't get automatic-scale-look-like.

1.0.0.4
+ create BASE64 IMG-object on the background-page, set its source to the fully-captured image, create canvas and set its height/width to the image size, then draw the image onto the canvas. it can be debugged in the backgound-page, and the image can be extracted again from either the IMG-object or 'canvas.toDataURL()'. currently everything is standard (DOM) canvas.
+ adding 'background_worker_offscreencanvas.js' (no used yet) for 'OffscreenCanvas'.

1.0.0.3
* click on the icon sends a message through a long-lasting messaging (port) to the client to mark a red square, the user then draw a red square, its size/place in the viewport/page are collected and sent to the extension in a message, the extension then displays the data-object of the size/place, takes a picture of the entire viewport (of the specific window) and writes the BASE64 JPEG/quality70 image to the console. only left now is to crop the image to the size using either a canvas on the extension side or 'canvas-on-worker' in the extension side. next stages will be to timely captured (every second?) a viewport and crop it to the same sizes/placements, then joining them all with GIF.JS to create a GIF.

1.0.0.2
+ initial.
</pre>

