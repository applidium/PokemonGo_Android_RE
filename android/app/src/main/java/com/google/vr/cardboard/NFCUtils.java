package com.google.vr.cardboard;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.nfc.NfcAdapter;
import android.nfc.Tag;
import android.util.Log;
import com.voxelbusters.nativeplugins.defines.Keys.Scheme;

public class NFCUtils {
    private static final String TAG;
    Context context;
    NfcAdapter nfcAdapter;
    BroadcastReceiver nfcBroadcastReceiver;
    IntentFilter[] nfcIntentFilters;

    /* renamed from: com.google.vr.cardboard.NFCUtils.1 */
    class C07371 extends BroadcastReceiver {
        C07371() {
        }

        public void onReceive(Context context, Intent intent) {
            Log.i(NFCUtils.TAG, "Got an NFC tag!");
            NFCUtils.this.onNFCTagDetected((Tag) intent.getParcelableExtra("android.nfc.extra.TAG"));
        }
    }

    static {
        TAG = NFCUtils.class.getSimpleName();
    }

    private IntentFilter createNfcIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.nfc.action.NDEF_DISCOVERED");
        intentFilter.addAction("android.nfc.action.TECH_DISCOVERED");
        intentFilter.addAction("android.nfc.action.TAG_DISCOVERED");
        return intentFilter;
    }

    protected boolean isNFCEnabled() {
        return this.nfcAdapter != null && this.nfcAdapter.isEnabled();
    }

    public void onCreate(Activity activity) {
        this.context = activity.getApplicationContext();
        this.nfcAdapter = NfcAdapter.getDefaultAdapter(this.context);
        this.nfcBroadcastReceiver = new C07371();
        createNfcIntentFilter().addDataScheme("cardboard");
        IntentFilter createNfcIntentFilter = createNfcIntentFilter();
        createNfcIntentFilter.addDataScheme(Scheme.HTTP);
        createNfcIntentFilter.addDataAuthority("goo.gl", null);
        IntentFilter createNfcIntentFilter2 = createNfcIntentFilter();
        createNfcIntentFilter2.addDataScheme(Scheme.HTTP);
        createNfcIntentFilter2.addDataAuthority("google.com", null);
        createNfcIntentFilter2.addDataPath("/cardboard/cfg.*", 2);
        this.nfcIntentFilters = new IntentFilter[]{r0, createNfcIntentFilter, createNfcIntentFilter2};
    }

    protected void onNFCTagDetected(Tag tag) {
    }

    public void onPause(Activity activity) {
        if (isNFCEnabled()) {
            this.nfcAdapter.disableForegroundDispatch(activity);
        }
        activity.unregisterReceiver(this.nfcBroadcastReceiver);
    }

    public void onResume(Activity activity) {
        activity.registerReceiver(this.nfcBroadcastReceiver, createNfcIntentFilter());
        Intent intent = new Intent("android.nfc.action.NDEF_DISCOVERED");
        intent.setPackage(activity.getPackageName());
        PendingIntent broadcast = PendingIntent.getBroadcast(this.context, 0, intent, 0);
        if (isNFCEnabled()) {
            this.nfcAdapter.enableForegroundDispatch(activity, broadcast, this.nfcIntentFilters, (String[][]) null);
        }
    }
}
