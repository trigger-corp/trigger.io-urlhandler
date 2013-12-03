``urlhandler``: Custom URL schemes
==================================

The ``forge.urlhandler`` namespace allows you to define a URL scheme for other apps and webpages to open your app and send data to it.

##Config Options

Scheme
:	The scheme that your app wants to handle. E.g. using 'myscheme' would open your app if the user visited 'myscheme://'

##API

!method: forge.urlhandler.urlLoaded.addListener(callback, error)
!param: callback `function({url: url})` callback invoked with details of the url
!description: Triggered when the app is loaded by a custom URL scheme.
!platforms: iOS, Android
!param: error `function(content)` called with details of any error which may occur
