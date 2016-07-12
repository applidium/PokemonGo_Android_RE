package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.voxelbusters.nativeplugins.defines.Keys.Scheme;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

@zzgr
public class zzgq implements UncaughtExceptionHandler {
    private Context mContext;
    private VersionInfoParcel zzBZ;
    private UncaughtExceptionHandler zzEc;
    private UncaughtExceptionHandler zzEd;

    public zzgq(Context context, VersionInfoParcel versionInfoParcel, UncaughtExceptionHandler uncaughtExceptionHandler, UncaughtExceptionHandler uncaughtExceptionHandler2) {
        this.zzEc = uncaughtExceptionHandler;
        this.zzEd = uncaughtExceptionHandler2;
        this.mContext = context;
        this.zzBZ = versionInfoParcel;
    }

    public static zzgq zza(Context context, Thread thread, VersionInfoParcel versionInfoParcel) {
        if (context == null || thread == null || versionInfoParcel == null) {
            return null;
        }
        if (!zzy(context)) {
            return null;
        }
        UncaughtExceptionHandler uncaughtExceptionHandler = thread.getUncaughtExceptionHandler();
        UncaughtExceptionHandler com_google_android_gms_internal_zzgq = new zzgq(context, versionInfoParcel, uncaughtExceptionHandler, Thread.getDefaultUncaughtExceptionHandler());
        if (uncaughtExceptionHandler != null && (uncaughtExceptionHandler instanceof zzgq)) {
            return (zzgq) uncaughtExceptionHandler;
        }
        try {
            thread.setUncaughtExceptionHandler(com_google_android_gms_internal_zzgq);
            return com_google_android_gms_internal_zzgq;
        } catch (Throwable e) {
            zzb.zzc("Fail to set UncaughtExceptionHandler.", e);
            return null;
        }
    }

    private Throwable zzb(Throwable th) {
        if (!((Boolean) zzby.zzur.get()).booleanValue()) {
            LinkedList linkedList = new LinkedList();
            while (th != null) {
                linkedList.push(th);
                th = th.getCause();
            }
            th = null;
            while (!linkedList.isEmpty()) {
                Throwable th2;
                Throwable th3 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th3.getStackTrace();
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
                int i = 0;
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (zzar(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        i = 1;
                    } else if (zzas(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                    } else {
                        arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                    }
                }
                if (i != 0) {
                    th2 = th == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th);
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                } else {
                    th2 = th;
                }
                th = th2;
            }
        }
        return th;
    }

    private static boolean zzy(Context context) {
        return ((Boolean) zzby.zzuq.get()).booleanValue();
    }

    public void uncaughtException(Thread thread, Throwable th) {
        if (zza(th)) {
            if (Looper.getMainLooper().getThread() != thread) {
                zza(th, true);
                return;
            }
            zza(th, false);
        }
        if (this.zzEc != null) {
            this.zzEc.uncaughtException(thread, th);
        } else if (this.zzEd != null) {
            this.zzEd.uncaughtException(thread, th);
        }
    }

    public void zza(Throwable th, boolean z) {
        if (zzy(this.mContext)) {
            Throwable zzb = zzb(th);
            if (zzb != null) {
                List arrayList = new ArrayList();
                arrayList.add(zzb(zzb, z));
                zzp.zzbv().zza(this.mContext, this.zzBZ.zzJu, arrayList, zzp.zzby().zzgr());
            }
        }
    }

    protected boolean zza(Throwable th) {
        if (th == null) {
            return false;
        }
        boolean z = false;
        boolean z2 = false;
        while (th != null) {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (zzar(stackTraceElement.getClassName())) {
                    z = true;
                }
                if (getClass().getName().equals(stackTraceElement.getClassName())) {
                    z2 = true;
                }
            }
            th = th.getCause();
        }
        return z && !z2;
    }

    protected boolean zzar(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        if (str.startsWith("com.google.android.gms.ads") || str.startsWith("com.google.ads")) {
            return true;
        }
        try {
            return Class.forName(str).isAnnotationPresent(zzgr.class);
        } catch (Throwable e) {
            zzb.zza("Fail to check class type for class " + str, e);
            return false;
        }
    }

    protected boolean zzas(String str) {
        return TextUtils.isEmpty(str) ? false : str.startsWith("android.") || str.startsWith("java.");
    }

    String zzb(Throwable th, boolean z) {
        Writer stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return new Builder().scheme(Scheme.HTTPS).path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter(TriggerIfContentAvailable.ID, "gmob-apps-report-exception").appendQueryParameter("os", VERSION.RELEASE).appendQueryParameter("api", String.valueOf(VERSION.SDK_INT)).appendQueryParameter("device", zzp.zzbv().zzgE()).appendQueryParameter("js", this.zzBZ.zzJu).appendQueryParameter("appid", this.mContext.getApplicationContext().getPackageName()).appendQueryParameter("stacktrace", stringWriter.toString()).appendQueryParameter("eids", TextUtils.join(",", zzby.zzdf())).appendQueryParameter("trapped", String.valueOf(z)).toString();
    }
}
