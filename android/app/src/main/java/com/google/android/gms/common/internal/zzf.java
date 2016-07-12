package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.view.View;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.zzqx;
import java.util.Collections;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

public final class zzf {
    private final Account zzQd;
    private final String zzRq;
    private final Set<Scope> zzaaF;
    private final int zzaaG;
    private final View zzaaH;
    private final String zzaaI;
    private final zzqx zzaaT;
    private final Set<Scope> zzafh;
    private final Map<Api<?>, zza> zzafi;
    private Integer zzafj;

    public static final class zza {
        public final Set<Scope> zzTm;
        public final boolean zzafk;

        public zza(Set<Scope> set, boolean z) {
            zzx.zzw(set);
            this.zzTm = Collections.unmodifiableSet(set);
            this.zzafk = z;
        }
    }

    public zzf(Account account, Set<Scope> set, Map<Api<?>, zza> map, int i, View view, String str, String str2, zzqx com_google_android_gms_internal_zzqx) {
        Map map2;
        this.zzQd = account;
        this.zzaaF = set == null ? Collections.EMPTY_SET : Collections.unmodifiableSet(set);
        if (map == null) {
            map2 = Collections.EMPTY_MAP;
        }
        this.zzafi = map2;
        this.zzaaH = view;
        this.zzaaG = i;
        this.zzRq = str;
        this.zzaaI = str2;
        this.zzaaT = com_google_android_gms_internal_zzqx;
        Set hashSet = new HashSet(this.zzaaF);
        for (zza com_google_android_gms_common_internal_zzf_zza : this.zzafi.values()) {
            hashSet.addAll(com_google_android_gms_common_internal_zzf_zza.zzTm);
        }
        this.zzafh = Collections.unmodifiableSet(hashSet);
    }

    public static zzf zzak(Context context) {
        return new Builder(context).zznB();
    }

    public Account getAccount() {
        return this.zzQd;
    }

    @Deprecated
    public String getAccountName() {
        return this.zzQd != null ? this.zzQd.name : null;
    }

    public void zza(Integer num) {
        this.zzafj = num;
    }

    public Set<Scope> zzb(Api<?> api) {
        zza com_google_android_gms_common_internal_zzf_zza = (zza) this.zzafi.get(api);
        if (com_google_android_gms_common_internal_zzf_zza == null || com_google_android_gms_common_internal_zzf_zza.zzTm.isEmpty()) {
            return this.zzaaF;
        }
        Set<Scope> hashSet = new HashSet(this.zzaaF);
        hashSet.addAll(com_google_android_gms_common_internal_zzf_zza.zzTm);
        return hashSet;
    }

    public Account zzoI() {
        return this.zzQd != null ? this.zzQd : new Account("<<default account>>", GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE);
    }

    public int zzoJ() {
        return this.zzaaG;
    }

    public Set<Scope> zzoK() {
        return this.zzaaF;
    }

    public Set<Scope> zzoL() {
        return this.zzafh;
    }

    public Map<Api<?>, zza> zzoM() {
        return this.zzafi;
    }

    public String zzoN() {
        return this.zzRq;
    }

    public String zzoO() {
        return this.zzaaI;
    }

    public View zzoP() {
        return this.zzaaH;
    }

    public zzqx zzoQ() {
        return this.zzaaT;
    }

    public Integer zzoR() {
        return this.zzafj;
    }
}
