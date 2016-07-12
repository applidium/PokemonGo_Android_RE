package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesUtil;

public class zza extends com.google.android.gms.common.internal.zzp.zza {
    private Context mContext;
    private Account zzQd;
    int zzaeG;

    public static Account zzb(zzp com_google_android_gms_common_internal_zzp) {
        Account account = null;
        if (com_google_android_gms_common_internal_zzp != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = com_google_android_gms_common_internal_zzp.getAccount();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    public boolean equals(Object obj) {
        return this == obj ? true : !(obj instanceof zza) ? false : this.zzQd.equals(((zza) obj).zzQd);
    }

    public Account getAccount() {
        int callingUid = Binder.getCallingUid();
        if (callingUid == this.zzaeG) {
            return this.zzQd;
        }
        if (GooglePlayServicesUtil.zze(this.mContext, callingUid)) {
            this.zzaeG = callingUid;
            return this.zzQd;
        }
        throw new SecurityException("Caller is not GooglePlayServices");
    }
}
