package com.google.android.gms.common.server.converter;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.server.response.FastJsonResponse.zza;

public class ConverterWrapper implements SafeParcelable {
    public static final zza CREATOR;
    private final int mVersionCode;
    private final StringToIntConverter zzagO;

    static {
        CREATOR = new zza();
    }

    ConverterWrapper(int i, StringToIntConverter stringToIntConverter) {
        this.mVersionCode = i;
        this.zzagO = stringToIntConverter;
    }

    private ConverterWrapper(StringToIntConverter stringToIntConverter) {
        this.mVersionCode = 1;
        this.zzagO = stringToIntConverter;
    }

    public static ConverterWrapper zza(zza<?, ?> com_google_android_gms_common_server_response_FastJsonResponse_zza___) {
        if (com_google_android_gms_common_server_response_FastJsonResponse_zza___ instanceof StringToIntConverter) {
            return new ConverterWrapper((StringToIntConverter) com_google_android_gms_common_server_response_FastJsonResponse_zza___);
        }
        throw new IllegalArgumentException("Unsupported safe parcelable field converter class.");
    }

    public int describeContents() {
        zza com_google_android_gms_common_server_converter_zza = CREATOR;
        return 0;
    }

    int getVersionCode() {
        return this.mVersionCode;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zza com_google_android_gms_common_server_converter_zza = CREATOR;
        zza.zza(this, parcel, i);
    }

    StringToIntConverter zzpy() {
        return this.zzagO;
    }

    public zza<?, ?> zzpz() {
        if (this.zzagO != null) {
            return this.zzagO;
        }
        throw new IllegalStateException("There was no converter wrapped in this ConverterWrapper.");
    }
}
