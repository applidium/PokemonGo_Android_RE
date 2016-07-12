package com.google.android.gms.gcm;

import android.content.Context;
import android.os.Bundle;
import com.google.android.gms.iid.InstanceID;
import java.io.IOException;
import java.util.regex.Pattern;

public class GcmPubSub {
    private static GcmPubSub zzaCk;
    private static final Pattern zzaCm;
    private InstanceID zzaCl;

    static {
        zzaCm = Pattern.compile("/topics/[a-zA-Z0-9-_.~%]{1,900}");
    }

    private GcmPubSub(Context context) {
        this.zzaCl = InstanceID.getInstance(context);
    }

    public static GcmPubSub getInstance(Context context) {
        synchronized (GcmPubSub.class) {
            try {
            } finally {
                Object obj = GcmPubSub.class;
            }
        }
        if (zzaCk == null) {
            zzaCk = new GcmPubSub(context);
        }
        GcmPubSub gcmPubSub = zzaCk;
        return gcmPubSub;
    }

    public void subscribe(String str, String str2, Bundle bundle) throws IOException {
        if (str == null || str.isEmpty()) {
            throw new IllegalArgumentException("Invalid appInstanceToken: " + str);
        } else if (str2 == null || !zzaCm.matcher(str2).matches()) {
            throw new IllegalArgumentException("Invalid topic name: " + str2);
        } else {
            if (bundle == null) {
                bundle = new Bundle();
            }
            bundle.putString("gcm.topic", str2);
            this.zzaCl.getToken(str, str2, bundle);
        }
    }

    public void unsubscribe(String str, String str2) throws IOException {
        Bundle bundle = new Bundle();
        bundle.putString("gcm.topic", str2);
        this.zzaCl.zzb(str, str2, bundle);
    }
}
