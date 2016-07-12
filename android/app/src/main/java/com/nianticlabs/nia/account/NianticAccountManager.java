package com.nianticlabs.nia.account;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.util.Log;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.nianticlabs.nia.contextservice.ContextService;
import com.nianticlabs.pokemongo.BuildConfig;

import java.lang.ref.WeakReference;

public class NianticAccountManager extends ContextService {
    private static final String KEY_ACCOUNT_NAME = "accountName";
    private static final String TAG = "NianticAccountManager";
    private static WeakReference<NianticAccountManager> instance;
    private final SharedPreferences prefs;

    /* renamed from: com.nianticlabs.nia.account.NianticAccountManager.1 */
    class C07541 implements Runnable {
        final /* synthetic */ String val$clientId;

        C07541(String str) {
            this.val$clientId = str;
        }

        public void run() {
            Intent intent = new Intent(NianticAccountManager.this.context, AccountsActivity.class);
            intent.putExtra(AccountsActivity.EXTRA_OAUTH_CLIENT_ID, this.val$clientId);
            NianticAccountManager.this.context.startActivity(intent);
        }
    }

    public enum Status {
        UNDEFINED(0),
        OK(1),
        NON_RECOVERABLE_ERROR(2),
        SIGNING_OUT(3),
        USER_CANCELED_LOGIN(4);
        
        public final int id;

        private Status(int i) {
            this.id = i;
        }
    }

    static {
        instance = null;
    }

    public NianticAccountManager(Context context, long j) {
        super(context, j);
        instance = new WeakReference(this);
        this.prefs = context.getSharedPreferences(context.getPackageName() + ".PREFS", 0);
    }

    private void clearAccount() {
        synchronized (this) {
            this.prefs.edit().remove(KEY_ACCOUNT_NAME).apply();
        }
    }

    public static WeakReference<NianticAccountManager> getInstance() {
        return instance;
    }

    private native void nativeAuthTokenCallback(int i, String str);

    public void getAccount(String str) {
        Object obj = 1;
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this.context);
        if (isGooglePlayServicesAvailable != 0) {
            Log.e(TAG, "Google Play Services not available. Error code: " + isGooglePlayServicesAvailable);
            setAuthToken(Status.NON_RECOVERABLE_ERROR, BuildConfig.FLAVOR);
            return;
        }
        try {
            String accountName = getAccountName();
            if (accountName != null) {
                Log.d(TAG, "Authenticating with account: " + accountName);
                setAuthToken(Status.OK, GoogleAuthUtil.getToken(this.context, accountName, "audience:server:client_id:" + str));
                obj = null;
            }
        } catch (UserRecoverableAuthException e) {
        } catch (Throwable e2) {
            Log.e(TAG, "Unable to get authToken at this time.", e2);
            setAuthToken(Status.NON_RECOVERABLE_ERROR, BuildConfig.FLAVOR);
            obj = null;
        } catch (Throwable e22) {
            Log.e(TAG, "User cannot be authenticated.", e22);
            setAuthToken(Status.NON_RECOVERABLE_ERROR, BuildConfig.FLAVOR);
            obj = null;
        }
        if (obj != null) {
            ContextService.runOnUiThread(new C07541(str));
        }
    }

    public String getAccountName() {
        String string;
        synchronized (this) {
            string = this.prefs.getString(KEY_ACCOUNT_NAME, null);
        }
        return string;
    }

    public void setAccountName(String str) {
        synchronized (this) {
            this.prefs.edit().putString(KEY_ACCOUNT_NAME, str).apply();
        }
    }

    public void setAuthToken(Status status, String str) {
        synchronized (this) {
            synchronized (this.callbackLock) {
                nativeAuthTokenCallback(status.ordinal(), str);
            }
        }
    }
}
