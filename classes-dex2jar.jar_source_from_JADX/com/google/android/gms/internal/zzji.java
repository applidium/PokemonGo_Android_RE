package com.google.android.gms.internal;

import android.text.TextUtils;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.common.internal.zzw;
import java.net.URI;
import java.net.URISyntaxException;

@zzgr
public class zzji extends WebViewClient {
    private final zzgd zzDt;
    private final String zzKH;
    private boolean zzKI;
    private final zziz zzoM;

    public zzji(zzgd com_google_android_gms_internal_zzgd, zziz com_google_android_gms_internal_zziz, String str) {
        this.zzKH = zzaO(str);
        this.zzKI = false;
        this.zzoM = com_google_android_gms_internal_zziz;
        this.zzDt = com_google_android_gms_internal_zzgd;
    }

    private String zzaO(String str) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (str.endsWith("/")) {
                    str = str.substring(0, str.length() - 1);
                }
            } catch (IndexOutOfBoundsException e) {
                zzb.m36e(e.getMessage());
            }
        }
        return str;
    }

    public void onLoadResource(WebView webView, String str) {
        zzb.zzaF("JavascriptAdWebViewClient::onLoadResource: " + str);
        if (!zzaN(str)) {
            this.zzoM.zzhe().onLoadResource(this.zzoM.getWebView(), str);
        }
    }

    public void onPageFinished(WebView webView, String str) {
        zzb.zzaF("JavascriptAdWebViewClient::onPageFinished: " + str);
        if (!this.zzKI) {
            this.zzDt.zzfv();
            this.zzKI = true;
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        zzb.zzaF("JavascriptAdWebViewClient::shouldOverrideUrlLoading: " + str);
        if (!zzaN(str)) {
            return this.zzoM.zzhe().shouldOverrideUrlLoading(this.zzoM.getWebView(), str);
        }
        zzb.zzaF("shouldOverrideUrlLoading: received passback url");
        return true;
    }

    protected boolean zzaN(String str) {
        Object zzaO = zzaO(str);
        if (TextUtils.isEmpty(zzaO)) {
            return false;
        }
        try {
            URI uri = new URI(zzaO);
            if ("passback".equals(uri.getScheme())) {
                zzb.zzaF("Passback received");
                this.zzDt.zzfw();
                return true;
            } else if (TextUtils.isEmpty(this.zzKH)) {
                return false;
            } else {
                URI uri2 = new URI(this.zzKH);
                String host = uri2.getHost();
                String host2 = uri.getHost();
                String path = uri2.getPath();
                String path2 = uri.getPath();
                if (!zzw.equal(host, host2) || !zzw.equal(path, path2)) {
                    return false;
                }
                zzb.zzaF("Passback received");
                this.zzDt.zzfw();
                return true;
            }
        } catch (URISyntaxException e) {
            zzb.m36e(e.getMessage());
            return false;
        }
    }
}
