package com.upsight.android.internal.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;

public final class NetworkHelper {
    public static final String NETWORK_OPERATOR_NONE = "none";
    public static final String NETWORK_TYPE_NONE = "no_network";

    public static String getActiveNetworkType(Context context) {
        String str = NETWORK_TYPE_NONE;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager != null) {
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    Object typeName = activeNetworkInfo.getTypeName();
                    if (!TextUtils.isEmpty(typeName)) {
                        return typeName;
                    }
                }
            }
            return str;
        } catch (SecurityException e) {
            return str;
        }
    }

    public static String getNetworkOperatorName(Context context) {
        String str = NETWORK_OPERATOR_NONE;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) context.getSystemService("phone");
            return telephonyManager != null ? telephonyManager.getNetworkOperatorName() : str;
        } catch (SecurityException e) {
            return str;
        }
    }

    public static boolean isConnected(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnected();
        } catch (SecurityException e) {
            return false;
        }
    }
}
