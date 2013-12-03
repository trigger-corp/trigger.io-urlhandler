package io.trigger.forge.android.modules.urlhandler;

import io.trigger.forge.android.core.ForgeApp;
import io.trigger.forge.android.core.ForgeTask;
import android.content.Intent;

import com.google.gson.JsonObject;

public class API {
	public static void urlLoaded(final ForgeTask task) {
		Intent intent = ForgeApp.getActivity().getIntent();
		if (intent != null &&
				intent.getCategories() != null &&
				intent.getCategories().contains(Intent.CATEGORY_BROWSABLE)) {
			JsonObject result = new JsonObject();
			result.addProperty("url", intent.getDataString());
			ForgeApp.event("urlhandler.urlLoaded", result);
		}
	}
}
