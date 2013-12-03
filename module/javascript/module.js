forge['urlhandler'] = {
	'urlLoaded': {
		'addListener': function (callback, error) {
			forge.internal.addEventListener('urlhandler.urlLoaded', callback);
			// Trigger event when listener is added
			forge.internal.call("urlhandler.urlLoaded", {});
		}
	}
};