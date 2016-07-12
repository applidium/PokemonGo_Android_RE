package com.google.android.gms.security;

import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.zzx;
import java.lang.reflect.Method;

public class ProviderInstaller {
    public static final String PROVIDER_NAME = "GmsCore_OpenSSL";
    private static Method zzaUV;
    private static final GoogleApiAvailability zzacJ;
    private static final Object zzpy;

    /* renamed from: com.google.android.gms.security.ProviderInstaller.1 */
    static final class C06761 extends AsyncTask<Void, Void, Integer> {
        final /* synthetic */ ProviderInstallListener zzaUW;
        final /* synthetic */ Context zzry;

        C06761(Context context, ProviderInstallListener providerInstallListener) {
            this.zzry = context;
            this.zzaUW = providerInstallListener;
        }

        protected /* synthetic */ Object doInBackground(Object[] objArr) {
            return zzc((Void[]) objArr);
        }

        protected /* synthetic */ void onPostExecute(Object obj) {
            zze((Integer) obj);
        }

        protected Integer zzc(Void... voidArr) {
            try {
                ProviderInstaller.installIfNeeded(this.zzry);
                return Integer.valueOf(0);
            } catch (GooglePlayServicesRepairableException e) {
                return Integer.valueOf(e.getConnectionStatusCode());
            } catch (GooglePlayServicesNotAvailableException e2) {
                return Integer.valueOf(e2.errorCode);
            }
        }

        protected void zze(Integer num) {
            if (num.intValue() == 0) {
                this.zzaUW.onProviderInstalled();
                return;
            }
            this.zzaUW.onProviderInstallFailed(num.intValue(), ProviderInstaller.zzacJ.zza(this.zzry, num.intValue(), "pi"));
        }
    }

    public interface ProviderInstallListener {
        void onProviderInstallFailed(int i, Intent intent);

        void onProviderInstalled();
    }

    static {
        zzacJ = GoogleApiAvailability.getInstance();
        zzpy = new Object();
        zzaUV = null;
    }

    public static void installIfNeeded(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        zzx.zzb((Object) context, (Object) "Context must not be null");
        zzacJ.zzab(context);
        Context remoteContext = GooglePlayServicesUtil.getRemoteContext(context);
        if (remoteContext == null) {
            Log.e("ProviderInstaller", "Failed to get remote context");
            throw new GooglePlayServicesNotAvailableException(8);
        }
        synchronized (zzpy) {
            try {
                if (zzaUV == null) {
                    zzaM(remoteContext);
                }
                zzaUV.invoke(null, new Object[]{remoteContext});
            } catch (Exception e) {
                Log.e("ProviderInstaller", "Failed to install provider: " + e.getMessage());
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void installIfNeededAsync(Context context, ProviderInstallListener providerInstallListener) {
        zzx.zzb((Object) context, (Object) "Context must not be null");
        zzx.zzb((Object) providerInstallListener, (Object) "Listener must not be null");
        zzx.zzci("Must be called on the UI thread");
        new C06761(context, providerInstallListener).execute(new Void[0]);
    }

    private static void zzaM(Context context) throws ClassNotFoundException, NoSuchMethodException {
        zzaUV = context.getClassLoader().loadClass("com.google.android.gms.common.security.ProviderInstallerImpl").getMethod("insertProvider", new Class[]{Context.class});
    }
}
