package com.google.android.gms.ads.search;

import android.content.Context;
import android.graphics.Color;
import android.location.Location;
import android.os.Bundle;
import com.google.android.gms.ads.internal.client.zzy;
import com.google.android.gms.ads.internal.client.zzy.zza;
import com.google.android.gms.ads.mediation.MediationAdapter;
import com.google.android.gms.ads.mediation.NetworkExtras;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;

public final class SearchAdRequest {
    public static final int BORDER_TYPE_DASHED = 1;
    public static final int BORDER_TYPE_DOTTED = 2;
    public static final int BORDER_TYPE_NONE = 0;
    public static final int BORDER_TYPE_SOLID = 3;
    public static final int CALL_BUTTON_COLOR_DARK = 2;
    public static final int CALL_BUTTON_COLOR_LIGHT = 0;
    public static final int CALL_BUTTON_COLOR_MEDIUM = 1;
    public static final String DEVICE_ID_EMULATOR;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    private final int zzKS;
    private final int zzKT;
    private final int zzKU;
    private final int zzKV;
    private final int zzKW;
    private final int zzKX;
    private final int zzKY;
    private final String zzKZ;
    private final int zzLa;
    private final String zzLb;
    private final int zzLc;
    private final int zzLd;
    private final String zzLe;
    private final zzy zznO;
    private final int zzwg;

    public static final class Builder {
        private int zzKS;
        private int zzKT;
        private int zzKU;
        private int zzKV;
        private int zzKW;
        private int zzKX;
        private int zzKY;
        private String zzKZ;
        private int zzLa;
        private String zzLb;
        private int zzLc;
        private int zzLd;
        private String zzLe;
        private final zza zznP;
        private int zzwg;

        public Builder() {
            this.zznP = new zza();
            this.zzKX = SearchAdRequest.ERROR_CODE_INTERNAL_ERROR;
        }

        public Builder addCustomEventExtrasBundle(Class<? extends CustomEvent> cls, Bundle bundle) {
            this.zznP.zzb((Class) cls, bundle);
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

        public SearchAdRequest build() {
            return new SearchAdRequest();
        }

        public Builder setAnchorTextColor(int i) {
            this.zzKS = i;
            return this;
        }

        public Builder setBackgroundColor(int i) {
            this.zzwg = i;
            this.zzKT = Color.argb(SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR);
            this.zzKU = Color.argb(SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR);
            return this;
        }

        public Builder setBackgroundGradient(int i, int i2) {
            this.zzwg = Color.argb(SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR, SearchAdRequest.ERROR_CODE_INTERNAL_ERROR);
            this.zzKT = i2;
            this.zzKU = i;
            return this;
        }

        public Builder setBorderColor(int i) {
            this.zzKV = i;
            return this;
        }

        public Builder setBorderThickness(int i) {
            this.zzKW = i;
            return this;
        }

        public Builder setBorderType(int i) {
            this.zzKX = i;
            return this;
        }

        public Builder setCallButtonColor(int i) {
            this.zzKY = i;
            return this;
        }

        public Builder setCustomChannels(String str) {
            this.zzKZ = str;
            return this;
        }

        public Builder setDescriptionTextColor(int i) {
            this.zzLa = i;
            return this;
        }

        public Builder setFontFace(String str) {
            this.zzLb = str;
            return this;
        }

        public Builder setHeaderTextColor(int i) {
            this.zzLc = i;
            return this;
        }

        public Builder setHeaderTextSize(int i) {
            this.zzLd = i;
            return this;
        }

        public Builder setLocation(Location location) {
            this.zznP.zzb(location);
            return this;
        }

        public Builder setQuery(String str) {
            this.zzLe = str;
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

    private SearchAdRequest(Builder builder) {
        this.zzKS = builder.zzKS;
        this.zzwg = builder.zzwg;
        this.zzKT = builder.zzKT;
        this.zzKU = builder.zzKU;
        this.zzKV = builder.zzKV;
        this.zzKW = builder.zzKW;
        this.zzKX = builder.zzKX;
        this.zzKY = builder.zzKY;
        this.zzKZ = builder.zzKZ;
        this.zzLa = builder.zzLa;
        this.zzLb = builder.zzLb;
        this.zzLc = builder.zzLc;
        this.zzLd = builder.zzLd;
        this.zzLe = builder.zzLe;
        this.zznO = new zzy(builder.zznP, this);
    }

    public int getAnchorTextColor() {
        return this.zzKS;
    }

    public int getBackgroundColor() {
        return this.zzwg;
    }

    public int getBackgroundGradientBottom() {
        return this.zzKT;
    }

    public int getBackgroundGradientTop() {
        return this.zzKU;
    }

    public int getBorderColor() {
        return this.zzKV;
    }

    public int getBorderThickness() {
        return this.zzKW;
    }

    public int getBorderType() {
        return this.zzKX;
    }

    public int getCallButtonColor() {
        return this.zzKY;
    }

    public String getCustomChannels() {
        return this.zzKZ;
    }

    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(Class<T> cls) {
        return this.zznO.getCustomEventExtrasBundle(cls);
    }

    public int getDescriptionTextColor() {
        return this.zzLa;
    }

    public String getFontFace() {
        return this.zzLb;
    }

    public int getHeaderTextColor() {
        return this.zzLc;
    }

    public int getHeaderTextSize() {
        return this.zzLd;
    }

    public Location getLocation() {
        return this.zznO.getLocation();
    }

    @Deprecated
    public <T extends NetworkExtras> T getNetworkExtras(Class<T> cls) {
        return this.zznO.getNetworkExtras(cls);
    }

    public <T extends MediationAdapter> Bundle getNetworkExtrasBundle(Class<T> cls) {
        return this.zznO.getNetworkExtrasBundle(cls);
    }

    public String getQuery() {
        return this.zzLe;
    }

    public boolean isTestDevice(Context context) {
        return this.zznO.isTestDevice(context);
    }

    zzy zzaF() {
        return this.zznO;
    }
}
