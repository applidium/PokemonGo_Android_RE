package com.google.android.gms.location;

import android.content.Intent;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzx;
import java.util.Collections;
import java.util.List;

public class ActivityRecognitionResult implements SafeParcelable {
    public static final ActivityRecognitionResultCreator CREATOR;
    private final int mVersionCode;
    List<DetectedActivity> zzaEb;
    long zzaEc;
    long zzaEd;
    int zzaEe;

    static {
        CREATOR = new ActivityRecognitionResultCreator();
    }

    public ActivityRecognitionResult(int i, List<DetectedActivity> list, long j, long j2, int i2) {
        this.mVersionCode = i;
        this.zzaEb = list;
        this.zzaEc = j;
        this.zzaEd = j2;
        this.zzaEe = i2;
    }

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2) {
        this(detectedActivity, j, j2, 0);
    }

    public ActivityRecognitionResult(DetectedActivity detectedActivity, long j, long j2, int i) {
        this(Collections.singletonList(detectedActivity), j, j2, i);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2) {
        this((List) list, j, j2, 0);
    }

    public ActivityRecognitionResult(List<DetectedActivity> list, long j, long j2, int i) {
        boolean z = true;
        boolean z2 = list != null && list.size() > 0;
        zzx.zzb(z2, (Object) "Must have at least 1 detected activity");
        if (j <= 0 || j2 <= 0) {
            z = false;
        }
        zzx.zzb(z, (Object) "Must set times");
        this.mVersionCode = 2;
        this.zzaEb = list;
        this.zzaEc = j;
        this.zzaEd = j2;
        this.zzaEe = i;
    }

    public static ActivityRecognitionResult extractResult(Intent intent) {
        if (!hasResult(intent)) {
            return null;
        }
        Object obj = intent.getExtras().get("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
        if (!(obj instanceof byte[])) {
            return obj instanceof ActivityRecognitionResult ? (ActivityRecognitionResult) obj : null;
        } else {
            Parcel obtain = Parcel.obtain();
            obtain.unmarshall((byte[]) obj, 0, ((byte[]) obj).length);
            obtain.setDataPosition(0);
            return CREATOR.createFromParcel(obtain);
        }
    }

    public static boolean hasResult(Intent intent) {
        return intent == null ? false : intent.hasExtra("com.google.android.location.internal.EXTRA_ACTIVITY_RESULT");
    }

    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
        return this.zzaEc == activityRecognitionResult.zzaEc && this.zzaEd == activityRecognitionResult.zzaEd && this.zzaEe == activityRecognitionResult.zzaEe && zzw.equal(this.zzaEb, activityRecognitionResult.zzaEb);
    }

    public int getActivityConfidence(int i) {
        for (DetectedActivity detectedActivity : this.zzaEb) {
            if (detectedActivity.getType() == i) {
                return detectedActivity.getConfidence();
            }
        }
        return 0;
    }

    public long getElapsedRealtimeMillis() {
        return this.zzaEd;
    }

    public DetectedActivity getMostProbableActivity() {
        return (DetectedActivity) this.zzaEb.get(0);
    }

    public List<DetectedActivity> getProbableActivities() {
        return this.zzaEb;
    }

    public long getTime() {
        return this.zzaEc;
    }

    public int getVersionCode() {
        return this.mVersionCode;
    }

    public int hashCode() {
        return zzw.hashCode(Long.valueOf(this.zzaEc), Long.valueOf(this.zzaEd), Integer.valueOf(this.zzaEe), this.zzaEb);
    }

    public String toString() {
        return "ActivityRecognitionResult [probableActivities=" + this.zzaEb + ", timeMillis=" + this.zzaEc + ", elapsedRealtimeMillis=" + this.zzaEd + "]";
    }

    public void writeToParcel(Parcel parcel, int i) {
        ActivityRecognitionResultCreator.zza(this, parcel, i);
    }
}
