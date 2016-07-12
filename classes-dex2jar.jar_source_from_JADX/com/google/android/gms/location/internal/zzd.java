package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;

public class zzd implements FusedLocationProviderApi {

    private static abstract class zza extends com.google.android.gms.location.LocationServices.zza<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        public /* synthetic */ Result zzb(Status status) {
            return zzd(status);
        }

        public Status zzd(Status status) {
            return status;
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.1 */
    class C06451 extends zza {
        final /* synthetic */ LocationRequest zzaFd;
        final /* synthetic */ LocationListener zzaFe;
        final /* synthetic */ zzd zzaFf;

        /* renamed from: com.google.android.gms.location.internal.zzd.1.1 */
        class C06441 extends com.google.android.gms.location.internal.zzg.zza {
            final /* synthetic */ C06451 zzaFg;

            C06441(C06451 c06451) {
                this.zzaFg = c06451;
            }

            public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                this.zzaFg.zzb(fusedLocationProviderResult.getStatus());
            }
        }

        C06451(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFd = locationRequest;
            this.zzaFe = locationListener;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFd, this.zzaFe, null, new C06441(this));
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.2 */
    class C06472 extends zza {
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ LocationCallback zzaFh;

        /* renamed from: com.google.android.gms.location.internal.zzd.2.1 */
        class C06461 extends com.google.android.gms.location.internal.zzg.zza {
            final /* synthetic */ C06472 zzaFi;

            C06461(C06472 c06472) {
                this.zzaFi = c06472;
            }

            public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                this.zzaFi.zzb(fusedLocationProviderResult.getStatus());
            }
        }

        C06472(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationCallback locationCallback) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFh = locationCallback;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFh, new C06461(this));
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.3 */
    class C06483 extends zza {
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ boolean zzaFj;

        C06483(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, boolean z) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFj = z;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zzah(this.zzaFj);
            zzb(Status.zzabb);
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.4 */
    class C06494 extends zza {
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ Location zzaFk;

        C06494(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, Location location) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFk = location;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zzc(this.zzaFk);
            zzb(Status.zzabb);
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.5 */
    class C06515 extends zza {
        final /* synthetic */ LocationRequest zzaFd;
        final /* synthetic */ LocationListener zzaFe;
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ Looper zzaFl;

        /* renamed from: com.google.android.gms.location.internal.zzd.5.1 */
        class C06501 extends com.google.android.gms.location.internal.zzg.zza {
            final /* synthetic */ C06515 zzaFm;

            C06501(C06515 c06515) {
                this.zzaFm = c06515;
            }

            public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                this.zzaFm.zzb(fusedLocationProviderResult.getStatus());
            }
        }

        C06515(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFd = locationRequest;
            this.zzaFe = locationListener;
            this.zzaFl = looper;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFd, this.zzaFe, this.zzaFl, new C06501(this));
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.6 */
    class C06536 extends zza {
        final /* synthetic */ LocationRequest zzaFd;
        final /* synthetic */ zzd zzaFf;
        final /* synthetic */ LocationCallback zzaFh;
        final /* synthetic */ Looper zzaFl;

        /* renamed from: com.google.android.gms.location.internal.zzd.6.1 */
        class C06521 extends com.google.android.gms.location.internal.zzg.zza {
            final /* synthetic */ C06536 zzaFn;

            C06521(C06536 c06536) {
                this.zzaFn = c06536;
            }

            public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                this.zzaFn.zzb(fusedLocationProviderResult.getStatus());
            }
        }

        C06536(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFd = locationRequest;
            this.zzaFh = locationCallback;
            this.zzaFl = looper;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(LocationRequestInternal.zzb(this.zzaFd), this.zzaFh, this.zzaFl, new C06521(this));
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.7 */
    class C06557 extends zza {
        final /* synthetic */ PendingIntent zzaEY;
        final /* synthetic */ LocationRequest zzaFd;
        final /* synthetic */ zzd zzaFf;

        /* renamed from: com.google.android.gms.location.internal.zzd.7.1 */
        class C06541 extends com.google.android.gms.location.internal.zzg.zza {
            final /* synthetic */ C06557 zzaFo;

            C06541(C06557 c06557) {
                this.zzaFo = c06557;
            }

            public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                this.zzaFo.zzb(fusedLocationProviderResult.getStatus());
            }
        }

        C06557(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationRequest locationRequest, PendingIntent pendingIntent) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFd = locationRequest;
            this.zzaEY = pendingIntent;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFd, this.zzaEY, new C06541(this));
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.8 */
    class C06578 extends zza {
        final /* synthetic */ LocationListener zzaFe;
        final /* synthetic */ zzd zzaFf;

        /* renamed from: com.google.android.gms.location.internal.zzd.8.1 */
        class C06561 extends com.google.android.gms.location.internal.zzg.zza {
            final /* synthetic */ C06578 zzaFp;

            C06561(C06578 c06578) {
                this.zzaFp = c06578;
            }

            public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                this.zzaFp.zzb(fusedLocationProviderResult.getStatus());
            }
        }

        C06578(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, LocationListener locationListener) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaFe = locationListener;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaFe, new C06561(this));
        }
    }

    /* renamed from: com.google.android.gms.location.internal.zzd.9 */
    class C06599 extends zza {
        final /* synthetic */ PendingIntent zzaEY;
        final /* synthetic */ zzd zzaFf;

        /* renamed from: com.google.android.gms.location.internal.zzd.9.1 */
        class C06581 extends com.google.android.gms.location.internal.zzg.zza {
            final /* synthetic */ C06599 zzaFq;

            C06581(C06599 c06599) {
                this.zzaFq = c06599;
            }

            public void zza(FusedLocationProviderResult fusedLocationProviderResult) {
                this.zzaFq.zzb(fusedLocationProviderResult.getStatus());
            }
        }

        C06599(zzd com_google_android_gms_location_internal_zzd, GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
            this.zzaFf = com_google_android_gms_location_internal_zzd;
            this.zzaEY = pendingIntent;
            super(googleApiClient);
        }

        protected void zza(zzl com_google_android_gms_location_internal_zzl) throws RemoteException {
            com_google_android_gms_location_internal_zzl.zza(this.zzaEY, new C06581(this));
        }
    }

    public Location getLastLocation(GoogleApiClient googleApiClient) {
        try {
            return LocationServices.zzd(googleApiClient).getLastLocation();
        } catch (Exception e) {
            return null;
        }
    }

    public LocationAvailability getLocationAvailability(GoogleApiClient googleApiClient) {
        try {
            return LocationServices.zzd(googleApiClient).zzwD();
        } catch (Exception e) {
            return null;
        }
    }

    public PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return googleApiClient.zzb(new C06599(this, googleApiClient, pendingIntent));
    }

    public PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, LocationCallback locationCallback) {
        return googleApiClient.zzb(new C06472(this, googleApiClient, locationCallback));
    }

    public PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, LocationListener locationListener) {
        return googleApiClient.zzb(new C06578(this, googleApiClient, locationListener));
    }

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, PendingIntent pendingIntent) {
        return googleApiClient.zzb(new C06557(this, googleApiClient, locationRequest, pendingIntent));
    }

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationCallback locationCallback, Looper looper) {
        return googleApiClient.zzb(new C06536(this, googleApiClient, locationRequest, locationCallback, looper));
    }

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener) {
        return googleApiClient.zzb(new C06451(this, googleApiClient, locationRequest, locationListener));
    }

    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, LocationRequest locationRequest, LocationListener locationListener, Looper looper) {
        return googleApiClient.zzb(new C06515(this, googleApiClient, locationRequest, locationListener, looper));
    }

    public PendingResult<Status> setMockLocation(GoogleApiClient googleApiClient, Location location) {
        return googleApiClient.zzb(new C06494(this, googleApiClient, location));
    }

    public PendingResult<Status> setMockMode(GoogleApiClient googleApiClient, boolean z) {
        return googleApiClient.zzb(new C06483(this, googleApiClient, z));
    }
}
