package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;

public class ProxyResponse implements SafeParcelable {
    public static final Creator<ProxyResponse> CREATOR;
    public static final int STATUS_CODE_NO_CONNECTION = -1;
    public final byte[] body;
    public final int googlePlayServicesStatusCode;
    public final PendingIntent recoveryAction;
    public final int statusCode;
    final int versionCode;
    final Bundle zzSK;

    static {
        CREATOR = new zzc();
    }

    ProxyResponse(int i, int i2, PendingIntent pendingIntent, int i3, Bundle bundle, byte[] bArr) {
        this.versionCode = i;
        this.googlePlayServicesStatusCode = i2;
        this.statusCode = i3;
        this.zzSK = bundle;
        this.body = bArr;
        this.recoveryAction = pendingIntent;
    }

    public ProxyResponse(int i, PendingIntent pendingIntent, int i2, Bundle bundle, byte[] bArr) {
        this(1, i, pendingIntent, i2, bundle, bArr);
    }

    private ProxyResponse(int i, Bundle bundle, byte[] bArr) {
        this(1, 0, null, i, bundle, bArr);
    }

    public ProxyResponse(int i, Map<String, String> map, byte[] bArr) {
        this(i, zzE(map), bArr);
    }

    public static ProxyResponse createErrorProxyResponse(int i, PendingIntent pendingIntent, int i2, Map<String, String> map, byte[] bArr) {
        return new ProxyResponse(1, i, pendingIntent, i2, zzE(map), bArr);
    }

    private static Bundle zzE(Map<String, String> map) {
        Bundle bundle = new Bundle();
        if (map != null) {
            for (Entry entry : map.entrySet()) {
                bundle.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        return bundle;
    }

    public int describeContents() {
        return 0;
    }

    public Map<String, String> getHeaders() {
        Map<String, String> hashMap = new HashMap();
        for (String str : this.zzSK.keySet()) {
            hashMap.put(str, this.zzSK.getString(str));
        }
        return hashMap;
    }

    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
