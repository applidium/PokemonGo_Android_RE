package com.voxelbusters.nativeplugins.features.sharing;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.Html;
import com.voxelbusters.nativeplugins.NativePluginHelper;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import com.voxelbusters.nativeplugins.defines.Enums.eShareOptions;
import com.voxelbusters.nativeplugins.defines.Keys;
import com.voxelbusters.nativeplugins.defines.Keys.Sharing;
import com.voxelbusters.nativeplugins.utilities.FileUtility;
import com.voxelbusters.nativeplugins.utilities.StringUtility;
import spacemadness.com.lunarconsole.BuildConfig;

public class SharingHandler {
    private static SharingHandler INSTANCE;

    public enum eShareCategeories {
        UNDEFINED,
        TEXT
    }

    private SharingHandler() {
    }

    public static SharingHandler getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new SharingHandler();
        }
        return INSTANCE;
    }

    Context getContext() {
        return NativePluginHelper.getCurrentContext();
    }

    public boolean isServiceAvailable(int i) {
        return SharingHelper.isServiceAvailable(getContext(), eShareOptions.values()[i]);
    }

    public void sendMail(String str, String str2, boolean z, byte[] bArr, int i, String str3, String str4, String str5, String str6, String str7) {
        CharSequence charSequence;
        Bundle bundle = new Bundle();
        bundle.putString(Keys.TYPE, Sharing.MAIL);
        bundle.putString(Keys.SUBJECT, str);
        if (StringUtility.isNullOrEmpty(str2)) {
            charSequence = BuildConfig.FLAVOR;
        } else {
            Object obj = str2;
        }
        if (z) {
            charSequence = Html.fromHtml(charSequence);
        }
        bundle.putCharSequence(Keys.BODY, charSequence);
        if (!(i == 0 || FileUtility.createSharingFileUri(getContext(), bArr, i, CommonDefines.SHARING_DIR, str4) == null)) {
            bundle.putStringArray(Keys.ATTACHMENT, new String[]{r0.toString()});
        }
        String[] convertJsonStringToStringArray = StringUtility.convertJsonStringToStringArray(str5);
        String[] convertJsonStringToStringArray2 = StringUtility.convertJsonStringToStringArray(str6);
        String[] convertJsonStringToStringArray3 = StringUtility.convertJsonStringToStringArray(str7);
        bundle.putStringArray(Sharing.TO_RECIPIENT_LIST, convertJsonStringToStringArray);
        bundle.putStringArray(Sharing.CC_RECIPIENT_LIST, convertJsonStringToStringArray2);
        bundle.putStringArray(Sharing.BCC_RECIPIENT_LIST, convertJsonStringToStringArray3);
        startActivity(bundle);
    }

    public void sendSms(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(Keys.TYPE, Sharing.SMS);
        bundle.putString(Keys.MESSAGE, str);
        bundle.putStringArray(Sharing.TO_RECIPIENT_LIST, StringUtility.convertJsonStringToStringArray(str2));
        startActivity(bundle);
    }

    public void share(String str, String str2, byte[] bArr, int i, String str3) {
        String[] convertJsonStringToStringArray = StringUtility.convertJsonStringToStringArray(str3);
        Bundle bundle = new Bundle();
        bundle.putString(Keys.TYPE, BuildConfig.FLAVOR);
        bundle.putString(Keys.MESSAGE, str);
        bundle.putString(Keys.URL, str2);
        Uri createSharingFileUri = FileUtility.createSharingFileUri(getContext(), bArr, i, CommonDefines.SHARING_DIR, System.currentTimeMillis() + ".png");
        if (createSharingFileUri != null) {
            bundle.putString(Keys.IMAGE_PATH, createSharingFileUri.toString());
        }
        bundle.putStringArray(Keys.EXCLUDE_LIST, convertJsonStringToStringArray);
        startActivity(bundle);
    }

    public void shareOnWhatsApp(String str, byte[] bArr, int i) {
        Uri uri = null;
        if (i != 0) {
            uri = FileUtility.createSharingFileUri(getContext(), bArr, i, CommonDefines.SHARING_DIR, System.currentTimeMillis() + ".png");
        }
        Bundle bundle = new Bundle();
        bundle.putString(Keys.TYPE, Sharing.WHATS_APP);
        bundle.putString(Keys.MESSAGE, str);
        if (uri != null) {
            bundle.putString(Keys.IMAGE_PATH, uri.toString());
        }
        startActivity(bundle);
    }

    public void startActivity(Bundle bundle) {
        Intent intent = new Intent(NativePluginHelper.getCurrentContext(), SharingActivity.class);
        intent.putExtras(bundle);
        NativePluginHelper.startActivityOnUiThread(intent);
    }
}
