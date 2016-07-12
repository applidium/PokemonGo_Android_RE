package com.google.android.gms.location;

import com.google.android.gms.common.api.Status;

@Deprecated
public final class LocationStatusCodes {
    public static final int ERROR = 1;
    public static final int GEOFENCE_NOT_AVAILABLE = 1000;
    public static final int GEOFENCE_TOO_MANY_GEOFENCES = 1001;
    public static final int GEOFENCE_TOO_MANY_PENDING_INTENTS = 1002;
    public static final int SUCCESS = 0;

    private LocationStatusCodes() {
    }

    public static int zzgV(int i) {
        return (i < 0 || i > ERROR) ? (GEOFENCE_NOT_AVAILABLE > i || i > GEOFENCE_TOO_MANY_PENDING_INTENTS) ? ERROR : i : i;
    }

    public static Status zzgW(int i) {
        switch (i) {
            case ERROR /*1*/:
                i = 13;
                break;
        }
        return new Status(i);
    }
}
