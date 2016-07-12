package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

@zzgr
public final class zzij extends zzhz {
    private final Context mContext;
    private final String zzF;
    private String zzIa;
    private final String zzqV;

    public zzij(Context context, String str, String str2) {
        this.zzIa = null;
        this.mContext = context;
        this.zzqV = str;
        this.zzF = str2;
    }

    public zzij(Context context, String str, String str2, String str3) {
        this.zzIa = null;
        this.mContext = context;
        this.zzqV = str;
        this.zzF = str2;
        this.zzIa = str3;
    }

    public void onStop() {
    }

    public void zzbn() {
        HttpURLConnection httpURLConnection;
        try {
            zzb.m37v("Pinging URL: " + this.zzF);
            httpURLConnection = (HttpURLConnection) new URL(this.zzF).openConnection();
            if (TextUtils.isEmpty(this.zzIa)) {
                zzp.zzbv().zza(this.mContext, this.zzqV, true, httpURLConnection);
            } else {
                zzp.zzbv().zza(this.mContext, this.zzqV, true, httpURLConnection, this.zzIa);
            }
            int responseCode = httpURLConnection.getResponseCode();
            if (responseCode < 200 || responseCode >= 300) {
                zzb.zzaH("Received non-success response code " + responseCode + " from pinging URL: " + this.zzF);
            }
            httpURLConnection.disconnect();
        } catch (IndexOutOfBoundsException e) {
            zzb.zzaH("Error while parsing ping URL: " + this.zzF + ". " + e.getMessage());
        } catch (IOException e2) {
            zzb.zzaH("Error while pinging URL: " + this.zzF + ". " + e2.getMessage());
        } catch (RuntimeException e3) {
            zzb.zzaH("Error while pinging URL: " + this.zzF + ". " + e3.getMessage());
        } catch (Throwable th) {
            httpURLConnection.disconnect();
        }
    }
}
