package com.google.android.gms.playlog.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.zzsi.zzd;
import java.util.ArrayList;

public class zzb {
    private final ArrayList<zza> zzaRK;
    private int zzaRL;

    public static class zza {
        public final PlayLoggerContext zzaRM;
        public final LogEvent zzaRN;
        public final zzd zzaRO;

        private zza(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
            this.zzaRM = (PlayLoggerContext) zzx.zzw(playLoggerContext);
            this.zzaRN = (LogEvent) zzx.zzw(logEvent);
            this.zzaRO = null;
        }
    }

    public zzb() {
        this(100);
    }

    public zzb(int i) {
        this.zzaRK = new ArrayList();
        this.zzaRL = i;
    }

    private void zzBu() {
        while (getSize() > getCapacity()) {
            this.zzaRK.remove(0);
        }
    }

    public void clear() {
        this.zzaRK.clear();
    }

    public int getCapacity() {
        return this.zzaRL;
    }

    public int getSize() {
        return this.zzaRK.size();
    }

    public boolean isEmpty() {
        return this.zzaRK.isEmpty();
    }

    public ArrayList<zza> zzBt() {
        return this.zzaRK;
    }

    public void zza(PlayLoggerContext playLoggerContext, LogEvent logEvent) {
        this.zzaRK.add(new zza(logEvent, null));
        zzBu();
    }
}
