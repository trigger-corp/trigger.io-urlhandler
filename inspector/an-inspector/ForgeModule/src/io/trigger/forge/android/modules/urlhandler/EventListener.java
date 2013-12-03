package io.trigger.forge.android.modules.urlhandler;

import io.trigger.forge.android.core.ForgeApp;
import io.trigger.forge.android.core.ForgeEventListener;
import android.content.Intent;
import android.net.Uri;

import com.google.gson.JsonObject;

public class EventListener extends ForgeEventListener {
	@Override
	public void onNewIntent(Intent intent) {
		if (intent != null) {
			String url = intent.getDataString();
			if (url != null) {
				Uri uri = Uri.parse(url);
				if (uri.getScheme().equals(ForgeApp.configForPlugin("urlhandler").get("scheme").getAsString())) {
					JsonObject result = new JsonObject();
					result.addProperty("url", url);
					ForgeApp.event("urlhandler.urlLoaded", result);
				}
			}
		}
	}
}
