package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Environment;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;

@zzgr
public class zzca {
    final Context mContext;
    final String zzqV;
    String zzvB;
    BlockingQueue<zzcg> zzvD;
    ExecutorService zzvE;
    LinkedHashMap<String, String> zzvF;
    Map<String, zzcd> zzvG;
    private AtomicBoolean zzvH;
    private File zzvI;

    /* renamed from: com.google.android.gms.internal.zzca.1 */
    class C04911 implements Runnable {
        final /* synthetic */ zzca zzvJ;

        C04911(zzca com_google_android_gms_internal_zzca) {
            this.zzvJ = com_google_android_gms_internal_zzca;
        }

        public void run() {
            this.zzvJ.zzdj();
        }
    }

    public zzca(Context context, String str, String str2, Map<String, String> map) {
        this.zzvF = new LinkedHashMap();
        this.zzvG = new HashMap();
        this.mContext = context;
        this.zzqV = str;
        this.zzvB = str2;
        this.zzvH = new AtomicBoolean(false);
        this.zzvH.set(((Boolean) zzby.zzuS.get()).booleanValue());
        if (this.zzvH.get()) {
            File externalStorageDirectory = Environment.getExternalStorageDirectory();
            if (externalStorageDirectory != null) {
                this.zzvI = new File(externalStorageDirectory, "sdk_csi_data.txt");
            }
        }
        for (Entry entry : map.entrySet()) {
            this.zzvF.put(entry.getKey(), entry.getValue());
        }
        this.zzvD = new ArrayBlockingQueue(30);
        this.zzvE = Executors.newSingleThreadExecutor();
        this.zzvE.execute(new C04911(this));
        this.zzvG.put("action", zzcd.zzvL);
        this.zzvG.put("ad_format", zzcd.zzvL);
        this.zzvG.put("e", zzcd.zzvM);
    }

    private void zza(File file, String str) {
        Throwable e;
        FileOutputStream fileOutputStream = null;
        if (file != null) {
            FileOutputStream fileOutputStream2;
            try {
                fileOutputStream2 = new FileOutputStream(file, true);
                try {
                    fileOutputStream2.write(str.getBytes());
                    fileOutputStream2.write(10);
                    if (fileOutputStream2 != null) {
                        try {
                            fileOutputStream2.close();
                            return;
                        } catch (Throwable e2) {
                            zzb.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e2);
                            return;
                        }
                    }
                    return;
                } catch (IOException e3) {
                    e2 = e3;
                    try {
                        zzb.zzd("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e2);
                        if (fileOutputStream2 != null) {
                            try {
                                fileOutputStream2.close();
                                return;
                            } catch (Throwable e22) {
                                zzb.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e22);
                                return;
                            }
                        }
                        return;
                    } catch (Throwable th) {
                        e22 = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable e4) {
                                zzb.zzd("CsiReporter: Cannot close file: sdk_csi_data.txt.", e4);
                            }
                        }
                        throw e22;
                    }
                }
            } catch (IOException e5) {
                e22 = e5;
                fileOutputStream2 = null;
                zzb.zzd("CsiReporter: Cannot write to file: sdk_csi_data.txt.", e22);
                if (fileOutputStream2 != null) {
                    fileOutputStream2.close();
                    return;
                }
                return;
            } catch (Throwable th2) {
                e22 = th2;
                if (fileOutputStream != null) {
                    fileOutputStream.close();
                }
                throw e22;
            }
        }
        zzb.zzaH("CsiReporter: File doesn't exists. Cannot write CSI data to file.");
    }

    private void zzc(Map<String, String> map, String str) {
        String zza = zza(this.zzvB, map, str);
        if (this.zzvH.get()) {
            zza(this.zzvI, zza);
        } else {
            zzp.zzbv().zzc(this.mContext, this.zzqV, zza);
        }
    }

    private void zzdj() {
        while (true) {
            try {
                zzcg com_google_android_gms_internal_zzcg = (zzcg) this.zzvD.take();
                Object zzdp = com_google_android_gms_internal_zzcg.zzdp();
                if (!TextUtils.isEmpty(zzdp)) {
                    zzc(zza(this.zzvF, com_google_android_gms_internal_zzcg.zzn()), zzdp);
                }
            } catch (Throwable e) {
                zzb.zzd("CsiReporter:reporter interrupted", e);
                return;
            }
        }
    }

    public zzcd zzR(String str) {
        zzcd com_google_android_gms_internal_zzcd = (zzcd) this.zzvG.get(str);
        return com_google_android_gms_internal_zzcd != null ? com_google_android_gms_internal_zzcd : zzcd.zzvK;
    }

    String zza(String str, Map<String, String> map, String str2) {
        Builder buildUpon = Uri.parse(str).buildUpon();
        for (Entry entry : map.entrySet()) {
            buildUpon.appendQueryParameter((String) entry.getKey(), (String) entry.getValue());
        }
        StringBuilder stringBuilder = new StringBuilder(buildUpon.build().toString());
        stringBuilder.append("&").append("it").append("=").append(str2);
        return stringBuilder.toString();
    }

    Map<String, String> zza(Map<String, String> map, Map<String, String> map2) {
        Map linkedHashMap = new LinkedHashMap(map);
        if (map2 != null) {
            for (Entry entry : map2.entrySet()) {
                String str = (String) entry.getKey();
                String str2 = (String) linkedHashMap.get(str);
                linkedHashMap.put(str, zzR(str).zzd(str2, (String) entry.getValue()));
            }
        }
        return linkedHashMap;
    }

    public boolean zza(zzcg com_google_android_gms_internal_zzcg) {
        return this.zzvD.offer(com_google_android_gms_internal_zzcg);
    }

    public void zzb(List<String> list) {
        if (list != null && !list.isEmpty()) {
            this.zzvF.put("e", TextUtils.join(",", list));
        }
    }
}
