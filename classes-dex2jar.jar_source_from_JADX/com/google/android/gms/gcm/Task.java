package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Log;
import com.google.android.gms.common.internal.zzx;
import com.voxelbusters.nativeplugins.defines.Keys;

public abstract class Task implements Parcelable {
    public static final int EXTRAS_LIMIT_BYTES = 10240;
    public static final int NETWORK_STATE_ANY = 2;
    public static final int NETWORK_STATE_CONNECTED = 0;
    public static final int NETWORK_STATE_UNMETERED = 1;
    protected static final long UNINITIALIZED = -1;
    private final Bundle mExtras;
    private final String mTag;
    private final String zzaCN;
    private final boolean zzaCO;
    private final boolean zzaCP;
    private final int zzaCQ;
    private final boolean zzaCR;
    private final zzc zzaCS;

    public static abstract class Builder {
        protected Bundle extras;
        protected String gcmTaskService;
        protected boolean isPersisted;
        protected int requiredNetworkState;
        protected boolean requiresCharging;
        protected String tag;
        protected boolean updateCurrent;
        protected zzc zzaCT;

        public Builder() {
            this.zzaCT = zzc.zzaCI;
        }

        public abstract Task build();

        protected void checkConditions() {
            zzx.zzb(this.gcmTaskService != null, (Object) "Must provide an endpoint for this task by calling setService(ComponentName).");
            GcmNetworkManager.zzdh(this.tag);
            Task.zza(this.zzaCT);
            if (this.isPersisted) {
                Task.zzA(this.extras);
            }
        }

        public abstract Builder setExtras(Bundle bundle);

        public abstract Builder setPersisted(boolean z);

        public abstract Builder setRequiredNetwork(int i);

        public abstract Builder setRequiresCharging(boolean z);

        public abstract Builder setService(Class<? extends GcmTaskService> cls);

        public abstract Builder setTag(String str);

        public abstract Builder setUpdateCurrent(boolean z);
    }

    @Deprecated
    Task(Parcel parcel) {
        boolean z = true;
        Log.e("Task", "Constructing a Task object using a parcel.");
        this.zzaCN = parcel.readString();
        this.mTag = parcel.readString();
        this.zzaCO = parcel.readInt() == NETWORK_STATE_UNMETERED;
        if (parcel.readInt() != NETWORK_STATE_UNMETERED) {
            z = false;
        }
        this.zzaCP = z;
        this.zzaCQ = NETWORK_STATE_ANY;
        this.zzaCR = false;
        this.zzaCS = zzc.zzaCI;
        this.mExtras = null;
    }

    Task(Builder builder) {
        this.zzaCN = builder.gcmTaskService;
        this.mTag = builder.tag;
        this.zzaCO = builder.updateCurrent;
        this.zzaCP = builder.isPersisted;
        this.zzaCQ = builder.requiredNetworkState;
        this.zzaCR = builder.requiresCharging;
        this.zzaCS = builder.zzaCT;
        this.mExtras = builder.extras;
    }

    public static void zzA(Bundle bundle) {
        if (bundle != null) {
            Parcel obtain = Parcel.obtain();
            bundle.writeToParcel(obtain, NETWORK_STATE_CONNECTED);
            int dataSize = obtain.dataSize();
            if (dataSize > EXTRAS_LIMIT_BYTES) {
                obtain.recycle();
                throw new IllegalArgumentException("Extras exceeding maximum size(10240 bytes): " + dataSize);
            }
            obtain.recycle();
            for (String str : bundle.keySet()) {
                if (!zzz(bundle.get(str))) {
                    throw new IllegalArgumentException("Only the following extra parameter types are supported: Integer, Long, Double, String, and Boolean. ");
                }
            }
        }
    }

    public static void zza(zzc com_google_android_gms_gcm_zzc) {
        if (com_google_android_gms_gcm_zzc != null) {
            int zzvZ = com_google_android_gms_gcm_zzc.zzvZ();
            if (zzvZ == NETWORK_STATE_UNMETERED || zzvZ == 0) {
                int zzwa = com_google_android_gms_gcm_zzc.zzwa();
                int zzwb = com_google_android_gms_gcm_zzc.zzwb();
                if (zzvZ == 0 && zzwa < 0) {
                    throw new IllegalArgumentException("InitialBackoffSeconds can't be negative: " + zzwa);
                } else if (zzvZ == NETWORK_STATE_UNMETERED && zzwa < 10) {
                    throw new IllegalArgumentException("RETRY_POLICY_LINEAR must have an initial backoff at least 10 seconds.");
                } else if (zzwb < zzwa) {
                    throw new IllegalArgumentException("MaximumBackoffSeconds must be greater than InitialBackoffSeconds: " + com_google_android_gms_gcm_zzc.zzwb());
                } else {
                    return;
                }
            }
            throw new IllegalArgumentException("Must provide a valid RetryPolicy: " + zzvZ);
        }
    }

    private static boolean zzz(Object obj) {
        return (obj instanceof Integer) || (obj instanceof Long) || (obj instanceof Double) || (obj instanceof String) || (obj instanceof Boolean);
    }

    public int describeContents() {
        return NETWORK_STATE_CONNECTED;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }

    public int getRequiredNetwork() {
        return this.zzaCQ;
    }

    public boolean getRequiresCharging() {
        return this.zzaCR;
    }

    public String getServiceName() {
        return this.zzaCN;
    }

    public String getTag() {
        return this.mTag;
    }

    public boolean isPersisted() {
        return this.zzaCP;
    }

    public boolean isUpdateCurrent() {
        return this.zzaCO;
    }

    public void toBundle(Bundle bundle) {
        bundle.putString(Keys.TAG, this.mTag);
        bundle.putBoolean("update_current", this.zzaCO);
        bundle.putBoolean("persisted", this.zzaCP);
        bundle.putString(NotificationCompatApi21.CATEGORY_SERVICE, this.zzaCN);
        bundle.putInt("requiredNetwork", this.zzaCQ);
        bundle.putBoolean("requiresCharging", this.zzaCR);
        bundle.putBundle("retryStrategy", this.zzaCS.zzz(new Bundle()));
        bundle.putBundle("extras", this.mExtras);
    }

    public void writeToParcel(Parcel parcel, int i) {
        int i2 = NETWORK_STATE_UNMETERED;
        parcel.writeString(this.zzaCN);
        parcel.writeString(this.mTag);
        parcel.writeInt(this.zzaCO ? NETWORK_STATE_UNMETERED : NETWORK_STATE_CONNECTED);
        if (!this.zzaCP) {
            i2 = NETWORK_STATE_CONNECTED;
        }
        parcel.writeInt(i2);
    }
}
