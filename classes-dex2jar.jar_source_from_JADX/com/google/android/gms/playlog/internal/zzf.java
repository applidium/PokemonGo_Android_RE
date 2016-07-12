package com.google.android.gms.playlog.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzse;
import com.google.android.gms.playlog.internal.zzb.zza;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class zzf extends zzj<zza> {
    private final String zzQe;
    private final zzd zzaRZ;
    private final zzb zzaSa;
    private boolean zzaSb;
    private final Object zzpd;

    public zzf(Context context, Looper looper, zzd com_google_android_gms_playlog_internal_zzd, com.google.android.gms.common.internal.zzf com_google_android_gms_common_internal_zzf) {
        super(context, looper, 24, com_google_android_gms_common_internal_zzf, com_google_android_gms_playlog_internal_zzd, com_google_android_gms_playlog_internal_zzd);
        this.zzQe = context.getPackageName();
        this.zzaRZ = (zzd) zzx.zzw(com_google_android_gms_playlog_internal_zzd);
        this.zzaRZ.zza(this);
        this.zzaSa = new zzb();
        this.zzpd = new Object();
        this.zzaSb = true;
    }

    private void zzBv() {
        zzb.zzZ(!this.zzaSb);
        if (!this.zzaSa.isEmpty()) {
            PlayLoggerContext playLoggerContext = null;
            try {
                List arrayList = new ArrayList();
                Iterator it = this.zzaSa.zzBt().iterator();
                while (it.hasNext()) {
                    zza com_google_android_gms_playlog_internal_zzb_zza = (zza) it.next();
                    if (com_google_android_gms_playlog_internal_zzb_zza.zzaRO != null) {
                        ((zza) zzpc()).zza(this.zzQe, com_google_android_gms_playlog_internal_zzb_zza.zzaRM, zzse.zzf(com_google_android_gms_playlog_internal_zzb_zza.zzaRO));
                    } else {
                        PlayLoggerContext playLoggerContext2;
                        if (com_google_android_gms_playlog_internal_zzb_zza.zzaRM.equals(playLoggerContext)) {
                            arrayList.add(com_google_android_gms_playlog_internal_zzb_zza.zzaRN);
                            playLoggerContext2 = playLoggerContext;
                        } else {
                            if (!arrayList.isEmpty()) {
                                ((zza) zzpc()).zza(this.zzQe, playLoggerContext, arrayList);
                                arrayList.clear();
                            }
                            PlayLoggerContext playLoggerContext3 = com_google_android_gms_playlog_internal_zzb_zza.zzaRM;
                            arrayList.add(com_google_android_gms_playlog_internal_zzb_zza.zzaRN);
                            playLoggerContext2 = playLoggerContext3;
                        }
                        playLoggerContext = playLoggerContext2;
                    }
                }
                if (!arrayList.isEmpty()) {
                    ((zza) zzpc()).zza(this.zzQe, playLoggerContext, arrayList);
                }
                this.zzaSa.clear();
            } catch (RemoteException e) {
                Log.e("PlayLoggerImpl", "Couldn't send cached log events to AndroidLog service.  Retaining in memory cache.");
            }
        }
    }

    private void zzc(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        this.zzaSa.zza(playLoggerContext, logEvent);
    }

    private void zzd(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        try {
            zzBv();
            ((zza) zzpc()).zza(this.zzQe, playLoggerContext, logEvent);
        } catch (RemoteException e) {
            Log.e("PlayLoggerImpl", "Couldn't send log event.  Will try caching.");
            zzc(playLoggerContext, logEvent);
        } catch (IllegalStateException e2) {
            Log.e("PlayLoggerImpl", "Service was disconnected.  Will try caching.");
            zzc(playLoggerContext, logEvent);
        }
    }

    public void start() {
        synchronized (this.zzpd) {
            if (isConnecting() || isConnected()) {
                return;
            }
            this.zzaRZ.zzao(true);
            zzoZ();
        }
    }

    public void stop() {
        synchronized (this.zzpd) {
            this.zzaRZ.zzao(false);
            disconnect();
        }
    }

    protected /* synthetic */ IInterface zzW(IBinder iBinder) {
        return zzdA(iBinder);
    }

    void zzap(boolean z) {
        synchronized (this.zzpd) {
            boolean z2 = this.zzaSb;
            this.zzaSb = z;
            if (z2 && !this.zzaSb) {
                zzBv();
            }
        }
    }

    public void zzb(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        synchronized (this.zzpd) {
            if (this.zzaSb) {
                zzc(playLoggerContext, logEvent);
            } else {
                zzd(playLoggerContext, logEvent);
            }
        }
    }

    protected zza zzdA(IBinder iBinder) {
        return zza.zza.zzdz(iBinder);
    }

    protected String zzfK() {
        return "com.google.android.gms.playlog.service.START";
    }

    protected String zzfL() {
        return "com.google.android.gms.playlog.internal.IPlayLogService";
    }
}
