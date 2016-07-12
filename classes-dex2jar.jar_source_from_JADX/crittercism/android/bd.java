package crittercism.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.os.EnvironmentCompat;
import crittercism.android.ce.C1062a;

public final class bd extends BroadcastReceiver {
    private az f406a;
    private String f407b;
    private C1018b f408c;

    public bd(Context context, az azVar) {
        this.f406a = azVar;
        C1068d c1068d = new C1068d(context);
        this.f407b = c1068d.m693b();
        this.f408c = c1068d.m692a();
    }

    public final void onReceive(Context context, Intent intent) {
        new StringBuilder("CrittercismReceiver: INTENT ACTION = ").append(intent.getAction());
        dx.m753b();
        C1068d c1068d = new C1068d(context);
        C1018b a = c1068d.m692a();
        if (!(this.f408c == a || a == C1018b.UNKNOWN)) {
            if (a == C1018b.NOT_CONNECTED) {
                this.f406a.m389a(new ce(C1062a.INTERNET_DOWN));
            } else if (this.f408c == C1018b.NOT_CONNECTED || this.f408c == C1018b.UNKNOWN) {
                this.f406a.m389a(new ce(C1062a.INTERNET_UP));
            }
            this.f408c = a;
        }
        String b = c1068d.m693b();
        if (!b.equals(this.f407b)) {
            if (this.f407b.equals(EnvironmentCompat.MEDIA_UNKNOWN) || this.f407b.equals("disconnected")) {
                if (!(b.equals(EnvironmentCompat.MEDIA_UNKNOWN) || b.equals("disconnected"))) {
                    this.f406a.m389a(new ce(C1062a.CONN_TYPE_GAINED, b));
                }
            } else if (b.equals("disconnected")) {
                this.f406a.m389a(new ce(C1062a.CONN_TYPE_LOST, this.f407b));
            } else if (!b.equals(EnvironmentCompat.MEDIA_UNKNOWN)) {
                this.f406a.m389a(new ce(C1062a.CONN_TYPE_SWITCHED, this.f407b, b));
            }
            this.f407b = b;
        }
    }
}
