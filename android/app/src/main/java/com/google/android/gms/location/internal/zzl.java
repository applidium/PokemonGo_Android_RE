package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.List;

public class zzl extends zzb {
    private final zzk zzaFB;

    private static final class zza extends com.google.android.gms.location.internal.zzh.zza {
        private com.google.android.gms.internal.zzlb.zzb<Status> zzaFC;

        public zza(com.google.android.gms.internal.zzlb.zzb<Status> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status) {
            this.zzaFC = com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status;
        }

        public void zza(int i, PendingIntent pendingIntent) {
            Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult");
        }

        public void zza(int i, String[] strArr) {
            if (this.zzaFC == null) {
                Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
                return;
            }
            this.zzaFC.zzp(LocationStatusCodes.zzgW(LocationStatusCodes.zzgV(i)));
            this.zzaFC = null;
        }

        public void zzb(int i, String[] strArr) {
            Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult");
        }
    }

    private static final class zzb extends com.google.android.gms.location.internal.zzh.zza {
        private com.google.android.gms.internal.zzlb.zzb<Status> zzaFC;

        public zzb(com.google.android.gms.internal.zzlb.zzb<Status> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status) {
            this.zzaFC = com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status;
        }

        private void zzgZ(int i) {
            if (this.zzaFC == null) {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
                return;
            }
            this.zzaFC.zzp(LocationStatusCodes.zzgW(LocationStatusCodes.zzgV(i)));
            this.zzaFC = null;
        }

        public void zza(int i, PendingIntent pendingIntent) {
            zzgZ(i);
        }

        public void zza(int i, String[] strArr) {
            Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
        }

        public void zzb(int i, String[] strArr) {
            zzgZ(i);
        }
    }

    private static final class zzc extends com.google.android.gms.location.internal.zzj.zza {
        private com.google.android.gms.internal.zzlb.zzb<LocationSettingsResult> zzaFC;

        public zzc(com.google.android.gms.internal.zzlb.zzb<LocationSettingsResult> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_location_LocationSettingsResult) {
            zzx.zzb(com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_location_LocationSettingsResult != null, (Object) "listener can't be null.");
            this.zzaFC = com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_location_LocationSettingsResult;
        }

        public void zza(LocationSettingsResult locationSettingsResult) throws RemoteException {
            this.zzaFC.zzp(locationSettingsResult);
            this.zzaFC = null;
        }
    }

    public zzl(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str) {
        this(context, looper, connectionCallbacks, onConnectionFailedListener, str, zzf.zzak(context));
    }

    public zzl(Context context, Looper looper, ConnectionCallbacks connectionCallbacks, OnConnectionFailedListener onConnectionFailedListener, String str, zzf com_google_android_gms_common_internal_zzf) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, str, com_google_android_gms_common_internal_zzf);
        this.zzaFB = new zzk(context, this.zzaFb);
    }

    public void disconnect() {
        synchronized (this.zzaFB) {
            if (isConnected()) {
                try {
                    this.zzaFB.removeAllListeners();
                    this.zzaFB.zzwE();
                } catch (Throwable e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.disconnect();
        }
    }

    public Location getLastLocation() {
        return this.zzaFB.getLastLocation();
    }

    public void zza(long j, PendingIntent pendingIntent) throws RemoteException {
        zzpb();
        zzx.zzw(pendingIntent);
        zzx.zzb(j >= 0, (Object) "detectionIntervalMillis must be >= 0");
        ((zzi) zzpc()).zza(j, true, pendingIntent);
    }

    public void zza(PendingIntent pendingIntent) throws RemoteException {
        zzpb();
        zzx.zzw(pendingIntent);
        ((zzi) zzpc()).zza(pendingIntent);
    }

    public void zza(PendingIntent pendingIntent, com.google.android.gms.internal.zzlb.zzb<Status> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status) throws RemoteException {
        zzpb();
        zzx.zzb((Object) pendingIntent, (Object) "PendingIntent must be specified.");
        zzx.zzb((Object) com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status, (Object) "ResultHolder not provided.");
        ((zzi) zzpc()).zza(pendingIntent, new zzb(com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status), getContext().getPackageName());
    }

    public void zza(PendingIntent pendingIntent, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFB.zza(pendingIntent, com_google_android_gms_location_internal_zzg);
    }

    public void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, com.google.android.gms.internal.zzlb.zzb<Status> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status) throws RemoteException {
        zzpb();
        zzx.zzb((Object) geofencingRequest, (Object) "geofencingRequest can't be null.");
        zzx.zzb((Object) pendingIntent, (Object) "PendingIntent must be specified.");
        zzx.zzb((Object) com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status, (Object) "ResultHolder not provided.");
        ((zzi) zzpc()).zza(geofencingRequest, pendingIntent, new zza(com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status));
    }

    public void zza(LocationCallback locationCallback, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFB.zza(locationCallback, com_google_android_gms_location_internal_zzg);
    }

    public void zza(LocationListener locationListener, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFB.zza(locationListener, com_google_android_gms_location_internal_zzg);
    }

    public void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        this.zzaFB.zza(locationRequest, pendingIntent, com_google_android_gms_location_internal_zzg);
    }

    public void zza(LocationRequest locationRequest, LocationListener locationListener, Looper looper, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        synchronized (this.zzaFB) {
            this.zzaFB.zza(locationRequest, locationListener, looper, com_google_android_gms_location_internal_zzg);
        }
    }

    public void zza(LocationSettingsRequest locationSettingsRequest, com.google.android.gms.internal.zzlb.zzb<LocationSettingsResult> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_location_LocationSettingsResult, String str) throws RemoteException {
        boolean z = true;
        zzpb();
        zzx.zzb(locationSettingsRequest != null, (Object) "locationSettingsRequest can't be null nor empty.");
        if (com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_location_LocationSettingsResult == null) {
            z = false;
        }
        zzx.zzb(z, (Object) "listener can't be null.");
        ((zzi) zzpc()).zza(locationSettingsRequest, new zzc(com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_location_LocationSettingsResult), str);
    }

    public void zza(LocationRequestInternal locationRequestInternal, LocationCallback locationCallback, Looper looper, zzg com_google_android_gms_location_internal_zzg) throws RemoteException {
        synchronized (this.zzaFB) {
            this.zzaFB.zza(locationRequestInternal, locationCallback, looper, com_google_android_gms_location_internal_zzg);
        }
    }

    public void zza(List<String> list, com.google.android.gms.internal.zzlb.zzb<Status> com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status) throws RemoteException {
        zzpb();
        boolean z = list != null && list.size() > 0;
        zzx.zzb(z, (Object) "geofenceRequestIds can't be null nor empty.");
        zzx.zzb((Object) com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status, (Object) "ResultHolder not provided.");
        ((zzi) zzpc()).zza((String[]) list.toArray(new String[0]), new zzb(com_google_android_gms_internal_zzlb_zzb_com_google_android_gms_common_api_Status), getContext().getPackageName());
    }

    public void zzah(boolean z) throws RemoteException {
        this.zzaFB.zzah(z);
    }

    public void zzc(Location location) throws RemoteException {
        this.zzaFB.zzc(location);
    }

    public boolean zzpe() {
        return true;
    }

    public LocationAvailability zzwD() {
        return this.zzaFB.zzwD();
    }
}
