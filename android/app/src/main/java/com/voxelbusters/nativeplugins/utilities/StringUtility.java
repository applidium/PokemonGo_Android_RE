package com.voxelbusters.nativeplugins.utilities;

import android.util.Base64;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import java.io.UnsupportedEncodingException;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Date;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import com.nianticlabs.pokemongo.BuildConfig;

public class StringUtility {
    public static boolean contains(String str, String[] strArr) {
        for (CharSequence contains : strArr) {
            if (str.contains(contains)) {
                return true;
            }
        }
        return false;
    }

    public static String[] convertJsonStringToStringArray(String str) {
        String[] strArr = null;
        if (!isNullOrEmpty(str)) {
            try {
                JSONArray jSONArray = new JSONArray(str);
                int length = jSONArray.length();
                strArr = new String[length];
                for (int i = 0; i < length; i++) {
                    strArr[i] = new String(jSONArray.getString(i));
                }
            } catch (JSONException e) {
                e.printStackTrace();
                Debug.error(CommonDefines.STRING_UTILS_TAG, "Error in parsing jsonString " + str);
            }
        }
        return strArr;
    }

    public static String getBase64DecodedString(String str) {
        byte[] decode = Base64.decode(str, 0);
        String str2 = BuildConfig.FLAVOR;
        try {
            return new String(decode, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return str2;
        }
    }

    public static String getCurrencySymbolFromCode(String str) {
        String str2 = BuildConfig.FLAVOR;
        try {
            str2 = Currency.getInstance(str).getSymbol();
        } catch (Exception e) {
            Debug.log(CommonDefines.STRING_UTILS_TAG, "Error in converting currency code : " + str);
        }
        return str2;
    }

    public static String getCurrentTimeStamp() {
        return new SimpleDateFormat("yyyyMMdd_HHmmss", Locale.getDefault()).format(new Date());
    }

    public static String getFileNameWithoutExtension(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        return lastIndexOf >= 0 ? str.substring(0, lastIndexOf) : str;
    }

    public static boolean isNullOrEmpty(String str) {
        return str == null || str.equals(BuildConfig.FLAVOR) || str.equals("null");
    }
}
