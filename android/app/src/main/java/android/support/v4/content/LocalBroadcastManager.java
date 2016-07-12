package android.support.v4.content;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import com.google.android.gms.ads.AdSize;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Set;
import rx.android.BuildConfig;

public class LocalBroadcastManager {
    private static final boolean DEBUG = false;
    static final int MSG_EXEC_PENDING_BROADCASTS = 1;
    private static final String TAG = "LocalBroadcastManager";
    private static LocalBroadcastManager mInstance;
    private static final Object mLock;
    private final HashMap<String, ArrayList<ReceiverRecord>> mActions;
    private final Context mAppContext;
    private final Handler mHandler;
    private final ArrayList<BroadcastRecord> mPendingBroadcasts;
    private final HashMap<BroadcastReceiver, ArrayList<IntentFilter>> mReceivers;

    /* renamed from: android.support.v4.content.LocalBroadcastManager.1 */
    class C00351 extends Handler {
        C00351(Looper looper) {
            super(looper);
        }

        public void handleMessage(Message message) {
            switch (message.what) {
                case LocalBroadcastManager.MSG_EXEC_PENDING_BROADCASTS /*1*/:
                    LocalBroadcastManager.this.executePendingBroadcasts();
                default:
                    super.handleMessage(message);
            }
        }
    }

    private static class BroadcastRecord {
        final Intent intent;
        final ArrayList<ReceiverRecord> receivers;

        BroadcastRecord(Intent intent, ArrayList<ReceiverRecord> arrayList) {
            this.intent = intent;
            this.receivers = arrayList;
        }
    }

    private static class ReceiverRecord {
        boolean broadcasting;
        final IntentFilter filter;
        final BroadcastReceiver receiver;

        ReceiverRecord(IntentFilter intentFilter, BroadcastReceiver broadcastReceiver) {
            this.filter = intentFilter;
            this.receiver = broadcastReceiver;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder(AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS);
            stringBuilder.append("Receiver{");
            stringBuilder.append(this.receiver);
            stringBuilder.append(" filter=");
            stringBuilder.append(this.filter);
            stringBuilder.append("}");
            return stringBuilder.toString();
        }
    }

    static {
        mLock = new Object();
    }

    private LocalBroadcastManager(Context context) {
        this.mReceivers = new HashMap();
        this.mActions = new HashMap();
        this.mPendingBroadcasts = new ArrayList();
        this.mAppContext = context;
        this.mHandler = new C00351(context.getMainLooper());
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    private void executePendingBroadcasts() {
        /*
        r8 = this;
        r2 = 0;
    L_0x0001:
        r1 = r8.mReceivers;
        monitor-enter(r1);
        r0 = r8.mPendingBroadcasts;	 Catch:{ all -> 0x003f }
        r0 = r0.size();	 Catch:{ all -> 0x003f }
        if (r0 > 0) goto L_0x000e;
    L_0x000c:
        monitor-exit(r1);	 Catch:{ all -> 0x003f }
        return;
    L_0x000e:
        r4 = new android.support.v4.content.LocalBroadcastManager.BroadcastRecord[r0];	 Catch:{ all -> 0x003f }
        r0 = r8.mPendingBroadcasts;	 Catch:{ all -> 0x003f }
        r0.toArray(r4);	 Catch:{ all -> 0x003f }
        r0 = r8.mPendingBroadcasts;	 Catch:{ all -> 0x003f }
        r0.clear();	 Catch:{ all -> 0x003f }
        monitor-exit(r1);	 Catch:{ all -> 0x003f }
        r3 = r2;
    L_0x001c:
        r0 = r4.length;
        if (r3 >= r0) goto L_0x0001;
    L_0x001f:
        r5 = r4[r3];
        r1 = r2;
    L_0x0022:
        r0 = r5.receivers;
        r0 = r0.size();
        if (r1 >= r0) goto L_0x0042;
    L_0x002a:
        r0 = r5.receivers;
        r0 = r0.get(r1);
        r0 = (android.support.v4.content.LocalBroadcastManager.ReceiverRecord) r0;
        r0 = r0.receiver;
        r6 = r8.mAppContext;
        r7 = r5.intent;
        r0.onReceive(r6, r7);
        r0 = r1 + 1;
        r1 = r0;
        goto L_0x0022;
    L_0x003f:
        r0 = move-exception;
        monitor-exit(r1);	 Catch:{ all -> 0x003f }
        throw r0;
    L_0x0042:
        r0 = r3 + 1;
        r3 = r0;
        goto L_0x001c;
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.v4.content.LocalBroadcastManager.executePendingBroadcasts():void");
    }

    public static LocalBroadcastManager getInstance(Context context) {
        LocalBroadcastManager localBroadcastManager;
        synchronized (mLock) {
            if (mInstance == null) {
                mInstance = new LocalBroadcastManager(context.getApplicationContext());
            }
            localBroadcastManager = mInstance;
        }
        return localBroadcastManager;
    }

    public void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.mReceivers) {
            ReceiverRecord receiverRecord = new ReceiverRecord(intentFilter, broadcastReceiver);
            ArrayList arrayList = (ArrayList) this.mReceivers.get(broadcastReceiver);
            if (arrayList == null) {
                arrayList = new ArrayList(MSG_EXEC_PENDING_BROADCASTS);
                this.mReceivers.put(broadcastReceiver, arrayList);
            }
            arrayList.add(intentFilter);
            for (int i = 0; i < intentFilter.countActions(); i += MSG_EXEC_PENDING_BROADCASTS) {
                String action = intentFilter.getAction(i);
                arrayList = (ArrayList) this.mActions.get(action);
                if (arrayList == null) {
                    arrayList = new ArrayList(MSG_EXEC_PENDING_BROADCASTS);
                    this.mActions.put(action, arrayList);
                }
                arrayList.add(receiverRecord);
            }
        }
    }

    public boolean sendBroadcast(Intent intent) {
        synchronized (this.mReceivers) {
            String action = intent.getAction();
            String resolveTypeIfNeeded = intent.resolveTypeIfNeeded(this.mAppContext.getContentResolver());
            Uri data = intent.getData();
            String scheme = intent.getScheme();
            Set categories = intent.getCategories();
            Object obj = (intent.getFlags() & 8) != 0 ? MSG_EXEC_PENDING_BROADCASTS : null;
            if (obj != null) {
                Log.v(TAG, "Resolving type " + resolveTypeIfNeeded + " scheme " + scheme + " of intent " + intent);
            }
            ArrayList arrayList = (ArrayList) this.mActions.get(intent.getAction());
            if (arrayList != null) {
                if (obj != null) {
                    Log.v(TAG, "Action list: " + arrayList);
                }
                ArrayList arrayList2 = null;
                for (int i = 0; i < arrayList.size(); i += MSG_EXEC_PENDING_BROADCASTS) {
                    ArrayList arrayList3;
                    ReceiverRecord receiverRecord = (ReceiverRecord) arrayList.get(i);
                    if (obj != null) {
                        Log.v(TAG, "Matching against filter " + receiverRecord.filter);
                    }
                    if (receiverRecord.broadcasting) {
                        if (obj != null) {
                            Log.v(TAG, "  Filter's target already added");
                            arrayList3 = arrayList2;
                        }
                        arrayList3 = arrayList2;
                    } else {
                        int match = receiverRecord.filter.match(action, resolveTypeIfNeeded, scheme, data, categories, TAG);
                        if (match >= 0) {
                            if (obj != null) {
                                Log.v(TAG, "  Filter matched!  match=0x" + Integer.toHexString(match));
                            }
                            arrayList3 = arrayList2 == null ? new ArrayList() : arrayList2;
                            arrayList3.add(receiverRecord);
                            receiverRecord.broadcasting = true;
                        } else {
                            if (obj != null) {
                                String str;
                                switch (match) {
                                    case -4:
                                        str = "category";
                                        break;
                                    case -3:
                                        str = "action";
                                        break;
                                    case AdSize.AUTO_HEIGHT /*-2*/:
                                        str = ModelColumns.DATA;
                                        break;
                                    case BuildConfig.VERSION_CODE /*-1*/:
                                        str = Keys.TYPE;
                                        break;
                                    default:
                                        str = "unknown reason";
                                        break;
                                }
                                Log.v(TAG, "  Filter did not match: " + str);
                                arrayList3 = arrayList2;
                            }
                            arrayList3 = arrayList2;
                        }
                    }
                    arrayList2 = arrayList3;
                }
                if (arrayList2 != null) {
                    int i2 = 0;
                    while (true) {
                        if (i2 < arrayList2.size()) {
                            ((ReceiverRecord) arrayList2.get(i2)).broadcasting = DEBUG;
                            i2 += MSG_EXEC_PENDING_BROADCASTS;
                        } else {
                            this.mPendingBroadcasts.add(new BroadcastRecord(intent, arrayList2));
                            if (!this.mHandler.hasMessages(MSG_EXEC_PENDING_BROADCASTS)) {
                                this.mHandler.sendEmptyMessage(MSG_EXEC_PENDING_BROADCASTS);
                            }
                            return true;
                        }
                    }
                }
            }
            return DEBUG;
        }
    }

    public void sendBroadcastSync(Intent intent) {
        if (sendBroadcast(intent)) {
            executePendingBroadcasts();
        }
    }

    public void unregisterReceiver(BroadcastReceiver broadcastReceiver) {
        synchronized (this.mReceivers) {
            ArrayList arrayList = (ArrayList) this.mReceivers.remove(broadcastReceiver);
            if (arrayList == null) {
                return;
            }
            for (int i = 0; i < arrayList.size(); i += MSG_EXEC_PENDING_BROADCASTS) {
                IntentFilter intentFilter = (IntentFilter) arrayList.get(i);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2 += MSG_EXEC_PENDING_BROADCASTS) {
                    String action = intentFilter.getAction(i2);
                    ArrayList arrayList2 = (ArrayList) this.mActions.get(action);
                    if (arrayList2 != null) {
                        int i3 = 0;
                        while (i3 < arrayList2.size()) {
                            int i4;
                            if (((ReceiverRecord) arrayList2.get(i3)).receiver == broadcastReceiver) {
                                arrayList2.remove(i3);
                                i4 = i3 - 1;
                            } else {
                                i4 = i3;
                            }
                            i3 = i4 + MSG_EXEC_PENDING_BROADCASTS;
                        }
                        if (arrayList2.size() <= 0) {
                            this.mActions.remove(action);
                        }
                    }
                }
            }
        }
    }
}
