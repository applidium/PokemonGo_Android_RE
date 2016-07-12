package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzy;
import com.google.android.gms.ads.internal.client.zzy.zza;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.zzv;
import com.google.android.gms.common.internal.zzx;
import java.util.Date;
import java.util.List;
import java.util.Set;

public final class PublisherAdRequest {
    public static final String DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int GENDER_FEMALE = 2;
    public static final int GENDER_MALE = 1;
    public static final int GENDER_UNKNOWN = 0;
    private final zzy zznO;

    public static final class Builder {
        private final zza zznP;

        public Builder() {
            this.zznP = new zza();
        }

        public Builder addCategoryExclusion(String str) {
            this.zznP.zzL(str);
            return this;
        }

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zznP.zzb((Class) cls, bundle);
            return this;
        }

        public Builder addCustomTargeting(String str, String str2) {
            this.zznP.zzb(str, str2);
            return this;
        }

        public Builder addCustomTargeting(String str, List<String> list) {
            if (list != null) {
                this.zznP.zzb(str, zzv.zzcq(",").zza(list));
            }
            return this;
        }

        public Builder addKeyword(String str) {
            this.zznP.zzF(str);
            return this;
        }

        public Builder addNetworkExtras(NetworkExtras networkExtras) {
            this.zznP.zza(networkExtras);
            return this;
        }

        public Builder addNetworkExtrasBundle(Class<? extends MediationAdapter> cls, Bundle bundle) {
            this.zznP.zza(cls, bundle);
            return this;
        }

        public Builder addTestDevice(String str) {
            this.zznP.zzG(str);
            return this;
        }

        public PublisherAdRequest build() {
            return new PublisherAdRequest();
        }

        public Builder setBirthday(Date date) {
            this.zznP.zza(date);
            return this;
        }

        public Builder setContentUrl(String str) {
            zzx.zzb((Object) str, (Object) "Content URL must be non-null.");
            zzx.zzh(str, "Content URL must be non-empty.");
            boolean z = str.length() <= AdRequest.MAX_CONTENT_URL_LENGTH;
            Object[] objArr = new Object[PublisherAdRequest.GENDER_FEMALE];
            objArr[PublisherAdRequest.ERROR_CODE_INTERNAL_ERROR] = Integer.valueOf(AdRequest.MAX_CONTENT_URL_LENGTH);
            objArr[PublisherAdRequest.GENDER_MALE] = Integer.valueOf(str.length());
            zzx.zzb(z, "Content URL must not exceed %d in length.  Provided length was %d.", objArr);
            this.zznP.zzI(str);
            return this;
        }

        public Builder setGender(int i) {
            this.zznP.zzm(i);
            return this;
        }

        public Builder setLocation(Location location) {
            this.zznP.zzb(location);
            return this;
        }

        @Deprecated
        public Builder setManualImpressionsEnabled(boolean z) {
            this.zznP.setManualImpressionsEnabled(z);
            return this;
        }

        public Builder setPublisherProvidedId(String str) {
            this.zznP.zzJ(str);
            return this;
        }

        public Builder setRequestAgent(String str) {
            this.zznP.zzK(str);
            return this;
        }

        public Builder tagForChildDirectedTreatment(boolean z) {
            this.zznP.zzj(z);
            return this;
        }
    }

    static {
        DEVICE_ID_EMULATOR = zzy.DEVICE_ID_EMULATOR;
    }

    private PublisherAdRequest(Builder builder) {
        this.zznO = new zzy(builder.zznP);
    }

    public static void updateCorrelator() {
        zzy.updateCorrelator();
    }

    public Date getBirthday() {
        return this.zznO.getBirthday();
    }

    public String getContentUrl() {
        return this.zznO.getContentUrl();
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zznO.getCustomEventExtrasBundle(cls);
    }

    public Bundle getCustomTargeting() {
        return this.zznO.getCustomTargeting();
    }

    public int getGender() {
        return this.zznO.getGender();
    }

    public Set<String> getKeywords() {
        return this.zznO.getKeywords();
    }

    public Location getLocation() {
        return this.zznO.getLocation();
    }

    public boolean getManualImpressionsEnabled() {
        return this.zznO.getManualImpressionsEnabled();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return this.zznO.getNetworkExtras(cls);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zznO.getNetworkExtrasBundle(cls);
    }

    public String getPublisherProvidedId() {
        return this.zznO.getPublisherProvidedId();
    }

    public boolean isTestDevice(Context context) {
        return this.zznO.isTestDevice(context);
    }

    public zzy zzaF() {
        return this.zznO;
    }
}
