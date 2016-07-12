package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;

public class PeriodicTask extends Task {
    public static final Creator<PeriodicTask> CREATOR;
    protected long mFlexInSeconds;
    protected long mIntervalInSeconds;

    /* renamed from: com.google.android.gms.gcm.PeriodicTask.1 */
    static final class C04521 implements Creator<PeriodicTask> {
        C04521() {
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return zzeu(parcel);
        }

        public /* synthetic */ Object[] newArray(int i) {
            return zzgE(i);
        }

        public PeriodicTask zzeu(Parcel parcel) {
            return new PeriodicTask(null);
        }

        public PeriodicTask[] zzgE(int i) {
            return new PeriodicTask[i];
        }
    }

    public static class Builder extends com.google.android.gms.gcm.Task.Builder {
        private long zzaCG;
        private long zzaCH;

        public Builder() {
            this.zzaCG = -1;
            this.zzaCH = -1;
            this.isPersisted = true;
        }

        public PeriodicTask build() {
            checkConditions();
            return new PeriodicTask();
        }

        protected void checkConditions() {
            super.checkConditions();
            if (this.zzaCG == -1) {
                throw new IllegalArgumentException("Must call setPeriod(long) to establish an execution interval for this periodic task.");
            } else if (this.zzaCH == -1) {
                this.zzaCH = (long) (((float) this.zzaCG) * 0.1f);
            }
        }

        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
            return this;
        }

        public Builder setFlex(long j) {
            this.zzaCH = j;
            return this;
        }

        public Builder setPeriod(long j) {
            this.zzaCG = j;
            return this;
        }

        public Builder setPersisted(boolean z) {
            this.isPersisted = z;
            return this;
        }

        public Builder setRequiredNetwork(int i) {
            this.requiredNetworkState = i;
            return this;
        }

        public Builder setRequiresCharging(boolean z) {
            this.requiresCharging = z;
            return this;
        }

        public Builder setService(Class<? extends GcmTaskService> cls) {
            this.gcmTaskService = cls.getName();
            return this;
        }

        public Builder setTag(String str) {
            this.tag = str;
            return this;
        }

        public Builder setUpdateCurrent(boolean z) {
            this.updateCurrent = z;
            return this;
        }
    }

    static {
        CREATOR = new C04521();
    }

    @Deprecated
    private PeriodicTask(Parcel parcel) {
        super(parcel);
        this.mIntervalInSeconds = -1;
        this.mFlexInSeconds = -1;
        this.mIntervalInSeconds = parcel.readLong();
        this.mFlexInSeconds = parcel.readLong();
    }

    private PeriodicTask(Builder builder) {
        super((com.google.android.gms.gcm.Task.Builder) builder);
        this.mIntervalInSeconds = -1;
        this.mFlexInSeconds = -1;
        this.mIntervalInSeconds = builder.zzaCG;
        this.mFlexInSeconds = builder.zzaCH;
    }

    public long getFlex() {
        return this.mFlexInSeconds;
    }

    public long getPeriod() {
        return this.mIntervalInSeconds;
    }

    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putLong("period", this.mIntervalInSeconds);
        bundle.putLong("period_flex", this.mFlexInSeconds);
    }

    public String toString() {
        return super.toString() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "period=" + getPeriod() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "flex=" + getFlex();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.mIntervalInSeconds);
        parcel.writeLong(this.mFlexInSeconds);
    }
}
