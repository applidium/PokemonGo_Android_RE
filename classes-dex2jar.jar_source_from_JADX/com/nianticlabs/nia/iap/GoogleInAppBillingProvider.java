package com.nianticlabs.nia.iap;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentSender.SendIntentException;
import android.content.ServiceConnection;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.android.vending.billing.IInAppBillingService;
import com.android.vending.billing.IInAppBillingService.Stub;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.nianticlabs.nia.contextservice.ContextService;
import com.nianticlabs.nia.iap.InAppBillingProvider.Delegate;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class GoogleInAppBillingProvider implements InAppBillingProvider {
    private static final int BILLING_RESPONSE_RESULT_BILLING_UNAVAILABLE = 3;
    private static final int BILLING_RESPONSE_RESULT_DEVELOPER_ERROR = 5;
    private static final int BILLING_RESPONSE_RESULT_ERROR = 6;
    private static final int BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED = 7;
    private static final int BILLING_RESPONSE_RESULT_ITEM_NOT_OWNED = 8;
    private static final int BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE = 4;
    private static final int BILLING_RESPONSE_RESULT_NOT_FOUND = 1000;
    private static final int BILLING_RESPONSE_RESULT_OK = 0;
    private static final int BILLING_RESPONSE_RESULT_USER_CANCELED = 1;
    private static final int BILLING_SERVICE_VERSION = 3;
    static final boolean ENABLE_VERBOSE_LOGS = false;
    private static final String GET_SKU_DETAILS_ITEM_LIST = "ITEM_ID_LIST";
    private static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    private static final String ITEM_TYPE_INAPP = "inapp";
    private static final String PACKAGE_NAME_BASE = "com.niantic";
    private static final String RESPONSE_BUY_INTENT = "BUY_INTENT";
    private static final String RESPONSE_CODE = "RESPONSE_CODE";
    private static final String RESPONSE_GET_SKU_DETAILS_LIST = "DETAILS_LIST";
    private static final String RESPONSE_INAPP_PURCHASE_DATA = "INAPP_PURCHASE_DATA";
    private static final String RESPONSE_INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    private static final String RESPONSE_INAPP_SIGNATURE = "INAPP_DATA_SIGNATURE";
    private static final String RESPONSE_INAPP_SIGNATURE_LIST = "INAPP_DATA_SIGNATURE_LIST";
    private static final String UNKNOWN_CURRENCY_STRING = "UNKNOWN";
    private static WeakReference<GoogleInAppBillingProvider> instance;
    private static final Logger log;
    private IInAppBillingService billingService;
    private boolean clientConnected;
    private boolean connectionInProgress;
    private final Context context;
    private Map<String, GetSkuDetailsResponseItem> currentPurchasableItems;
    private Delegate delegate;
    private String itemBeingPurchased;
    private final String packageName;
    private PendingIntent pendingIntent;
    private boolean purchaseSupported;
    private ServiceConnection serviceConnection;
    private int transactionsInProgress;

    /* renamed from: com.nianticlabs.nia.iap.GoogleInAppBillingProvider.1 */
    class C07641 implements ServiceConnection {

        /* renamed from: com.nianticlabs.nia.iap.GoogleInAppBillingProvider.1.1 */
        class C07621 implements Runnable {
            final /* synthetic */ IBinder val$service;

            C07621(IBinder iBinder) {
                this.val$service = iBinder;
            }

            public void run() {
                if (GoogleInAppBillingProvider.this.serviceConnection == null) {
                    GoogleInAppBillingProvider.this.finalizeConnectionResult();
                    return;
                }
                GoogleInAppBillingProvider.this.billingService = Stub.asInterface(this.val$service);
                try {
                    GoogleInAppBillingProvider.this.purchaseSupported = GoogleInAppBillingProvider.this.billingService.isBillingSupported(GoogleInAppBillingProvider.BILLING_SERVICE_VERSION, GoogleInAppBillingProvider.this.packageName, GoogleInAppBillingProvider.ITEM_TYPE_INAPP) == 0 ? true : GoogleInAppBillingProvider.ENABLE_VERBOSE_LOGS;
                } catch (RemoteException e) {
                    GoogleInAppBillingProvider.this.purchaseSupported = GoogleInAppBillingProvider.ENABLE_VERBOSE_LOGS;
                }
                if (GoogleInAppBillingProvider.this.currentPurchasableItems.size() > 0) {
                    new ProcessPurchasedItemsTask().execute(new Void[GoogleInAppBillingProvider.BILLING_RESPONSE_RESULT_OK]);
                } else {
                    GoogleInAppBillingProvider.this.finalizeConnectionResult();
                }
            }
        }

        /* renamed from: com.nianticlabs.nia.iap.GoogleInAppBillingProvider.1.2 */
        class C07632 implements Runnable {
            C07632() {
            }

            public void run() {
                GoogleInAppBillingProvider.this.billingService = null;
                GoogleInAppBillingProvider.this.finalizeConnectionResult();
            }
        }

        C07641() {
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            ContextService.runOnServiceHandler(new C07621(iBinder));
        }

        public void onServiceDisconnected(ComponentName componentName) {
            ContextService.runOnServiceHandler(new C07632());
        }
    }

    /* renamed from: com.nianticlabs.nia.iap.GoogleInAppBillingProvider.2 */
    class C07652 implements Runnable {
        C07652() {
        }

        public void run() {
            GoogleInAppBillingProvider.this.context.startActivity(new Intent(GoogleInAppBillingProvider.this.context, PurchaseActivity.class));
        }
    }

    /* renamed from: com.nianticlabs.nia.iap.GoogleInAppBillingProvider.3 */
    class C07663 implements Runnable {
        final /* synthetic */ String val$dataSignature;
        final /* synthetic */ String val$purchaseData;
        final /* synthetic */ int val$responseCode;
        final /* synthetic */ int val$resultCode;

        C07663(int i, int i2, String str, String str2) {
            this.val$resultCode = i;
            this.val$responseCode = i2;
            this.val$purchaseData = str;
            this.val$dataSignature = str2;
        }

        public void run() {
            GoogleInAppBillingProvider.this.processPurchaseResult(this.val$resultCode, this.val$responseCode, this.val$purchaseData, this.val$dataSignature);
        }
    }

    private class ConsumeItemTask extends AsyncTask<Void, Void, Integer> {
        private final IInAppBillingService billingService;
        private final String purchaseToken;

        public ConsumeItemTask(String str) {
            this.purchaseToken = str;
            this.billingService = GoogleInAppBillingProvider.this.billingService;
        }

        protected Integer doInBackground(Void... voidArr) {
            Integer num = null;
            if (this.billingService == null) {
                return num;
            }
            try {
                return Integer.valueOf(this.billingService.consumePurchase(GoogleInAppBillingProvider.BILLING_SERVICE_VERSION, GoogleInAppBillingProvider.this.packageName, this.purchaseToken));
            } catch (RemoteException e) {
                return num;
            }
        }

        protected void onPostExecute(Integer num) {
            if (num == null || num.intValue() != 0) {
                GoogleInAppBillingProvider.this.finalizePurchaseResult(PurchaseResult.FAILURE);
            } else {
                GoogleInAppBillingProvider.this.finalizePurchaseResult(PurchaseResult.SUCCESS);
            }
        }
    }

    private class GetSkuDetailsTask extends AsyncTask<Void, Void, Bundle> {
        private final IInAppBillingService billingService;
        private final Bundle requestBundle;

        public GetSkuDetailsTask(ArrayList<String> arrayList) {
            this.billingService = GoogleInAppBillingProvider.this.billingService;
            this.requestBundle = new Bundle();
            this.requestBundle.putStringArrayList(GoogleInAppBillingProvider.GET_SKU_DETAILS_ITEM_LIST, arrayList);
        }

        protected Bundle doInBackground(Void... voidArr) {
            Bundle bundle = null;
            if (this.billingService != null) {
                try {
                    bundle = this.billingService.getSkuDetails(GoogleInAppBillingProvider.BILLING_SERVICE_VERSION, GoogleInAppBillingProvider.this.packageName, GoogleInAppBillingProvider.ITEM_TYPE_INAPP, this.requestBundle);
                } catch (RemoteException e) {
                }
            }
            return bundle;
        }

        protected void onPostExecute(Bundle bundle) {
            Collection arrayList = new ArrayList();
            GoogleInAppBillingProvider.this.currentPurchasableItems.clear();
            if (bundle != null && bundle.containsKey(GoogleInAppBillingProvider.RESPONSE_GET_SKU_DETAILS_LIST)) {
                Iterator it = bundle.getStringArrayList(GoogleInAppBillingProvider.RESPONSE_GET_SKU_DETAILS_LIST).iterator();
                while (it.hasNext()) {
                    GetSkuDetailsResponseItem fromJson = GetSkuDetailsResponseItem.fromJson((String) it.next());
                    if (fromJson != null) {
                        PurchasableItemDetails toPurchasableItemDetails = GetSkuDetailsResponseItem.toPurchasableItemDetails(fromJson);
                        arrayList.add(toPurchasableItemDetails);
                        GoogleInAppBillingProvider.this.currentPurchasableItems.put(toPurchasableItemDetails.getItemId(), fromJson);
                    }
                }
            }
            GoogleInAppBillingProvider.this.notifyPurchasableItemsResult(arrayList);
            new ProcessPurchasedItemsTask().execute(new Void[GoogleInAppBillingProvider.BILLING_RESPONSE_RESULT_OK]);
        }
    }

    static class Logger {
        private final String tag;

        public Logger(Class cls) {
            this.tag = cls.toString();
        }

        void assertOnServiceThread(String str) {
            if (!ContextService.onServiceThread()) {
                severe(this.tag + ": Must be on the service thread: " + str, new Object[GoogleInAppBillingProvider.BILLING_RESPONSE_RESULT_OK]);
            }
        }

        void dev(String str, Object... objArr) {
        }

        void error(String str, Object... objArr) {
        }

        void severe(String str, Object... objArr) {
        }

        void warning(String str, Object... objArr) {
        }
    }

    private class ProcessPurchasedItemsTask extends AsyncTask<Void, Void, Bundle> {
        private final IInAppBillingService billingService;

        /* renamed from: com.nianticlabs.nia.iap.GoogleInAppBillingProvider.ProcessPurchasedItemsTask.1 */
        class C07671 implements Runnable {
            final /* synthetic */ Bundle val$result;

            C07671(Bundle bundle) {
                this.val$result = bundle;
            }

            public void run() {
                ArrayList stringArrayList = this.val$result.getStringArrayList(GoogleInAppBillingProvider.RESPONSE_INAPP_PURCHASE_DATA_LIST);
                ArrayList stringArrayList2 = this.val$result.getStringArrayList(GoogleInAppBillingProvider.RESPONSE_INAPP_SIGNATURE_LIST);
                for (int i = GoogleInAppBillingProvider.BILLING_RESPONSE_RESULT_OK; i < stringArrayList.size(); i += GoogleInAppBillingProvider.BILLING_RESPONSE_RESULT_USER_CANCELED) {
                    GoogleInAppBillingProvider.this.transactionsInProgress = GoogleInAppBillingProvider.this.transactionsInProgress + GoogleInAppBillingProvider.BILLING_RESPONSE_RESULT_USER_CANCELED;
                    GoogleInAppBillingProvider.this.processPurchaseResult(-1, GoogleInAppBillingProvider.BILLING_RESPONSE_RESULT_OK, (String) stringArrayList.get(i), (String) stringArrayList2.get(i));
                }
                GoogleInAppBillingProvider.this.finalizeConnectionResult();
                GoogleInAppBillingProvider.this.maybeDisconnectBillingService();
            }
        }

        public ProcessPurchasedItemsTask() {
            this.billingService = GoogleInAppBillingProvider.this.billingService;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        protected android.os.Bundle doInBackground(java.lang.Void... r9) {
            /*
            r8 = this;
            r1 = 0;
            r0 = r1;
            r2 = r1;
            r3 = r1;
        L_0x0004:
            r4 = r8.billingService;	 Catch:{ RemoteException -> 0x005f }
            r5 = 3;
            r6 = com.nianticlabs.nia.iap.GoogleInAppBillingProvider.this;	 Catch:{ RemoteException -> 0x005f }
            r6 = r6.packageName;	 Catch:{ RemoteException -> 0x005f }
            r7 = "inapp";
            r5 = r4.getPurchases(r5, r6, r7, r0);	 Catch:{ RemoteException -> 0x005f }
            r6 = com.nianticlabs.nia.iap.GoogleInAppBillingProvider.getResponseCodeFromBundle(r5);	 Catch:{ RemoteException -> 0x005f }
            r0 = "INAPP_PURCHASE_DATA_LIST";
            r0 = r5.getStringArrayList(r0);	 Catch:{ RemoteException -> 0x005f }
            r4 = "INAPP_DATA_SIGNATURE_LIST";
            r4 = r5.getStringArrayList(r4);	 Catch:{ RemoteException -> 0x005f }
            r7 = 5;
            if (r6 != r7) goto L_0x0029;
        L_0x0026:
            if (r2 != 0) goto L_0x0061;
        L_0x0028:
            return r1;
        L_0x0029:
            if (r6 != 0) goto L_0x0026;
        L_0x002b:
            r6 = "INAPP_PURCHASE_DATA_LIST";
            r6 = r5.containsKey(r6);	 Catch:{ RemoteException -> 0x005f }
            if (r6 == 0) goto L_0x0026;
        L_0x0033:
            r6 = "INAPP_DATA_SIGNATURE_LIST";
            r6 = r5.containsKey(r6);	 Catch:{ RemoteException -> 0x005f }
            if (r6 == 0) goto L_0x0026;
        L_0x003b:
            r6 = r0.size();	 Catch:{ RemoteException -> 0x005f }
            r7 = r4.size();	 Catch:{ RemoteException -> 0x005f }
            if (r6 != r7) goto L_0x0026;
        L_0x0045:
            if (r2 != 0) goto L_0x0058;
        L_0x0047:
            r2 = r0;
            r3 = r4;
        L_0x0049:
            r0 = "INAPP_CONTINUATION_TOKEN";
            r0 = r5.getString(r0);	 Catch:{ RemoteException -> 0x005f }
            if (r0 == 0) goto L_0x0026;
        L_0x0051:
            r4 = r0.length();	 Catch:{ RemoteException -> 0x005f }
            if (r4 != 0) goto L_0x0004;
        L_0x0057:
            goto L_0x0026;
        L_0x0058:
            r2.addAll(r0);	 Catch:{ RemoteException -> 0x005f }
            r3.addAll(r4);	 Catch:{ RemoteException -> 0x005f }
            goto L_0x0049;
        L_0x005f:
            r0 = move-exception;
            goto L_0x0026;
        L_0x0061:
            r1 = new android.os.Bundle;
            r1.<init>();
            r0 = "INAPP_PURCHASE_DATA_LIST";
            r1.putStringArrayList(r0, r2);
            r0 = "INAPP_DATA_SIGNATURE_LIST";
            r1.putStringArrayList(r0, r3);
            goto L_0x0028;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.nianticlabs.nia.iap.GoogleInAppBillingProvider.ProcessPurchasedItemsTask.doInBackground(java.lang.Void[]):android.os.Bundle");
        }

        protected void onPostExecute(Bundle bundle) {
            if (bundle != null) {
                ContextService.runOnServiceHandler(new C07671(bundle));
                return;
            }
            GoogleInAppBillingProvider.this.finalizeConnectionResult();
            GoogleInAppBillingProvider.this.maybeDisconnectBillingService();
        }
    }

    static {
        instance = null;
        log = new Logger(GoogleInAppBillingProvider.class);
    }

    public GoogleInAppBillingProvider(Context context) {
        this.serviceConnection = null;
        this.billingService = null;
        this.purchaseSupported = ENABLE_VERBOSE_LOGS;
        this.transactionsInProgress = BILLING_RESPONSE_RESULT_OK;
        this.connectionInProgress = ENABLE_VERBOSE_LOGS;
        this.clientConnected = ENABLE_VERBOSE_LOGS;
        this.itemBeingPurchased = null;
        String packageName = context.getPackageName();
        if (packageName.startsWith(PACKAGE_NAME_BASE)) {
            this.packageName = packageName;
        } else {
            this.packageName = "ERROR";
        }
        this.context = context;
        this.currentPurchasableItems = new HashMap();
        instance = new WeakReference(this);
        connectToBillingService();
    }

    private void connectToBillingService() {
        if (!this.connectionInProgress) {
            if (this.billingService != null) {
                finalizeConnectionResult();
                return;
            }
            this.connectionInProgress = true;
            this.serviceConnection = new C07641();
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            intent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_STORE_PACKAGE);
            if (this.context.getPackageManager().queryIntentServices(intent, BILLING_RESPONSE_RESULT_OK).isEmpty()) {
                finalizeConnectionResult();
            }
            this.context.bindService(intent, this.serviceConnection, BILLING_RESPONSE_RESULT_USER_CANCELED);
        }
    }

    private void finalizeConnectionResult() {
        boolean z = ENABLE_VERBOSE_LOGS;
        this.connectionInProgress = ENABLE_VERBOSE_LOGS;
        if (this.delegate != null) {
            Delegate delegate = this.delegate;
            if (this.billingService != null) {
                z = true;
            }
            delegate.onConnectionStateChanged(z);
        }
    }

    private void finalizePurchaseResult(PurchaseResult purchaseResult) {
        this.transactionsInProgress--;
        maybeDisconnectBillingService();
        if (this.delegate != null) {
            this.delegate.purchaseResult(purchaseResult);
        }
    }

    public static WeakReference<GoogleInAppBillingProvider> getInstance() {
        return instance;
    }

    private static int getResponseCodeFromBundle(Bundle bundle) {
        return getResponseCodeFromObject(bundle.get(RESPONSE_CODE));
    }

    private static int getResponseCodeFromIntent(Intent intent) {
        return getResponseCodeFromObject(intent.getExtras().get(RESPONSE_CODE));
    }

    private static int getResponseCodeFromObject(Object obj) {
        return obj == null ? BILLING_RESPONSE_RESULT_OK : obj instanceof Integer ? ((Integer) obj).intValue() : obj instanceof Long ? (int) ((Long) obj).longValue() : BILLING_RESPONSE_RESULT_ERROR;
    }

    private boolean handlePurchaseErrorResult(int i) {
        switch (i) {
            case BILLING_RESPONSE_RESULT_OK /*0*/:
                return ENABLE_VERBOSE_LOGS;
            case BILLING_RESPONSE_RESULT_USER_CANCELED /*1*/:
                finalizePurchaseResult(PurchaseResult.USER_CANCELLED);
                break;
            case BILLING_SERVICE_VERSION /*3*/:
                finalizePurchaseResult(PurchaseResult.BILLING_UNAVAILABLE);
                break;
            case BILLING_RESPONSE_RESULT_ITEM_UNAVAILABLE /*4*/:
                finalizePurchaseResult(PurchaseResult.SKU_NOT_AVAILABLE);
                break;
            case BILLING_RESPONSE_RESULT_ITEM_ALREADY_OWNED /*7*/:
                new ProcessPurchasedItemsTask().execute(new Void[BILLING_RESPONSE_RESULT_OK]);
                finalizePurchaseResult(PurchaseResult.FAILURE);
                break;
            default:
                finalizePurchaseResult(PurchaseResult.FAILURE);
                break;
        }
        return true;
    }

    private void launchPurchaseActivity(PendingIntent pendingIntent) {
        this.pendingIntent = pendingIntent;
        ContextService.runOnUiThread(new C07652());
    }

    private void maybeDisconnectBillingService() {
        if (this.transactionsInProgress <= 0 && !this.connectionInProgress && !this.clientConnected) {
            if (this.serviceConnection != null) {
                this.context.unbindService(this.serviceConnection);
            }
            this.serviceConnection = null;
            this.billingService = null;
            this.transactionsInProgress = BILLING_RESPONSE_RESULT_OK;
        }
    }

    private void notifyPurchasableItemsResult(Collection<PurchasableItemDetails> collection) {
        if (this.delegate != null) {
            this.delegate.purchasableItemsResult(collection);
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void processPurchaseResult(int r7, int r8, java.lang.String r9, java.lang.String r10) {
        /*
        r6 = this;
        r2 = 0;
        r3 = 1000; // 0x3e8 float:1.401E-42 double:4.94E-321;
        r0 = r6.itemBeingPurchased;
        r6.itemBeingPurchased = r2;
        r1 = r6.billingService;
        if (r1 != 0) goto L_0x000c;
    L_0x000b:
        return;
    L_0x000c:
        if (r8 == r3) goto L_0x0014;
    L_0x000e:
        r1 = r6.handlePurchaseErrorResult(r8);
        if (r1 != 0) goto L_0x000b;
    L_0x0014:
        if (r7 != 0) goto L_0x001c;
    L_0x0016:
        r0 = com.nianticlabs.nia.iap.PurchaseResult.USER_CANCELLED;
        r6.finalizePurchaseResult(r0);
        goto L_0x000b;
    L_0x001c:
        r1 = -1;
        if (r7 == r1) goto L_0x0025;
    L_0x001f:
        r0 = com.nianticlabs.nia.iap.PurchaseResult.FAILURE;
        r6.finalizePurchaseResult(r0);
        goto L_0x000b;
    L_0x0025:
        if (r8 == r3) goto L_0x002b;
    L_0x0027:
        if (r9 == 0) goto L_0x002b;
    L_0x0029:
        if (r10 != 0) goto L_0x0031;
    L_0x002b:
        r0 = com.nianticlabs.nia.iap.PurchaseResult.FAILURE;
        r6.finalizePurchaseResult(r0);
        goto L_0x000b;
    L_0x0031:
        r1 = "UNKNOWN";
        r3 = 0;
        if (r0 == 0) goto L_0x0063;
    L_0x0036:
        r4 = r6.currentPurchasableItems;
        r0 = r4.get(r0);
        r0 = (com.nianticlabs.nia.iap.GetSkuDetailsResponseItem) r0;
        if (r0 == 0) goto L_0x0063;
    L_0x0040:
        r2 = r0.getProductId();
        r1 = r0.getCurrencyCode();
        r0 = r0.getPriceE6();
        r5 = r2;
        r2 = r0;
        r0 = r5;
    L_0x004f:
        if (r0 != 0) goto L_0x005d;
    L_0x0051:
        r3 = com.nianticlabs.nia.iap.GoogleInAppPurchaseData.fromJson(r9);
        if (r3 == 0) goto L_0x005b;
    L_0x0057:
        r0 = r3.getProductId();
    L_0x005b:
        if (r0 != 0) goto L_0x005d;
    L_0x005d:
        r0 = r6.delegate;
        r0.ProcessReceipt(r9, r10, r1, r2);
        goto L_0x000b;
    L_0x0063:
        r0 = r2;
        r2 = r3;
        goto L_0x004f;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.nianticlabs.nia.iap.GoogleInAppBillingProvider.processPurchaseResult(int, int, java.lang.String, java.lang.String):void");
    }

    public void forwardedOnActivityResult(int i, Intent intent) {
        int responseCodeFromIntent;
        String stringExtra;
        String str = null;
        if (intent != null) {
            responseCodeFromIntent = getResponseCodeFromIntent(intent);
            stringExtra = intent.getStringExtra(RESPONSE_INAPP_PURCHASE_DATA);
            str = intent.getStringExtra(RESPONSE_INAPP_SIGNATURE);
        } else {
            responseCodeFromIntent = BILLING_RESPONSE_RESULT_NOT_FOUND;
            stringExtra = null;
        }
        ContextService.runOnServiceHandler(new C07663(i, responseCodeFromIntent, stringExtra, str));
    }

    public void getPurchasableItems(ArrayList<String> arrayList) {
        if (isBillingAvailable()) {
            new GetSkuDetailsTask(arrayList).execute(new Void[BILLING_RESPONSE_RESULT_OK]);
        } else {
            notifyPurchasableItemsResult(Collections.emptyList());
        }
    }

    public boolean isBillingAvailable() {
        return (this.billingService == null || !this.purchaseSupported) ? ENABLE_VERBOSE_LOGS : true;
    }

    public boolean isTransactionInProgress() {
        return this.transactionsInProgress > 0 ? true : ENABLE_VERBOSE_LOGS;
    }

    public void onPause() {
        this.clientConnected = ENABLE_VERBOSE_LOGS;
        maybeDisconnectBillingService();
    }

    public void onProcessedGoogleBillingTransaction(boolean z, String str) {
        if (!z) {
            finalizePurchaseResult(PurchaseResult.FAILURE);
        } else if (this.billingService == null) {
            finalizePurchaseResult(PurchaseResult.FAILURE);
        } else if (str == null) {
            finalizePurchaseResult(PurchaseResult.FAILURE);
        } else {
            new ConsumeItemTask(str).execute(new Void[BILLING_RESPONSE_RESULT_OK]);
        }
    }

    public void onResume() {
        this.clientConnected = true;
        connectToBillingService();
    }

    public void purchaseItem(String str, String str2) {
        this.transactionsInProgress += BILLING_RESPONSE_RESULT_USER_CANCELED;
        if (!isBillingAvailable()) {
            finalizePurchaseResult(PurchaseResult.BILLING_UNAVAILABLE);
        } else if (this.currentPurchasableItems.keySet().contains(str)) {
            try {
                Bundle buyIntent = this.billingService.getBuyIntent(BILLING_SERVICE_VERSION, this.packageName, str, ITEM_TYPE_INAPP, str2);
                PendingIntent pendingIntent = (PendingIntent) buyIntent.getParcelable(RESPONSE_BUY_INTENT);
                if (!handlePurchaseErrorResult(getResponseCodeFromBundle(buyIntent))) {
                    if (pendingIntent == null) {
                        finalizePurchaseResult(PurchaseResult.FAILURE);
                        return;
                    }
                    if (this.transactionsInProgress == BILLING_RESPONSE_RESULT_USER_CANCELED) {
                        this.itemBeingPurchased = str;
                    } else {
                        this.itemBeingPurchased = null;
                    }
                    launchPurchaseActivity(pendingIntent);
                }
            } catch (RemoteException e) {
                finalizePurchaseResult(PurchaseResult.FAILURE);
            }
        } else {
            finalizePurchaseResult(PurchaseResult.SKU_NOT_AVAILABLE);
        }
    }

    public void setDelegate(Delegate delegate) {
        this.delegate = delegate;
    }

    public void startBuyIntent(Activity activity) {
        try {
            activity.startIntentSenderForResult(this.pendingIntent.getIntentSender(), PurchaseActivity.REQUEST_PURCHASE_RESULT, new Intent(), BILLING_RESPONSE_RESULT_OK, BILLING_RESPONSE_RESULT_OK, BILLING_RESPONSE_RESULT_OK);
        } catch (SendIntentException e) {
            this.itemBeingPurchased = null;
            this.pendingIntent = null;
            finalizePurchaseResult(PurchaseResult.FAILURE);
        }
    }
}
