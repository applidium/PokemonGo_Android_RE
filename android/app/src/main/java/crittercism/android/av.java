package crittercism.android;

import android.app.Activity;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import crittercism.android.bj.C1028a;
import crittercism.android.bl.C1029a;
import crittercism.android.ce.C1062a;

public final class av implements ActivityLifecycleCallbacks {
    private int f325a;
    private boolean f326b;
    private boolean f327c;
    private boolean f328d;
    private Context f329e;
    private az f330f;
    private bd f331g;

    public av(Context context, az azVar) {
        this.f325a = 0;
        this.f326b = false;
        this.f327c = false;
        this.f328d = false;
        this.f329e = context;
        this.f330f = azVar;
        this.f331g = new bd(context, azVar);
    }

    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    public final void onActivityDestroyed(Activity activity) {
    }

    public final void onActivityPaused(Activity activity) {
        if (activity != null) {
            try {
                if (this.f327c) {
                    activity.unregisterReceiver(this.f331g);
                    this.f327c = false;
                }
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                dx.m752a(th);
            }
        }
    }

    public final void onActivityResumed(Activity activity) {
        if (activity != null) {
            try {
                if (this.f326b) {
                    dx.m753b();
                    this.f326b = false;
                } else if (this.f325a == 0) {
                    this.f330f.m389a(new bl(C1029a.FOREGROUND));
                    bg.m478f();
                    if (!this.f328d) {
                        this.f328d = true;
                        C1018b a = new C1068d(this.f329e).m692a();
                        if (a != C1018b.UNKNOWN) {
                            if (a == C1018b.NOT_CONNECTED) {
                                this.f330f.m389a(new ce(C1062a.INTERNET_DOWN));
                            } else {
                                this.f330f.m389a(new ce(C1062a.INTERNET_UP));
                            }
                        }
                    }
                } else {
                    this.f330f.m389a(new bj(C1028a.ACTIVATED, activity.getClass().getName()));
                }
                this.f325a++;
                IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
                intentFilter.addAction("android.net.wifi.WIFI_STATE_CHANGED");
                activity.registerReceiver(this.f331g, intentFilter);
                this.f327c = true;
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                dx.m752a(th);
            }
        }
    }

    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    public final void onActivityStarted(Activity activity) {
    }

    public final void onActivityStopped(Activity activity) {
        if (activity != null) {
            try {
                this.f325a--;
                if (activity.isChangingConfigurations()) {
                    dx.m753b();
                    this.f326b = true;
                } else if (this.f325a == 0) {
                    this.f330f.m389a(new bl(C1029a.BACKGROUND));
                    bg.m470a(this.f330f);
                } else {
                    this.f330f.m389a(new bj(C1028a.DEACTIVATED, activity.getClass().getName()));
                }
            } catch (ThreadDeath e) {
                throw e;
            } catch (Throwable th) {
                dx.m752a(th);
            }
        }
    }
}
