package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.text.TextUtils;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
import java.util.Map.Entry;

public abstract class zzk<T> implements Comparable<zzk<T>> {
    private final zza zzD;
    private final int zzE;
    private final String zzF;
    private final int zzG;
    private final com.google.android.gms.internal.zzm.zza zzH;
    private Integer zzI;
    private zzl zzJ;
    private boolean zzK;
    private boolean zzL;
    private boolean zzM;
    private long zzN;
    private zzo zzO;
    private com.google.android.gms.internal.zzb.zza zzP;

    /* renamed from: com.google.android.gms.internal.zzk.1 */
    class C06031 implements Runnable {
        final /* synthetic */ String zzQ;
        final /* synthetic */ long zzR;
        final /* synthetic */ zzk zzS;

        C06031(zzk com_google_android_gms_internal_zzk, String str, long j) {
            this.zzS = com_google_android_gms_internal_zzk;
            this.zzQ = str;
            this.zzR = j;
        }

        public void run() {
            this.zzS.zzD.zza(this.zzQ, this.zzR);
            this.zzS.zzD.zzd(toString());
        }
    }

    public enum zza {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    public zzk(int i, String str, com.google.android.gms.internal.zzm.zza com_google_android_gms_internal_zzm_zza) {
        this.zzD = zza.zzak ? new zza() : null;
        this.zzK = true;
        this.zzL = false;
        this.zzM = false;
        this.zzN = 0;
        this.zzP = null;
        this.zzE = i;
        this.zzF = str;
        this.zzH = com_google_android_gms_internal_zzm_zza;
        zza(new zzd());
        this.zzG = zzb(str);
    }

    private byte[] zza(Map<String, String> map, String str) {
        StringBuilder stringBuilder = new StringBuilder();
        try {
            for (Entry entry : map.entrySet()) {
                stringBuilder.append(URLEncoder.encode((String) entry.getKey(), str));
                stringBuilder.append('=');
                stringBuilder.append(URLEncoder.encode((String) entry.getValue(), str));
                stringBuilder.append('&');
            }
            return stringBuilder.toString().getBytes(str);
        } catch (Throwable e) {
            throw new RuntimeException("Encoding not supported: " + str, e);
        }
    }

    private static int zzb(String str) {
        if (!TextUtils.isEmpty(str)) {
            Uri parse = Uri.parse(str);
            if (parse != null) {
                String host = parse.getHost();
                if (host != null) {
                    return host.hashCode();
                }
            }
        }
        return 0;
    }

    public /* synthetic */ int compareTo(Object obj) {
        return zzc((zzk) obj);
    }

    public Map<String, String> getHeaders() throws zza {
        return Collections.emptyMap();
    }

    public int getMethod() {
        return this.zzE;
    }

    public String getUrl() {
        return this.zzF;
    }

    public boolean isCanceled() {
        return this.zzL;
    }

    public String toString() {
        return (this.zzL ? "[X] " : "[ ] ") + getUrl() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + ("0x" + Integer.toHexString(zzg())) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + zzs() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + this.zzI;
    }

    public final zzk<?> zza(int i) {
        this.zzI = Integer.valueOf(i);
        return this;
    }

    public zzk<?> zza(com.google.android.gms.internal.zzb.zza com_google_android_gms_internal_zzb_zza) {
        this.zzP = com_google_android_gms_internal_zzb_zza;
        return this;
    }

    public zzk<?> zza(zzl com_google_android_gms_internal_zzl) {
        this.zzJ = com_google_android_gms_internal_zzl;
        return this;
    }

    public zzk<?> zza(zzo com_google_android_gms_internal_zzo) {
        this.zzO = com_google_android_gms_internal_zzo;
        return this;
    }

    protected abstract zzm<T> zza(zzi com_google_android_gms_internal_zzi);

    protected abstract void zza(T t);

    protected zzr zzb(zzr com_google_android_gms_internal_zzr) {
        return com_google_android_gms_internal_zzr;
    }

    public int zzc(zzk<T> com_google_android_gms_internal_zzk_T) {
        zza zzs = zzs();
        zza zzs2 = com_google_android_gms_internal_zzk_T.zzs();
        return zzs == zzs2 ? this.zzI.intValue() - com_google_android_gms_internal_zzk_T.zzI.intValue() : zzs2.ordinal() - zzs.ordinal();
    }

    public void zzc(zzr com_google_android_gms_internal_zzr) {
        if (this.zzH != null) {
            this.zzH.zze(com_google_android_gms_internal_zzr);
        }
    }

    public void zzc(String str) {
        if (zza.zzak) {
            this.zzD.zza(str, Thread.currentThread().getId());
        } else if (this.zzN == 0) {
            this.zzN = SystemClock.elapsedRealtime();
        }
    }

    void zzd(String str) {
        if (this.zzJ != null) {
            this.zzJ.zzf(this);
        }
        if (zza.zzak) {
            long id = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                new Handler(Looper.getMainLooper()).post(new C06031(this, str, id));
                return;
            }
            this.zzD.zza(str, id);
            this.zzD.zzd(toString());
            return;
        }
        if (SystemClock.elapsedRealtime() - this.zzN >= 3000) {
            zzs.zzb("%d ms: %s", Long.valueOf(SystemClock.elapsedRealtime() - this.zzN), toString());
        }
    }

    public int zzg() {
        return this.zzG;
    }

    public String zzh() {
        return getUrl();
    }

    public com.google.android.gms.internal.zzb.zza zzi() {
        return this.zzP;
    }

    @Deprecated
    protected Map<String, String> zzj() throws zza {
        return zzn();
    }

    @Deprecated
    protected String zzk() {
        return zzo();
    }

    @Deprecated
    public String zzl() {
        return zzp();
    }

    @Deprecated
    public byte[] zzm() throws zza {
        Map zzj = zzj();
        return (zzj == null || zzj.size() <= 0) ? null : zza(zzj, zzk());
    }

    protected Map<String, String> zzn() throws zza {
        return null;
    }

    protected String zzo() {
        return "UTF-8";
    }

    public String zzp() {
        return "application/x-www-form-urlencoded; charset=" + zzo();
    }

    public byte[] zzq() throws zza {
        Map zzn = zzn();
        return (zzn == null || zzn.size() <= 0) ? null : zza(zzn, zzo());
    }

    public final boolean zzr() {
        return this.zzK;
    }

    public zza zzs() {
        return zza.NORMAL;
    }

    public final int zzt() {
        return this.zzO.zzd();
    }

    public zzo zzu() {
        return this.zzO;
    }

    public void zzv() {
        this.zzM = true;
    }

    public boolean zzw() {
        return this.zzM;
    }
}
