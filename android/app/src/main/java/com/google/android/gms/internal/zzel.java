package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.MediationAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.internal.zzem.zza;
import java.util.Map;

@zzgr
public final class zzel extends zza {
    private Map<Class<? extends NetworkExtras>, NetworkExtras> zzzH;

    private <NETWORK_EXTRAS extends com.google.ads.mediation.NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters> zzen zzag(String str) throws RemoteException {
        try {
            Class cls = Class.forName(str, false, zzel.class.getClassLoader());
            if (MediationAdapter.class.isAssignableFrom(cls)) {
                MediationAdapter mediationAdapter = (MediationAdapter) cls.newInstance();
                return new zzey(mediationAdapter, (com.google.ads.mediation.NetworkExtras) this.zzzH.get(mediationAdapter.getAdditionalParametersType()));
            } else if (com.google.android.gms.ads.mediation.MediationAdapter.class.isAssignableFrom(cls)) {
                return new zzet((com.google.android.gms.ads.mediation.MediationAdapter) cls.newInstance());
            } else {
                zzb.zzaH("Could not instantiate mediation adapter: " + str + " (not a valid adapter).");
                throw new RemoteException();
            }
        } catch (Throwable th) {
            zzb.zzaH("Could not instantiate mediation adapter: " + str + ". " + th.getMessage());
            RemoteException remoteException = new RemoteException();
        }
    }

    public zzen zzae(String str) throws RemoteException {
        return zzag(str);
    }

    public boolean zzaf(String str) throws RemoteException {
        boolean z = false;
        try {
            z = CustomEvent.class.isAssignableFrom(Class.forName(str, false, zzel.class.getClassLoader()));
        } catch (Throwable th) {
            zzb.zzaH("Could not load custom event implementation class: " + str + ", assuming old implementation.");
        }
        return z;
    }

    public void zze(Map<Class<? extends NetworkExtras>, NetworkExtras> map) {
        this.zzzH = map;
    }
}
