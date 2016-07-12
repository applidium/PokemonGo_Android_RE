package com.google.android.gms.gcm;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;

public class OneoffTask extends Task {
    public static final Creator<OneoffTask> CREATOR;
    private final long zzaCC;
    private final long zzaCD;

    /* renamed from: com.google.android.gms.gcm.OneoffTask.1 */
    static final class C04501 implements Creator<OneoffTask> {
        C04501() {
        }

        public /* synthetic */ Object createFromParcel(Parcel parcel) {
            return zzes(parcel);
        }

        public /* synthetic */ Object[] newArray(int i) {
            return zzgC(i);
        }

        public OneoffTask zzes(Parcel parcel) {
            return new OneoffTask(null);
        }

        public OneoffTask[] zzgC(int i) {
            return new OneoffTask[i];
        }
    }

    public static class Builder extends com.google.android.gms.gcm.Task.Builder {
        private long zzaCE;
        private long zzaCF;

        public Builder() {
            this.zzaCE = -1;
            this.zzaCF = -1;
            this.isPersisted = false;
        }

        public OneoffTask build() {
            checkConditions();
            return new OneoffTask();
        }

        protected void checkConditions() {
            super.checkConditions();
            if (this.zzaCE == -1 || this.zzaCF == -1) {
                throw new IllegalArgumentException("Must specify an execution window using setExecutionWindow.");
            } else if (this.zzaCE >= this.zzaCF) {
                throw new IllegalArgumentException("Window start must be shorter than window end.");
            }
        }

        public Builder setExecutionWindow(long j, long j2) {
            this.zzaCE = j;
            this.zzaCF = j2;
            return this;
        }

        public Builder setExtras(Bundle bundle) {
            this.extras = bundle;
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
        CREATOR = new C04501();
    }

    @Deprecated
    private OneoffTask(Parcel parcel) {
        super(parcel);
        this.zzaCC = parcel.readLong();
        this.zzaCD = parcel.readLong();
    }

    private OneoffTask(Builder builder) {
        super((com.google.android.gms.gcm.Task.Builder) builder);
        this.zzaCC = builder.zzaCE;
        this.zzaCD = builder.zzaCF;
    }

    public long getWindowEnd() {
        return this.zzaCD;
    }

    public long getWindowStart() {
        return this.zzaCC;
    }

    public void toBundle(Bundle bundle) {
        super.toBundle(bundle);
        bundle.putLong("window_start", this.zzaCC);
        bundle.putLong("window_end", this.zzaCD);
    }

    public String toString() {
        return super.toString() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "windowStart=" + getWindowStart() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "windowEnd=" + getWindowEnd();
    }

    public void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeLong(this.zzaCC);
        parcel.writeLong(this.zzaCD);
    }
}
