package com.voxelbusters.nativeplugins.features.sharing;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.voxelbusters.nativeplugins.defines.Enums.eShareOptions;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;
import com.voxelbusters.nativeplugins.defines.Keys.Package;
import com.voxelbusters.nativeplugins.utilities.ApplicationUtility;
import java.util.ArrayList;
import java.util.HashMap;

public class SharingHelper {
    public static HashMap<String, eShareOptions> packageNameMap;

    static {
        packageNameMap = null;
        packageNameMap = new HashMap();
        packageNameMap.put(Package.FACEBOOK_1, eShareOptions.FB);
        packageNameMap.put(Package.FACEBOOK_2, eShareOptions.FB);
        packageNameMap.put(Package.TWITTER, eShareOptions.TWITTER);
        packageNameMap.put(Package.GOOGLE_PLUS, eShareOptions.GOOGLE_PLUS);
        packageNameMap.put(Package.INSTAGRAM, eShareOptions.INSTAGRAM);
        packageNameMap.put(Package.WHATS_APP, eShareOptions.WHATSAPP);
    }

    public static boolean checkIfPackageMatchesShareOptions(String str, String[] strArr) {
        eShareOptions com_voxelbusters_nativeplugins_defines_Enums_eShareOptions = (eShareOptions) packageNameMap.get(str);
        if (strArr == null || strArr.length <= 0 || com_voxelbusters_nativeplugins_defines_Enums_eShareOptions == null) {
            return false;
        }
        for (String parseInt : strArr) {
            if (Integer.parseInt(parseInt) == com_voxelbusters_nativeplugins_defines_Enums_eShareOptions.ordinal()) {
                return true;
            }
        }
        return false;
    }

    public static Intent[] getPriorityIntents(Intent intent) {
        ArrayList arrayList = new ArrayList();
        for (String str : packageNameMap.keySet()) {
            Intent intent2 = new Intent("android.intent.action.SEND");
            intent2.setPackage(str);
            arrayList.add(intent2);
        }
        return (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
    }

    public static Intent[] getPrioritySocialNetworkingIntents(Intent intent) {
        ArrayList arrayList = new ArrayList();
        for (String str : packageNameMap.keySet()) {
            if (isSocialNetwork(str)) {
                Intent intent2 = new Intent(intent);
                intent2.setPackage(str);
                arrayList.add(intent2);
            }
        }
        return (Intent[]) arrayList.toArray(new Intent[arrayList.size()]);
    }

    public static boolean isServiceAvailable(Context context, eShareOptions com_voxelbusters_nativeplugins_defines_Enums_eShareOptions) {
        if (com_voxelbusters_nativeplugins_defines_Enums_eShareOptions == eShareOptions.FB) {
            return ApplicationUtility.isIntentAvailable(context, "android.intent.action.SEND", Mime.PLAIN_TEXT, Package.FACEBOOK_1) || ApplicationUtility.isIntentAvailable(context, "android.intent.action.SEND", Mime.PLAIN_TEXT, Package.FACEBOOK_2);
        } else {
            if (com_voxelbusters_nativeplugins_defines_Enums_eShareOptions == eShareOptions.TWITTER) {
                return ApplicationUtility.isIntentAvailable(context, "android.intent.action.SEND", Mime.PLAIN_TEXT, Package.TWITTER);
            }
            if (com_voxelbusters_nativeplugins_defines_Enums_eShareOptions == eShareOptions.WHATSAPP) {
                return ApplicationUtility.isIntentAvailable(context, "android.intent.action.SEND", Mime.PLAIN_TEXT, Package.WHATS_APP);
            }
            if (com_voxelbusters_nativeplugins_defines_Enums_eShareOptions != eShareOptions.MESSAGE) {
                return com_voxelbusters_nativeplugins_defines_Enums_eShareOptions == eShareOptions.MAIL ? ApplicationUtility.isIntentAvailable(context, "android.intent.action.SEND", Mime.EMAIL, null) : false;
            } else {
                Intent intent = new Intent("android.intent.action.SENDTO");
                intent.setData(Uri.parse(Keys.Intent.SCHEME_SEND_TO));
                return ApplicationUtility.isIntentAvailable(context, intent);
            }
        }
    }

    public static boolean isSocialNetwork(String str) {
        eShareOptions com_voxelbusters_nativeplugins_defines_Enums_eShareOptions = (eShareOptions) packageNameMap.get(str);
        return com_voxelbusters_nativeplugins_defines_Enums_eShareOptions != null && (eShareOptions.FB == com_voxelbusters_nativeplugins_defines_Enums_eShareOptions || eShareOptions.TWITTER == com_voxelbusters_nativeplugins_defines_Enums_eShareOptions || eShareOptions.GOOGLE_PLUS == com_voxelbusters_nativeplugins_defines_Enums_eShareOptions || eShareOptions.INSTAGRAM == com_voxelbusters_nativeplugins_defines_Enums_eShareOptions);
    }
}
