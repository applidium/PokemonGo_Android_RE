package com.google.android.gms.location.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.LocationStatusCodes;
import java.util.Locale;
import spacemadness.com.lunarconsole.C1401R;

public class ParcelableGeofence implements SafeParcelable, Geofence {
    public static final zzo CREATOR;
    private final int mVersionCode;
    private final String zzBY;
    private final int zzaEi;
    private final short zzaEk;
    private final double zzaEl;
    private final double zzaEm;
    private final float zzaEn;
    private final int zzaEo;
    private final int zzaEp;
    private final long zzaFO;

    static {
        CREATOR = new zzo();
    }

    public ParcelableGeofence(int i, String str, int i2, short s, double d, double d2, float f, long j, int i3, int i4) {
        zzdx(str);
        zze(f);
        zza(d, d2);
        int zzhc = zzhc(i2);
        this.mVersionCode = i;
        this.zzaEk = s;
        this.zzBY = str;
        this.zzaEl = d;
        this.zzaEm = d2;
        this.zzaEn = f;
        this.zzaFO = j;
        this.zzaEi = zzhc;
        this.zzaEo = i3;
        this.zzaEp = i4;
    }

    public ParcelableGeofence(String str, int i, short s, double d, double d2, float f, long j, int i2, int i3) {
        this(1, str, i, s, d, d2, f, j, i2, i3);
    }

    private static void zza(double d, double d2) {
        if (d > 90.0d || d < -90.0d) {
            throw new IllegalArgumentException("invalid latitude: " + d);
        } else if (d2 > 180.0d || d2 < -180.0d) {
            throw new IllegalArgumentException("invalid longitude: " + d2);
        }
    }

    private static void zzdx(String str) {
        if (str == null || str.length() > 100) {
            throw new IllegalArgumentException("requestId is null or too long: " + str);
        }
    }

    private static void zze(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("invalid radius: " + f);
        }
    }

    private static int zzhc(int i) {
        int i2 = i & 7;
        if (i2 != 0) {
            return i2;
        }
        throw new IllegalArgumentException("No supported transition specified: " + i);
    }

    private static String zzhd(int i) {
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return "CIRCLE";
            default:
                return null;
        }
    }

    public static ParcelableGeofence zzn(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        ParcelableGeofence zzeJ = CREATOR.zzeJ(obtain);
        obtain.recycle();
        return zzeJ;
    }

    public int describeContents() {
        zzo com_google_android_gms_location_internal_zzo = CREATOR;
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (obj == null || !(obj instanceof ParcelableGeofence)) {
                return false;
            }
            ParcelableGeofence parcelableGeofence = (ParcelableGeofence) obj;
            if (this.zzaEn != parcelableGeofence.zzaEn || this.zzaEl != parcelableGeofence.zzaEl || this.zzaEm != parcelableGeofence.zzaEm) {
                return false;
            }
            if (this.zzaEk != parcelableGeofence.zzaEk) {
                return false;
            }
        }
        return true;
    }

    public long getExpirationTime() {
        return this.zzaFO;
    }

    public double getLatitude() {
        return this.zzaEl;
    }

    public double getLongitude() {
        return this.zzaEm;
    }

    public int getNotificationResponsiveness() {
        return this.zzaEo;
    }

    public String getRequestId() {
        return this.zzBY;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zzaEl);
        int i = (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzaEm);
        return ((((((((i + 31) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + Float.floatToIntBits(this.zzaEn)) * 31) + this.zzaEk) * 31) + this.zzaEi;
    }

    public String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", new Object[]{zzhd(this.zzaEk), this.zzBY, Integer.valueOf(this.zzaEi), Double.valueOf(this.zzaEl), Double.valueOf(this.zzaEm), Float.valueOf(this.zzaEn), Integer.valueOf(this.zzaEo / LocationStatusCodes.GEOFENCE_NOT_AVAILABLE), Integer.valueOf(this.zzaEp), Long.valueOf(this.zzaFO)});
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzo com_google_android_gms_location_internal_zzo = CREATOR;
        zzo.zza(this, parcel, i);
    }

    public short zzwI() {
        return this.zzaEk;
    }

    public float zzwJ() {
        return this.zzaEn;
    }

    public int zzwK() {
        return this.zzaEi;
    }

    public int zzwL() {
        return this.zzaEp;
    }
}
