package com.google.android.gms.internal;

import android.text.TextUtils;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class zzmu {
    private static final Pattern zzaim;
    private static final Pattern zzain;

    static {
        zzaim = Pattern.compile("\\\\.");
        zzain = Pattern.compile("[\\\\\"/\b\f\n\r\t]");
    }

    public static String zzcz(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        Matcher matcher = zzain.matcher(str);
        StringBuffer stringBuffer = null;
        while (matcher.find()) {
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer();
            }
            switch (matcher.group().charAt(0)) {
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                    matcher.appendReplacement(stringBuffer, "\\\\b");
                    break;
                case Place.TYPE_BAR /*9*/:
                    matcher.appendReplacement(stringBuffer, "\\\\t");
                    break;
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    matcher.appendReplacement(stringBuffer, "\\\\n");
                    break;
                case Place.TYPE_BOOK_STORE /*12*/:
                    matcher.appendReplacement(stringBuffer, "\\\\f");
                    break;
                case Place.TYPE_BOWLING_ALLEY /*13*/:
                    matcher.appendReplacement(stringBuffer, "\\\\r");
                    break;
                case Place.TYPE_ESTABLISHMENT /*34*/:
                    matcher.appendReplacement(stringBuffer, "\\\\\\\"");
                    break;
                case Place.TYPE_HEALTH /*47*/:
                    matcher.appendReplacement(stringBuffer, "\\\\/");
                    break;
                case Place.TYPE_TRAIN_STATION /*92*/:
                    matcher.appendReplacement(stringBuffer, "\\\\\\\\");
                    break;
                default:
                    break;
            }
        }
        if (stringBuffer == null) {
            return str;
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    public static boolean zzd(Object obj, Object obj2) {
        if (obj == null && obj2 == null) {
            return true;
        }
        if (!(obj == null || obj2 == null)) {
            if ((obj instanceof JSONObject) && (obj2 instanceof JSONObject)) {
                JSONObject jSONObject = (JSONObject) obj;
                JSONObject jSONObject2 = (JSONObject) obj2;
                if (jSONObject.length() == jSONObject2.length()) {
                    Iterator keys = jSONObject.keys();
                    while (keys.hasNext()) {
                        String str = (String) keys.next();
                        if (jSONObject2.has(str)) {
                            try {
                                if (!zzd(jSONObject.get(str), jSONObject2.get(str))) {
                                    return false;
                                }
                            } catch (JSONException e) {
                                return false;
                            }
                        }
                    }
                    return true;
                }
            } else if (!(obj instanceof JSONArray) || !(obj2 instanceof JSONArray)) {
                return obj.equals(obj2);
            } else {
                JSONArray jSONArray = (JSONArray) obj;
                JSONArray jSONArray2 = (JSONArray) obj2;
                if (jSONArray.length() == jSONArray2.length()) {
                    int i = 0;
                    while (i < jSONArray.length()) {
                        try {
                            if (zzd(jSONArray.get(i), jSONArray2.get(i))) {
                                i++;
                            }
                        } catch (JSONException e2) {
                            return false;
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }
}
