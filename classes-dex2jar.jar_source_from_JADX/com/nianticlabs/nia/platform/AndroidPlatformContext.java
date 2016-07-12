package com.nianticlabs.nia.platform;

import android.content.Context;
import android.content.SharedPreferences;
import android.provider.Settings.Secure;
import android.util.Base64;
import com.nianticlabs.nia.contextservice.ContextService;
import java.io.File;
import java.util.Locale;

public class AndroidPlatformContext extends ContextService {
    private final SharedPreferences prefs;

    public AndroidPlatformContext(Context context, long j) {
        super(context, j);
        this.prefs = context.getSharedPreferences(context.getPackageName() + ".PREFS", 0);
    }

    public String concatPath(String str, String str2) {
        return new File(str, str2).getPath();
    }

    public boolean deleteFile(String str) {
        return new File(str).delete();
    }

    public boolean deleteSetting(String str) {
        return this.prefs.edit().remove(str).commit();
    }

    public long fileSize(String str) {
        return new File(str).length();
    }

    public String getCacheDirectory() {
        return this.context.getCacheDir().getPath();
    }

    public String getDeviceCountryCode() {
        return Locale.getDefault().getCountry();
    }

    public String getDeviceId() {
        return Secure.getString(this.context.getContentResolver(), "android_id");
    }

    public String getDeviceLanguageCode() {
        return Locale.getDefault().getLanguage();
    }

    public byte[] getSetting(String str) {
        String string = this.prefs.getString(str, null);
        return string != null ? Base64.decode(string.getBytes(), 0) : null;
    }

    public boolean makePathRecursive(String str) {
        return new File(str).mkdirs();
    }

    public boolean pathExists(String str) {
        return new File(str).exists();
    }

    public boolean setSetting(String str, byte[] bArr) {
        return this.prefs.edit().putString(str, Base64.encodeToString(bArr, 0)).commit();
    }
}
