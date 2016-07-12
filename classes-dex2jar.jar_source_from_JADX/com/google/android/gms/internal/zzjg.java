package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@zzgr
public class zzjg extends zzja {
    public zzjg(zziz com_google_android_gms_internal_zziz, boolean z) {
        super(com_google_android_gms_internal_zziz, z);
    }

    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        Exception e;
        try {
            if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
                return super.shouldInterceptRequest(webView, str);
            }
            if (webView instanceof zziz) {
                zziz com_google_android_gms_internal_zziz = (zziz) webView;
                com_google_android_gms_internal_zziz.zzhe().zzeG();
                String str2 = com_google_android_gms_internal_zziz.zzaN().zztf ? (String) zzby.zzuP.get() : com_google_android_gms_internal_zziz.zzhi() ? (String) zzby.zzuO.get() : (String) zzby.zzuN.get();
                zzb.m37v("shouldInterceptRequest(" + str2 + ")");
                return zzd(com_google_android_gms_internal_zziz.getContext(), this.zzoM.zzhh().zzJu, str2);
            }
            zzb.zzaH("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return super.shouldInterceptRequest(webView, str);
        } catch (IOException e2) {
            e = e2;
            zzb.zzaH("Could not fetch MRAID JS. " + e.getMessage());
            return super.shouldInterceptRequest(webView, str);
        } catch (ExecutionException e3) {
            e = e3;
            zzb.zzaH("Could not fetch MRAID JS. " + e.getMessage());
            return super.shouldInterceptRequest(webView, str);
        } catch (InterruptedException e4) {
            e = e4;
            zzb.zzaH("Could not fetch MRAID JS. " + e.getMessage());
            return super.shouldInterceptRequest(webView, str);
        } catch (TimeoutException e5) {
            e = e5;
            zzb.zzaH("Could not fetch MRAID JS. " + e.getMessage());
            return super.shouldInterceptRequest(webView, str);
        }
    }

    protected WebResourceResponse zzd(Context context, String str, String str2) throws IOException, ExecutionException, InterruptedException, TimeoutException {
        Map hashMap = new HashMap();
        hashMap.put("User-Agent", zzp.zzbv().zzf(context, str));
        hashMap.put("Cache-Control", "max-stale=3600");
        String str3 = (String) new zzih(context).zza(str2, hashMap).get(60, TimeUnit.SECONDS);
        return str3 == null ? null : new WebResourceResponse("application/javascript", "UTF-8", new ByteArrayInputStream(str3.getBytes("UTF-8")));
    }
}
