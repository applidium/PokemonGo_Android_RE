package com.google.android.gms.location;

import android.os.SystemClock;
import com.google.android.gms.location.internal.ParcelableGeofence;

public interface Geofence {
    public static final int GEOFENCE_TRANSITION_DWELL = 4;
    public static final int GEOFENCE_TRANSITION_ENTER = 1;
    public static final int GEOFENCE_TRANSITION_EXIT = 2;
    public static final long NEVER_EXPIRE = -1;

    public static final class Builder {
        private String zzBY;
        private int zzaEi;
        private long zzaEj;
        private short zzaEk;
        private double zzaEl;
        private double zzaEm;
        private float zzaEn;
        private int zzaEo;
        private int zzaEp;

        public Builder() {
            this.zzBY = null;
            this.zzaEi = 0;
            this.zzaEj = Long.MIN_VALUE;
            this.zzaEk = (short) -1;
            this.zzaEo = 0;
            this.zzaEp = -1;
        }

        public Geofence build() {
            if (this.zzBY == null) {
                throw new IllegalArgumentException("Request ID not set.");
            } else if (this.zzaEi == 0) {
                throw new IllegalArgumentException("Transitions types not set.");
            } else if ((this.zzaEi & Geofence.GEOFENCE_TRANSITION_DWELL) != 0 && this.zzaEp < 0) {
                throw new IllegalArgumentException("Non-negative loitering delay needs to be set when transition types include GEOFENCE_TRANSITION_DWELLING.");
            } else if (this.zzaEj == Long.MIN_VALUE) {
                throw new IllegalArgumentException("Expiration not set.");
            } else if (this.zzaEk == (short) -1) {
                throw new IllegalArgumentException("Geofence region not set.");
            } else if (this.zzaEo >= 0) {
                return new ParcelableGeofence(this.zzBY, this.zzaEi, (short) 1, this.zzaEl, this.zzaEm, this.zzaEn, this.zzaEj, this.zzaEo, this.zzaEp);
            } else {
                throw new IllegalArgumentException("Notification responsiveness should be nonnegative.");
            }
        }

        public Builder setCircularRegion(double d, double d2, float f) {
            this.zzaEk = (short) 1;
            this.zzaEl = d;
            this.zzaEm = d2;
            this.zzaEn = f;
            return this;
        }

        public Builder setExpirationDuration(long j) {
            if (j < 0) {
                this.zzaEj = Geofence.NEVER_EXPIRE;
            } else {
                this.zzaEj = SystemClock.elapsedRealtime() + j;
            }
            return this;
        }

        public Builder setLoiteringDelay(int i) {
            this.zzaEp = i;
            return this;
        }

        public Builder setNotificationResponsiveness(int i) {
            this.zzaEo = i;
            return this;
        }

        public Builder setRequestId(String str) {
            this.zzBY = str;
            return this;
        }

        public Builder setTransitionTypes(int i) {
            this.zzaEi = i;
            return this;
        }
    }

    String getRequestId();
}
