package crittercism.android;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager.NameNotFoundException;
import com.crittercism.app.CrittercismConfig;
import spacemadness.com.lunarconsole.BuildConfig;

public final class at {
    public String f323a;
    public int f324b;

    public at(Context context, CrittercismConfig crittercismConfig) {
        this.f323a = BuildConfig.VERSION_NAME;
        this.f324b = 0;
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            this.f323a = packageInfo.versionName;
            this.f324b = packageInfo.versionCode;
        } catch (NameNotFoundException e) {
        }
        String customVersionName = crittercismConfig.getCustomVersionName();
        if (customVersionName != null && customVersionName.length() > 0) {
            this.f323a = customVersionName;
        }
        if (crittercismConfig.isVersionCodeToBeIncludedInVersionString()) {
            this.f323a += "-" + Integer.toString(this.f324b);
        }
    }
}
