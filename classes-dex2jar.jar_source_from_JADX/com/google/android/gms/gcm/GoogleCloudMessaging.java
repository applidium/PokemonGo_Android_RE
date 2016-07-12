package com.google.android.gms.gcm;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import com.google.android.gms.iid.InstanceID;
import com.google.android.gms.iid.zzc;
import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class GoogleCloudMessaging {
    public static final String ERROR_MAIN_THREAD = "MAIN_THREAD";
    public static final String ERROR_SERVICE_NOT_AVAILABLE = "SERVICE_NOT_AVAILABLE";
    public static final String INSTANCE_ID_SCOPE = "GCM";
    @Deprecated
    public static final String MESSAGE_TYPE_DELETED = "deleted_messages";
    @Deprecated
    public static final String MESSAGE_TYPE_MESSAGE = "gcm";
    @Deprecated
    public static final String MESSAGE_TYPE_SEND_ERROR = "send_error";
    @Deprecated
    public static final String MESSAGE_TYPE_SEND_EVENT = "send_event";
    public static int zzaCs;
    public static int zzaCt;
    public static int zzaCu;
    static GoogleCloudMessaging zzaCv;
    private static final AtomicInteger zzaCy;
    private Context context;
    final Messenger zzaCA;
    private PendingIntent zzaCw;
    private Map<String, Handler> zzaCx;
    private final BlockingQueue<Intent> zzaCz;

    /* renamed from: com.google.android.gms.gcm.GoogleCloudMessaging.1 */
    class C04491 extends Handler {
        final /* synthetic */ GoogleCloudMessaging zzaCB;

        C04491(GoogleCloudMessaging googleCloudMessaging, Looper looper) {
            this.zzaCB = googleCloudMessaging;
            super(looper);
        }

        public void handleMessage(Message message) {
            if (message == null || !(message.obj instanceof Intent)) {
                Log.w(GoogleCloudMessaging.INSTANCE_ID_SCOPE, "Dropping invalid message");
            }
            Intent intent = (Intent) message.obj;
            if ("com.google.android.c2dm.intent.REGISTRATION".equals(intent.getAction())) {
                this.zzaCB.zzaCz.add(intent);
            } else if (!this.zzaCB.zzl(intent)) {
                intent.setPackage(this.zzaCB.context.getPackageName());
                this.zzaCB.context.sendBroadcast(intent);
            }
        }
    }

    static {
        zzaCs = 5000000;
        zzaCt = 6500000;
        zzaCu = 7000000;
        zzaCy = new AtomicInteger(1);
    }

    public GoogleCloudMessaging() {
        this.zzaCz = new LinkedBlockingQueue();
        this.zzaCx = Collections.synchronizedMap(new HashMap());
        this.zzaCA = new Messenger(new C04491(this, Looper.getMainLooper()));
    }

    public static GoogleCloudMessaging getInstance(Context context) {
        GoogleCloudMessaging googleCloudMessaging;
        synchronized (GoogleCloudMessaging.class) {
            try {
            } finally {
                r1 = GoogleCloudMessaging.class;
            }
        }
        if (zzaCv == null) {
            Class cls;
            zzaCv = new GoogleCloudMessaging();
            googleCloudMessaging = zzaCv;
            cls = context.getApplicationContext();
            googleCloudMessaging.context = cls;
        }
        googleCloudMessaging = zzaCv;
        return googleCloudMessaging;
    }

    static String zza(Intent intent, String str) throws IOException {
        if (intent == null) {
            throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
        }
        String stringExtra = intent.getStringExtra(str);
        if (stringExtra != null) {
            return stringExtra;
        }
        stringExtra = intent.getStringExtra(GameServices.ERROR);
        if (stringExtra != null) {
            throw new IOException(stringExtra);
        }
        throw new IOException(ERROR_SERVICE_NOT_AVAILABLE);
    }

    private void zza(String str, String str2, long j, int i, Bundle bundle) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException("Missing 'to'");
        }
        Intent intent = new Intent("com.google.android.gcm.intent.SEND");
        if (bundle != null) {
            intent.putExtras(bundle);
        }
        zzm(intent);
        intent.setPackage(zzaA(this.context));
        intent.putExtra("google.to", str);
        intent.putExtra("google.message_id", str2);
        intent.putExtra("google.ttl", Long.toString(j));
        intent.putExtra("google.delay", Integer.toString(i));
        if (zzaA(this.context).contains(".gsf")) {
            Bundle bundle2 = new Bundle();
            for (String str3 : bundle.keySet()) {
                Object obj = bundle.get(str3);
                if (obj instanceof String) {
                    bundle2.putString("gcm." + str3, (String) obj);
                }
            }
            bundle2.putString("google.to", str);
            bundle2.putString("google.message_id", str2);
            InstanceID.getInstance(this.context).zzc(INSTANCE_ID_SCOPE, "upstream", bundle2);
            return;
        }
        this.context.sendOrderedBroadcast(intent, "com.google.android.gtalkservice.permission.GTALK_SERVICE");
    }

    public static String zzaA(Context context) {
        return zzc.zzaE(context);
    }

    public static int zzaB(Context context) {
        try {
            return context.getPackageManager().getPackageInfo(zzaA(context), 0).versionCode;
        } catch (NameNotFoundException e) {
            return -1;
        }
    }

    private boolean zzl(Intent intent) {
        Object stringExtra = intent.getStringExtra("In-Reply-To");
        if (stringExtra == null && intent.hasExtra(GameServices.ERROR)) {
            stringExtra = intent.getStringExtra("google.message_id");
        }
        if (stringExtra != null) {
            Handler handler = (Handler) this.zzaCx.remove(stringExtra);
            if (handler != null) {
                Message obtain = Message.obtain();
                obtain.obj = intent;
                return handler.sendMessage(obtain);
            }
        }
        return false;
    }

    private String zzvX() {
        return "google.rpc" + String.valueOf(zzaCy.getAndIncrement());
    }

    public void close() {
        zzaCv = null;
        zza.zzaCi = null;
        zzvY();
    }

    public String getMessageType(Intent intent) {
        if (!"com.google.android.c2dm.intent.RECEIVE".equals(intent.getAction())) {
            return null;
        }
        String stringExtra = intent.getStringExtra("message_type");
        return stringExtra == null ? MESSAGE_TYPE_MESSAGE : stringExtra;
    }

    @Deprecated
    public String register(String... strArr) throws IOException {
        String zzc;
        synchronized (this) {
            zzc = zzc(strArr);
            Bundle bundle = new Bundle();
            if (zzaA(this.context).contains(".gsf")) {
                bundle.putString("legacy.sender", zzc);
                zzc = InstanceID.getInstance(this.context).getToken(zzc, INSTANCE_ID_SCOPE, bundle);
            } else {
                bundle.putString("sender", zzc);
                zzc = zza(zzy(bundle), "registration_id");
            }
        }
        return zzc;
    }

    public void send(String str, String str2, long j, Bundle bundle) throws IOException {
        zza(str, str2, j, -1, bundle);
    }

    public void send(String str, String str2, Bundle bundle) throws IOException {
        send(str, str2, -1, bundle);
    }

    @Deprecated
    public void unregister() throws IOException {
        synchronized (this) {
            if (Looper.getMainLooper() == Looper.myLooper()) {
                throw new IOException(ERROR_MAIN_THREAD);
            }
            InstanceID.getInstance(this.context).deleteInstanceID();
        }
    }

    String zzc(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            throw new IllegalArgumentException("No senderIds");
        }
        StringBuilder stringBuilder = new StringBuilder(strArr[0]);
        for (int i = 1; i < strArr.length; i++) {
            stringBuilder.append(',').append(strArr[i]);
        }
        return stringBuilder.toString();
    }

    void zzm(Intent intent) {
        synchronized (this) {
            if (this.zzaCw == null) {
                Intent intent2 = new Intent();
                intent2.setPackage("com.google.example.invalidpackage");
                this.zzaCw = PendingIntent.getBroadcast(this.context, 0, intent2, 0);
            }
            intent.putExtra("app", this.zzaCw);
        }
    }

    void zzvY() {
        synchronized (this) {
            if (this.zzaCw != null) {
                this.zzaCw.cancel();
                this.zzaCw = null;
            }
        }
    }

    @Deprecated
    Intent zzy(Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException(ERROR_MAIN_THREAD);
        } else if (zzaB(this.context) < 0) {
            throw new IOException("Google Play Services missing");
        } else {
            if (bundle == null) {
                bundle = new Bundle();
            }
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.setPackage(zzaA(this.context));
            zzm(intent);
            intent.putExtra("google.message_id", zzvX());
            intent.putExtras(bundle);
            intent.putExtra("google.messenger", this.zzaCA);
            this.context.startService(intent);
            try {
                return (Intent) this.zzaCz.poll(30000, TimeUnit.MILLISECONDS);
            } catch (InterruptedException e) {
                throw new IOException(e.getMessage());
            }
        }
    }
}
