package com.google.android.gms.common.api;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.IntentSender.SendIntentException;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public final class Status implements Result, SafeParcelable {
    public static final Creator<Status> CREATOR;
    public static final Status zzabb;
    public static final Status zzabc;
    public static final Status zzabd;
    public static final Status zzabe;
    public static final Status zzabf;
    private final PendingIntent mPendingIntent;
    private final int mVersionCode;
    private final int zzYm;
    private final String zzZZ;

    static {
        zzabb = new Status(0);
        zzabc = new Status(14);
        zzabd = new Status(8);
        zzabe = new Status(15);
        zzabf = new Status(16);
        CREATOR = new zzd();
    }

    public Status(int i) {
        this(i, null);
    }

    Status(int i, int i2, String str, PendingIntent pendingIntent) {
        this.mVersionCode = i;
        this.zzYm = i2;
        this.zzZZ = str;
        this.mPendingIntent = pendingIntent;
    }

    public Status(int i, String str) {
        this(1, i, str, null);
    }

    public Status(int i, String str, PendingIntent pendingIntent) {
        this(1, i, str, pendingIntent);
    }

    private String zznI() {
        return this.zzZZ != null ? this.zzZZ : CommonStatusCodes.getStatusCodeString(this.zzYm);
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Status)) {
            return false;
        }
        Status status = (Status) obj;
        return this.mVersionCode == status.mVersionCode && this.zzYm == status.zzYm && zzw.equal(this.zzZZ, status.zzZZ) && zzw.equal(this.mPendingIntent, status.mPendingIntent);
    }

    public PendingIntent getResolution() {
        return this.mPendingIntent;
    }

    public Status getStatus() {
        return this;
    }

    public int getStatusCode() {
        return this.zzYm;
    }

    public String getStatusMessage() {
        return this.zzZZ;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public boolean hasResolution() {
        return this.mPendingIntent != null;
    }

    public int hashCode() {
        return zzw.hashCode(Integer.valueOf(this.mVersionCode), Integer.valueOf(this.zzYm), this.zzZZ, this.mPendingIntent);
    }

    public boolean isCanceled() {
        return this.zzYm == 16;
    }

    public boolean isInterrupted() {
        return this.zzYm == 14;
    }

    public boolean isSuccess() {
        return this.zzYm <= 0;
    }

    public void startResolutionForResult(Activity activity, int i) throws SendIntentException {
        if (hasResolution()) {
            activity.startIntentSenderForResult(this.mPendingIntent.getIntentSender(), i, null, 0, 0, 0);
        }
    }

    public String toString() {
        return zzw.zzv(this).zzg("statusCode", zznI()).zzg("resolution", this.mPendingIntent).toString();
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    PendingIntent zznH() {
        return this.mPendingIntent;
    }
}
