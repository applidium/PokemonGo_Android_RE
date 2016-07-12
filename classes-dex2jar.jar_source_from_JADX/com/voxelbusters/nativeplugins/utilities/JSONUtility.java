package com.voxelbusters.nativeplugins.utilities;

import android.os.Bundle;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import java.util.HashMap;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class JSONUtility {
    public static int findString(JSONArray jSONArray, String str) {
        for (int i = 0; i < jSONArray.length(); i++) {
            String str2 = null;
            try {
                str2 = jSONArray.getString(i);
            } catch (JSONException e) {
                e.printStackTrace();
            }
            if (str2 != null && str2.equals(str)) {
                return i;
            }
        }
        return -1;
    }

    public static JSONObject getJSON(String str) {
        try {
            return new JSONObject(str);
        } catch (JSONException e) {
            e.printStackTrace();
            return null;
        }
    }

    public static JSONArray getJSONArray(String str) {
        try {
            return new JSONArray(str);
        } catch (JSONException e) {
            e.printStackTrace();
            return new JSONArray();
        }
    }

    public static String getJSONString(HashMap hashMap) {
        return new JSONObject(hashMap).toString();
    }

    public static JSONObject getJSONfromBundle(Bundle bundle) {
        JSONObject jSONObject = new JSONObject();
        for (String str : bundle.keySet()) {
            try {
                jSONObject.put(str, bundle.get(str));
            } catch (JSONException e) {
                e.printStackTrace();
                Debug.error(CommonDefines.JSON_UTILS_TAG, "Exception while entering key " + str);
            }
        }
        return jSONObject;
    }

    public static String[] getKeys(JSONObject jSONObject) {
        JSONArray names = jSONObject.names();
        String[] strArr = new String[names.length()];
        int length = names.length();
        for (int i = 0; i < length; i++) {
            try {
                strArr[i] = names.getString(i);
            } catch (JSONException e) {
                e.printStackTrace();
            }
        }
        return strArr;
    }

    public static JSONArray removeIndex(JSONArray jSONArray, int i) {
        JSONArray jSONArray2 = new JSONArray();
        int i2 = 0;
        while (i2 < jSONArray.length()) {
            try {
                if (i2 != i) {
                    jSONArray2.put(jSONArray.get(i2));
                }
                i2++;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return jSONArray2;
    }
}
