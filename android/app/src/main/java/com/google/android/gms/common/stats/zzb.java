package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Debug;
import android.os.Parcelable;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzd;
import com.google.android.gms.common.stats.zzc.zza;
import com.google.android.gms.internal.zzmm;
import com.google.android.gms.internal.zzmy;
import com.google.android.gms.location.places.Place;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class zzb {
    private static final Object zzafW;
    private static Integer zzahE;
    private static zzb zzahy;
    private final List<String> zzahA;
    private final List<String> zzahB;
    private final List<String> zzahC;
    private zze zzahD;
    private zze zzahF;
    private final List<String> zzahz;

    static {
        zzafW = new Object();
    }

    private zzb() {
        if (getLogLevel() == zzd.LOG_LEVEL_OFF) {
            this.zzahz = Collections.EMPTY_LIST;
            this.zzahA = Collections.EMPTY_LIST;
            this.zzahB = Collections.EMPTY_LIST;
            this.zzahC = Collections.EMPTY_LIST;
            return;
        }
        String str = (String) zza.zzahI.get();
        this.zzahz = str == null ? Collections.EMPTY_LIST : Arrays.asList(str.split(","));
        str = (String) zza.zzahJ.get();
        this.zzahA = str == null ? Collections.EMPTY_LIST : Arrays.asList(str.split(","));
        str = (String) zza.zzahK.get();
        this.zzahB = str == null ? Collections.EMPTY_LIST : Arrays.asList(str.split(","));
        str = (String) zza.zzahL.get();
        this.zzahC = str == null ? Collections.EMPTY_LIST : Arrays.asList(str.split(","));
        this.zzahD = new zze(Place.TYPE_SUBLOCALITY_LEVEL_2, ((Long) zza.zzahM.get()).longValue());
        this.zzahF = new zze(Place.TYPE_SUBLOCALITY_LEVEL_2, ((Long) zza.zzahM.get()).longValue());
    }

    private static int getLogLevel() {
        if (zzahE == null) {
            try {
                zzahE = Integer.valueOf(zzmm.zzjA() ? ((Integer) zza.zzahH.get()).intValue() : zzd.LOG_LEVEL_OFF);
            } catch (SecurityException e) {
                zzahE = Integer.valueOf(zzd.LOG_LEVEL_OFF);
            }
        }
        return zzahE.intValue();
    }

    private void zza(Context context, String str, int i, String str2, String str3, String str4, String str5) {
        Parcelable connectionEvent;
        long currentTimeMillis = System.currentTimeMillis();
        String str6 = null;
        if (!((getLogLevel() & zzd.zzahR) == 0 || i == 13)) {
            str6 = zzmy.zzl(3, 5);
        }
        long j = 0;
        if ((getLogLevel() & zzd.zzahT) != 0) {
            j = Debug.getNativeHeapAllocatedSize();
        }
        if (i == 1 || i == 4 || i == 14) {
            connectionEvent = new ConnectionEvent(currentTimeMillis, i, null, null, null, null, str6, str, SystemClock.elapsedRealtime(), j);
        } else {
            connectionEvent = new ConnectionEvent(currentTimeMillis, i, str2, str3, str4, str5, str6, str, SystemClock.elapsedRealtime(), j);
        }
        context.startService(new Intent().setComponent(zzd.zzahN).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", connectionEvent));
    }

    private void zza(Context context, String str, String str2, Intent intent, int i) {
        String str3 = null;
        if (zzqi() && this.zzahD != null) {
            String str4;
            String zzaq;
            if (i != 4 && i != 1) {
                ServiceInfo zzd = zzd(context, intent);
                if (zzd == null) {
                    Log.w("ConnectionTracker", String.format("Client %s made an invalid request %s", new Object[]{str2, intent.toUri(0)}));
                    return;
                }
                str4 = zzd.processName;
                str3 = zzd.name;
                zzaq = zzmy.zzaq(context);
                if (zzb(zzaq, str2, str4, str3)) {
                    this.zzahD.zzcx(str);
                } else {
                    return;
                }
            } else if (this.zzahD.zzcy(str)) {
                zzaq = null;
                str4 = null;
            } else {
                return;
            }
            zza(context, str, i, zzaq, str2, str4, str3);
        }
    }

    private String zzb(ServiceConnection serviceConnection) {
        return String.valueOf((((long) Process.myPid()) << 32) | ((long) System.identityHashCode(serviceConnection)));
    }

    private boolean zzb(String str, String str2, String str3, String str4) {
        return (this.zzahz.contains(str) || this.zzahA.contains(str2) || this.zzahB.contains(str3) || this.zzahC.contains(str4) || (str3.equals(str) && (getLogLevel() & zzd.zzahS) != 0)) ? false : true;
    }

    private boolean zzc(Context context, Intent intent) {
        ComponentName component = intent.getComponent();
        return (component == null || (zzd.zzaeK && GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE.equals(component.getPackageName()))) ? false : zzmm.zzl(context, component.getPackageName());
    }

    private static ServiceInfo zzd(Context context, Intent intent) {
        List queryIntentServices = context.getPackageManager().queryIntentServices(intent, AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
        if (queryIntentServices == null || queryIntentServices.size() == 0) {
            Log.w("ConnectionTracker", String.format("There are no handler of this intent: %s\n Stack trace: %s", new Object[]{intent.toUri(0), zzmy.zzl(3, 20)}));
            return null;
        }
        if (queryIntentServices.size() > 1) {
            Log.w("ConnectionTracker", String.format("Multiple handlers found for this intent: %s\n Stack trace: %s", new Object[]{intent.toUri(0), zzmy.zzl(3, 20)}));
            Iterator it = queryIntentServices.iterator();
            if (it.hasNext()) {
                Log.w("ConnectionTracker", ((ResolveInfo) it.next()).serviceInfo.name);
                return null;
            }
        }
        return ((ResolveInfo) queryIntentServices.get(0)).serviceInfo;
    }

    public static zzb zzqh() {
        synchronized (zzafW) {
            if (zzahy == null) {
                zzahy = new zzb();
            }
        }
        return zzahy;
    }

    private boolean zzqi() {
        return zzd.zzaeK && getLogLevel() != zzd.LOG_LEVEL_OFF;
    }

    public void zza(Context context, ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
        zza(context, zzb(serviceConnection), null, null, 1);
    }

    public void zza(Context context, ServiceConnection serviceConnection, String str, Intent intent) {
        zza(context, zzb(serviceConnection), str, intent, 3);
    }

    public boolean zza(Context context, Intent intent, ServiceConnection serviceConnection, int i) {
        return zza(context, context.getClass().getName(), intent, serviceConnection, i);
    }

    public boolean zza(Context context, String str, Intent intent, ServiceConnection serviceConnection, int i) {
        if (zzc(context, intent)) {
            Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
            return false;
        }
        boolean bindService = context.bindService(intent, serviceConnection, i);
        if (bindService) {
            zza(context, zzb(serviceConnection), str, intent, 2);
        }
        return bindService;
    }

    public void zzb(Context context, ServiceConnection serviceConnection) {
        zza(context, zzb(serviceConnection), null, null, 4);
    }
}
