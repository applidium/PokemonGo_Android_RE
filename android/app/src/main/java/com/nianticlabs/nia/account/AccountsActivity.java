package com.nianticlabs.nia.account;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.AsyncTask;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.auth.GoogleAuthUtil;
import com.google.android.gms.auth.UserRecoverableAuthException;
import com.google.android.gms.common.AccountPicker;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.nianticlabs.nia.account.NianticAccountManager.Status;
import com.nianticlabs.pokemongo.BuildConfig;

import java.lang.ref.WeakReference;

public class AccountsActivity extends Activity {
    static final String AUTH_TOKEN_SCOPE_PREFIX = "audience:server:client_id:";
    static String EXTRA_OAUTH_CLIENT_ID = null;
    private static final int REQUEST_CHOOSE_ACCOUNT = 1;
    private static final int REQUEST_GET_AUTH = 2;
    private static String TAG;
    private NianticAccountManager accountManager;
    private boolean authInProgress;

    /* renamed from: com.nianticlabs.nia.account.AccountsActivity.1 */
    class C07511 extends AsyncTask<Void, Void, Void> {
        final /* synthetic */ String val$accountName;

        C07511(String str) {
            this.val$accountName = str;
        }

        protected Void doInBackground(Void... voidArr) {
            AccountsActivity.getAuthTokenBlocking(AccountsActivity.this, this.val$accountName);
            return null;
        }
    }

    /* renamed from: com.nianticlabs.nia.account.AccountsActivity.2 */
    class C07522 implements Runnable {
        final /* synthetic */ UserRecoverableAuthException val$e;

        C07522(UserRecoverableAuthException userRecoverableAuthException) {
            this.val$e = userRecoverableAuthException;
        }

        public void run() {
            AccountsActivity.this.startActivityForResult(this.val$e.getIntent(), AccountsActivity.REQUEST_GET_AUTH);
        }
    }

    /* renamed from: com.nianticlabs.nia.account.AccountsActivity.3 */
    class C07533 implements Runnable {
        C07533() {
        }

        public void run() {
            AccountsActivity.this.finish();
        }
    }

    static {
        TAG = "AccountsActivity";
        EXTRA_OAUTH_CLIENT_ID = "oauthClientId";
    }

    public AccountsActivity() {
        this.authInProgress = false;
    }

    private void askUserToRecover(UserRecoverableAuthException userRecoverableAuthException) {
        runOnUiThread(new C07522(userRecoverableAuthException));
    }

    private void failAuth(Status status, String str) {
        Log.e(TAG, str);
        this.accountManager.setAuthToken(status, BuildConfig.FLAVOR);
        finish();
    }

    private void getAuth(String str) {
        new C07511(str).execute(new Void[0]);
    }

    private void getAuthOrAccount() {
        String accountName = this.accountManager.getAccountName();
        if (accountName != null) {
            getAuth(accountName);
            return;
        }
        String[] strArr = new String[REQUEST_CHOOSE_ACCOUNT];
        strArr[0] = GoogleAuthUtil.GOOGLE_ACCOUNT_TYPE;
        startActivityForResult(AccountPicker.newChooseAccountIntent(null, null, strArr, false, null, null, null, null), REQUEST_CHOOSE_ACCOUNT);
    }

    private static void getAuthTokenBlocking(AccountsActivity accountsActivity, String str) {
        try {
            Log.d(TAG, "Authenticating with account: " + str);
            String stringExtra = accountsActivity.getIntent().getStringExtra(EXTRA_OAUTH_CLIENT_ID);
            Log.i(TAG, "Authenticating with client id: " + stringExtra);
            stringExtra = AUTH_TOKEN_SCOPE_PREFIX + stringExtra;
            Log.i(TAG, "Authenticating with scope: " + stringExtra);
            accountsActivity.accountManager.setAuthToken(Status.OK, GoogleAuthUtil.getToken((Context) accountsActivity, str, stringExtra));
            accountsActivity.postFinish();
        } catch (UserRecoverableAuthException e) {
            accountsActivity.askUserToRecover(e);
        } catch (Throwable e2) {
            Log.e(TAG, "Unable to get authToken at this time.", e2);
            accountsActivity.accountManager.setAuthToken(Status.NON_RECOVERABLE_ERROR, BuildConfig.FLAVOR);
            accountsActivity.postFinish();
        } catch (Throwable e22) {
            Log.e(TAG, "User cannot be authenticated.", e22);
            accountsActivity.accountManager.setAuthToken(Status.NON_RECOVERABLE_ERROR, BuildConfig.FLAVOR);
            accountsActivity.postFinish();
        }
    }

    private void postFinish() {
        runOnUiThread(new C07533());
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        String str = "Unexpected requestCode " + i;
        switch (i) {
            case REQUEST_CHOOSE_ACCOUNT /*1*/:
                if (i2 == 0) {
                    failAuth(Status.USER_CANCELED_LOGIN, "User decided to cancel account selection.");
                } else if (intent == null) {
                    failAuth(Status.NON_RECOVERABLE_ERROR, "Attempt to choose null account, resultCode: " + i2);
                } else {
                    str = intent.getStringExtra("authAccount");
                    if (str == null || BuildConfig.FLAVOR.equals(str)) {
                        failAuth(Status.NON_RECOVERABLE_ERROR, "Attempt to choose unnamed account, resultCode: " + i2);
                        return;
                    }
                    this.accountManager.setAccountName(str);
                    getAuth(str);
                }
            case REQUEST_GET_AUTH /*2*/:
                getAuthOrAccount();
            default:
                Log.e(TAG, str);
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(getResources().getIdentifier("accounts_activity", "layout", getPackageName()));
        this.accountManager = null;
        WeakReference instance = NianticAccountManager.getInstance();
        if (instance != null) {
            this.accountManager = (NianticAccountManager) instance.get();
        }
        if (this.accountManager == null) {
            throw new RuntimeException("Unable to locate NianticAccountManager");
        }
    }

    protected void onResume() {
        super.onResume();
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(this);
        if (isGooglePlayServicesAvailable != 0) {
            Log.e(TAG, "Google Play Services not available, need to do something. Error code: " + isGooglePlayServicesAvailable);
            this.accountManager.setAuthToken(Status.NON_RECOVERABLE_ERROR, BuildConfig.FLAVOR);
            finish();
        } else if (!this.authInProgress) {
            this.authInProgress = true;
            getAuthOrAccount();
        }
    }
}
