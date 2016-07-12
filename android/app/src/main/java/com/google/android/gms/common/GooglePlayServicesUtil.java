package com.google.android.gms.common;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.AppOpsManager;
import android.app.Dialog;
import android.app.Notification;
import android.app.Notification.BigTextStyle;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller.SessionInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.net.Uri.Builder;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.UserManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.NotificationCompat;
import android.support.v4.app.NotificationCompatExtras;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.text.TextUtils;
import android.util.Log;
import android.util.TypedValue;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.C0170R;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.common.internal.zzh;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzml;
import com.google.android.gms.internal.zzmx;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.io.InputStream;
import java.util.NoSuchElementException;
import java.util.Scanner;
import java.util.concurrent.atomic.AtomicBoolean;
import spacemadness.com.lunarconsole.C1401R;

public final class GooglePlayServicesUtil {
    public static final String GMS_ERROR_DIALOG = "GooglePlayServicesErrorDialog";
    @Deprecated
    public static final String GOOGLE_PLAY_SERVICES_PACKAGE = "com.google.android.gms";
    @Deprecated
    public static final int GOOGLE_PLAY_SERVICES_VERSION_CODE;
    public static final String GOOGLE_PLAY_STORE_PACKAGE = "com.android.vending";
    public static boolean zzaal;
    public static boolean zzaam;
    private static int zzaan;
    private static String zzaao;
    private static Integer zzaap;
    static final AtomicBoolean zzaaq;
    private static final AtomicBoolean zzaar;
    private static final Object zzpy;

    private static class zza extends Handler {
        private final Context zzqZ;

        zza(Context context) {
            super(Looper.myLooper() == null ? Looper.getMainLooper() : Looper.myLooper());
            this.zzqZ = context.getApplicationContext();
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.zzqZ);
                    if (GooglePlayServicesUtil.isUserRecoverableError(isGooglePlayServicesAvailable)) {
                        GooglePlayServicesUtil.zza(isGooglePlayServicesAvailable, this.zzqZ);
                    }
                default:
                    Log.w("GooglePlayServicesUtil", "Don't know how to handle this message: " + message.what);
            }
        }
    }

    static {
        GOOGLE_PLAY_SERVICES_VERSION_CODE = zzns();
        zzaal = false;
        zzaam = false;
        zzaan = -1;
        zzpy = new Object();
        zzaao = null;
        zzaap = null;
        zzaaq = new AtomicBoolean();
        zzaar = new AtomicBoolean();
    }

    private GooglePlayServicesUtil() {
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2) {
        return getErrorDialog(i, activity, i2, null);
    }

    @Deprecated
    public static Dialog getErrorDialog(int i, Activity activity, int i2, OnCancelListener onCancelListener) {
        return zza(i, activity, null, i2, onCancelListener);
    }

    @Deprecated
    public static PendingIntent getErrorPendingIntent(int i, Context context, int i2) {
        return GoogleApiAvailability.getInstance().getErrorResolutionPendingIntent(context, i, i2);
    }

    @Deprecated
    public static String getErrorString(int i) {
        return ConnectionResult.getStatusString(i);
    }

    @Deprecated
    public static String getOpenSourceSoftwareLicenseInfo(Context context) {
        InputStream openInputStream;
        try {
            openInputStream = context.getContentResolver().openInputStream(new Builder().scheme("android.resource").authority(GOOGLE_PLAY_SERVICES_PACKAGE).appendPath("raw").appendPath("oss_notice").build());
            String next = new Scanner(openInputStream).useDelimiter("\\A").next();
            if (openInputStream == null) {
                return next;
            }
            openInputStream.close();
            return next;
        } catch (NoSuchElementException e) {
            if (openInputStream != null) {
                openInputStream.close();
            }
            return null;
        } catch (Exception e2) {
            return null;
        } catch (Throwable th) {
            if (openInputStream != null) {
                openInputStream.close();
            }
        }
    }

    public static Context getRemoteContext(Context context) {
        try {
            return context.createPackageContext(GOOGLE_PLAY_SERVICES_PACKAGE, 3);
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    public static Resources getRemoteResource(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication(GOOGLE_PLAY_SERVICES_PACKAGE);
        } catch (NameNotFoundException e) {
            return null;
        }
    }

    @Deprecated
    public static int isGooglePlayServicesAvailable(Context context) {
        if (zzd.zzaeK) {
            return GOOGLE_PLAY_SERVICES_VERSION_CODE;
        }
        PackageManager packageManager = context.getPackageManager();
        try {
            context.getResources().getString(C0170R.string.common_google_play_services_unknown_issue);
        } catch (Throwable th) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!GOOGLE_PLAY_SERVICES_PACKAGE.equals(context.getPackageName())) {
            zzad(context);
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 64);
            zzd zznu = zzd.zznu();
            if (!zzml.zzcb(packageInfo.versionCode) && !zzml.zzan(context)) {
                try {
                    if (zznu.zza(packageManager.getPackageInfo(GOOGLE_PLAY_STORE_PACKAGE, 8256), zzbz.zzaak) == null) {
                        Log.w("GooglePlayServicesUtil", "Google Play Store signature invalid.");
                        return 9;
                    }
                    if (zznu.zza(packageInfo, zznu.zza(packageManager.getPackageInfo(GOOGLE_PLAY_STORE_PACKAGE, 8256), zzbz.zzaak)) == null) {
                        Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                        return 9;
                    }
                } catch (NameNotFoundException e) {
                    Log.w("GooglePlayServicesUtil", "Google Play Store is neither installed nor updating.");
                    return 9;
                }
            } else if (zznu.zza(packageInfo, zzbz.zzaak) == null) {
                Log.w("GooglePlayServicesUtil", "Google Play services signature invalid.");
                return 9;
            }
            if (zzml.zzca(packageInfo.versionCode) < zzml.zzca(GOOGLE_PLAY_SERVICES_VERSION_CODE)) {
                Log.w("GooglePlayServicesUtil", "Google Play services out of date.  Requires " + GOOGLE_PLAY_SERVICES_VERSION_CODE + " but found " + packageInfo.versionCode);
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo(GOOGLE_PLAY_SERVICES_PACKAGE, GOOGLE_PLAY_SERVICES_VERSION_CODE);
                } catch (Throwable e2) {
                    Log.wtf("GooglePlayServicesUtil", "Google Play services missing when getting application info.", e2);
                    return 1;
                }
            }
            return !applicationInfo.enabled ? 3 : GOOGLE_PLAY_SERVICES_VERSION_CODE;
        } catch (NameNotFoundException e3) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 1;
        }
    }

    @Deprecated
    public static boolean isUserRecoverableError(int i) {
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
            case Place.TYPE_BAR /*9*/:
                return true;
            default:
                return false;
        }
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2) {
        return showErrorDialogFragment(i, activity, i2, null);
    }

    @Deprecated
    public static boolean showErrorDialogFragment(int i, Activity activity, int i2, OnCancelListener onCancelListener) {
        return showErrorDialogFragment(i, activity, null, i2, onCancelListener);
    }

    public static boolean showErrorDialogFragment(int i, Activity activity, Fragment fragment, int i2, OnCancelListener onCancelListener) {
        Dialog zza = zza(i, activity, fragment, i2, onCancelListener);
        if (zza == null) {
            return false;
        }
        zza(activity, onCancelListener, GMS_ERROR_DIALOG, zza);
        return true;
    }

    @Deprecated
    public static void showErrorNotification(int i, Context context) {
        if (zzml.zzan(context) && i == 2) {
            i = 42;
        }
        if (zzd(context, i) || zzf(context, i)) {
            zzae(context);
        } else {
            zza(i, context);
        }
    }

    private static Dialog zza(int i, Activity activity, Fragment fragment, int i2, OnCancelListener onCancelListener) {
        AlertDialog.Builder builder = null;
        if (i == 0) {
            return null;
        }
        if (zzml.zzan(activity) && i == 2) {
            i = 42;
        }
        if (zzmx.zzqx()) {
            TypedValue typedValue = new TypedValue();
            activity.getTheme().resolveAttribute(16843529, typedValue, true);
            if ("Theme.Dialog.Alert".equals(activity.getResources().getResourceEntryName(typedValue.resourceId))) {
                builder = new AlertDialog.Builder(activity, 5);
            }
        }
        if (builder == null) {
            builder = new AlertDialog.Builder(activity);
        }
        builder.setMessage(zzg.zzc(activity, i, zzaf(activity)));
        if (onCancelListener != null) {
            builder.setOnCancelListener(onCancelListener);
        }
        Intent zza = GoogleApiAvailability.getInstance().zza(activity, i, "d");
        OnClickListener com_google_android_gms_common_internal_zzh = fragment == null ? new zzh(activity, zza, i2) : new zzh(fragment, zza, i2);
        CharSequence zzh = zzg.zzh(activity, i);
        if (zzh != null) {
            builder.setPositiveButton(zzh, com_google_android_gms_common_internal_zzh);
        }
        CharSequence zzg = zzg.zzg(activity, i);
        if (zzg != null) {
            builder.setTitle(zzg);
        }
        return builder.create();
    }

    private static void zza(int i, Context context) {
        zza(i, context, null);
    }

    private static void zza(int i, Context context, String str) {
        Notification build;
        int i2;
        Resources resources = context.getResources();
        String zzaf = zzaf(context);
        CharSequence zzi = zzg.zzi(context, i);
        if (zzi == null) {
            zzi = resources.getString(C0170R.string.common_google_play_services_notification_ticker);
        }
        CharSequence zzd = zzg.zzd(context, i, zzaf);
        PendingIntent zza = GoogleApiAvailability.getInstance().zza(context, i, GOOGLE_PLAY_SERVICES_VERSION_CODE, "n");
        if (zzml.zzan(context)) {
            zzx.zzZ(zzmx.zzqy());
            build = new Notification.Builder(context).setSmallIcon(C0170R.drawable.common_ic_googleplayservices).setPriority(2).setAutoCancel(true).setStyle(new BigTextStyle().bigText(zzi + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + zzd)).addAction(C0170R.drawable.common_full_open_on_phone, resources.getString(C0170R.string.common_open_on_phone), zza).build();
        } else {
            CharSequence string = resources.getString(C0170R.string.common_google_play_services_notification_ticker);
            if (zzmx.zzqu()) {
                Notification build2;
                Notification.Builder autoCancel = new Notification.Builder(context).setSmallIcon(17301642).setContentTitle(zzi).setContentText(zzd).setContentIntent(zza).setTicker(string).setAutoCancel(true);
                if (zzmx.zzqC()) {
                    autoCancel.setLocalOnly(true);
                }
                if (zzmx.zzqy()) {
                    autoCancel.setStyle(new BigTextStyle().bigText(zzd));
                    build2 = autoCancel.build();
                } else {
                    build2 = autoCancel.getNotification();
                }
                if (VERSION.SDK_INT == 19) {
                    build2.extras.putBoolean(NotificationCompatExtras.EXTRA_LOCAL_ONLY, true);
                }
                build = build2;
            } else {
                build = new NotificationCompat.Builder(context).setSmallIcon(17301642).setTicker(string).setWhen(System.currentTimeMillis()).setAutoCancel(true).setContentIntent(zza).setContentTitle(zzi).setContentText(zzd).build();
            }
        }
        if (zzbk(i)) {
            zzaaq.set(false);
            i2 = 10436;
        } else {
            i2 = 39789;
        }
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        if (str != null) {
            notificationManager.notify(str, i2, build);
        } else {
            notificationManager.notify(i2, build);
        }
    }

    public static void zza(Activity activity, OnCancelListener onCancelListener, String str, Dialog dialog) {
        boolean z;
        try {
            z = activity instanceof FragmentActivity;
        } catch (NoClassDefFoundError e) {
            z = false;
        }
        if (z) {
            SupportErrorDialogFragment.newInstance(dialog, onCancelListener).show(((FragmentActivity) activity).getSupportFragmentManager(), str);
        } else if (zzmx.zzqu()) {
            ErrorDialogFragment.newInstance(dialog, onCancelListener).show(activity.getFragmentManager(), str);
        } else {
            throw new RuntimeException("This Activity does not support Fragments.");
        }
    }

    @Deprecated
    public static void zzaa(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int isGooglePlayServicesAvailable = GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context);
        if (isGooglePlayServicesAvailable != 0) {
            Intent zza = GoogleApiAvailability.getInstance().zza(context, isGooglePlayServicesAvailable, "e");
            Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + isGooglePlayServicesAvailable);
            if (zza == null) {
                throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
            }
            throw new GooglePlayServicesRepairableException(isGooglePlayServicesAvailable, "Google Play Services not available", zza);
        }
    }

    @Deprecated
    public static void zzac(Context context) {
        if (!zzaaq.getAndSet(true)) {
            try {
                ((NotificationManager) context.getSystemService("notification")).cancel(10436);
            } catch (SecurityException e) {
            }
        }
    }

    private static void zzad(Context context) {
        if (!zzaar.get()) {
            Integer num;
            synchronized (zzpy) {
                if (zzaao == null) {
                    zzaao = context.getPackageName();
                    try {
                        Bundle bundle = context.getPackageManager().getApplicationInfo(context.getPackageName(), AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS).metaData;
                        if (bundle != null) {
                            zzaap = Integer.valueOf(bundle.getInt("com.google.android.gms.version"));
                        } else {
                            zzaap = null;
                        }
                    } catch (Throwable e) {
                        Log.wtf("GooglePlayServicesUtil", "This should never happen.", e);
                    }
                } else if (!zzaao.equals(context.getPackageName())) {
                    throw new IllegalArgumentException("isGooglePlayServicesAvailable should only be called with Context from your application's package. A previous call used package '" + zzaao + "' and this call used package '" + context.getPackageName() + "'.");
                }
                num = zzaap;
            }
            if (num == null) {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            } else if (num.intValue() != GOOGLE_PLAY_SERVICES_VERSION_CODE) {
                throw new IllegalStateException("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected " + GOOGLE_PLAY_SERVICES_VERSION_CODE + " but" + " found " + num + ".  You must have the" + " following declaration within the <application> element: " + "    <meta-data android:name=\"" + "com.google.android.gms.version" + "\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
    }

    private static void zzae(Context context) {
        Handler com_google_android_gms_common_GooglePlayServicesUtil_zza = new zza(context);
        com_google_android_gms_common_GooglePlayServicesUtil_zza.sendMessageDelayed(com_google_android_gms_common_GooglePlayServicesUtil_zza.obtainMessage(1), 120000);
    }

    public static String zzaf(Context context) {
        Object obj = context.getApplicationInfo().name;
        if (!TextUtils.isEmpty(obj)) {
            return obj;
        }
        ApplicationInfo applicationInfo;
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getApplicationContext().getPackageManager();
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), GOOGLE_PLAY_SERVICES_VERSION_CODE);
        } catch (NameNotFoundException e) {
            applicationInfo = null;
        }
        return applicationInfo != null ? packageManager.getApplicationLabel(applicationInfo).toString() : packageName;
    }

    public static boolean zzag(Context context) {
        return zzmx.zzqD() && context.getPackageManager().hasSystemFeature("com.google.sidewinder");
    }

    public static boolean zzah(Context context) {
        if (zzmx.zzqA()) {
            Bundle applicationRestrictions = ((UserManager) context.getSystemService(GameServices.SCORE_USER)).getApplicationRestrictions(context.getPackageName());
            if (applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"))) {
                return true;
            }
        }
        return false;
    }

    public static boolean zzb(Context context, int i, String str) {
        if (zzmx.zzqB()) {
            try {
                ((AppOpsManager) context.getSystemService("appops")).checkPackage(i, str);
                return true;
            } catch (SecurityException e) {
                return false;
            }
        }
        String[] packagesForUid = context.getPackageManager().getPackagesForUid(i);
        if (!(str == null || packagesForUid == null)) {
            for (int i2 = GOOGLE_PLAY_SERVICES_VERSION_CODE; i2 < packagesForUid.length; i2++) {
                if (str.equals(packagesForUid[i2])) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean zzb(PackageManager packageManager) {
        boolean z = false;
        synchronized (zzpy) {
            if (zzaan == -1) {
                try {
                    PackageInfo packageInfo = packageManager.getPackageInfo(GOOGLE_PLAY_SERVICES_PACKAGE, 64);
                    if (zzd.zznu().zza(packageInfo, zzc.zzaad[1]) != null) {
                        zzaan = 1;
                    } else {
                        zzaan = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                    }
                } catch (NameNotFoundException e) {
                    zzaan = GOOGLE_PLAY_SERVICES_VERSION_CODE;
                }
            }
            if (zzaan != 0) {
                z = true;
            }
        }
        return z;
    }

    @Deprecated
    public static boolean zzb(PackageManager packageManager, String str) {
        return zzd.zznu().zzb(packageManager, str);
    }

    @Deprecated
    public static Intent zzbj(int i) {
        return GoogleApiAvailability.getInstance().zza(null, i, null);
    }

    private static boolean zzbk(int i) {
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
            case Place.TYPE_CAR_RENTAL /*18*/:
            case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                return true;
            default:
                return false;
        }
    }

    public static boolean zzc(PackageManager packageManager) {
        return zzb(packageManager) || !zznt();
    }

    @Deprecated
    public static boolean zzd(Context context, int i) {
        return i == 18 ? true : i == 1 ? zzj(context, GOOGLE_PLAY_SERVICES_PACKAGE) : false;
    }

    public static boolean zze(Context context, int i) {
        return zzb(context, i, GOOGLE_PLAY_SERVICES_PACKAGE) && zzb(context.getPackageManager(), GOOGLE_PLAY_SERVICES_PACKAGE);
    }

    @Deprecated
    public static boolean zzf(Context context, int i) {
        return i == 9 ? zzj(context, GOOGLE_PLAY_STORE_PACKAGE) : false;
    }

    static boolean zzj(Context context, String str) {
        if (zzmx.zzqD()) {
            for (SessionInfo appPackageName : context.getPackageManager().getPackageInstaller().getAllSessions()) {
                if (str.equals(appPackageName.getAppPackageName())) {
                    return true;
                }
            }
        }
        if (zzah(context)) {
            return false;
        }
        try {
            return context.getPackageManager().getApplicationInfo(str, AccessibilityNodeInfoCompat.ACTION_SCROLL_BACKWARD).enabled;
        } catch (NameNotFoundException e) {
            return false;
        }
    }

    private static int zzns() {
        return 8115000;
    }

    public static boolean zznt() {
        return zzaal ? zzaam : GameServices.SCORE_USER.equals(Build.TYPE);
    }
}
