package com.voxelbusters.nativeplugins.utilities;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import org.json.JSONArray;
import spacemadness.com.lunarconsole.BuildConfig;

public class SharedPreferencesUtility {
    public static JSONArray getJsonArray(String str, int i, Context context, String str2) {
        return JSONUtility.getJSONArray(getSharedPreferences(str, i, context).getString(str2, BuildConfig.FLAVOR));
    }

    public static SharedPreferences getSharedPreferences(String str, int i, Context context) {
        return context.getSharedPreferences(str, i);
    }

    public static void setJSONArray(String str, int i, Context context, String str2, JSONArray jSONArray) {
        Editor edit = getSharedPreferences(str, i, context).edit();
        edit.putString(str2, jSONArray.toString());
        edit.commit();
    }
}
