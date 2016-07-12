package com.google.android.gms.ads;

import android.app.Activity;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.internal.zzfj;
import com.google.android.gms.internal.zzfk;

public class AdActivity extends Activity {
    public static final String CLASS_NAME = "com.google.android.gms.ads.AdActivity";
    public static final String SIMPLE_CLASS_NAME = "AdActivity";
    private zzfk zznK;

    private void zzaE() {
        if (this.zznK != null) {
            try {
                this.zznK.zzaE();
            } catch (Throwable e) {
                zzb.zzd("Could not forward setContentViewSet to ad overlay:", e);
            }
        }
    }

    public void onBackPressed() {
        boolean zzeF;
        try {
            zzeF = this.zznK != null ? this.zznK.zzeF() : true;
        } catch (Throwable e) {
            zzb.zzd("Could not forward onBackPressed to ad overlay:", e);
            zzeF = true;
        }
        if (zzeF) {
            super.onBackPressed();
        }
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.zznK = zzfj.zzb(this);
        if (this.zznK == null) {
            zzb.zzaH("Could not create ad overlay.");
            finish();
            return;
        }
        try {
            this.zznK.onCreate(bundle);
        } catch (Throwable e) {
            zzb.zzd("Could not forward onCreate to ad overlay:", e);
            finish();
        }
    }

    protected void onDestroy() {
        try {
            if (this.zznK != null) {
                this.zznK.onDestroy();
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onDestroy to ad overlay:", e);
        }
        super.onDestroy();
    }

    protected void onPause() {
        try {
            if (this.zznK != null) {
                this.zznK.onPause();
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onPause to ad overlay:", e);
            finish();
        }
        super.onPause();
    }

    protected void onRestart() {
        super.onRestart();
        try {
            if (this.zznK != null) {
                this.zznK.onRestart();
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onRestart to ad overlay:", e);
            finish();
        }
    }

    protected void onResume() {
        super.onResume();
        try {
            if (this.zznK != null) {
                this.zznK.onResume();
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onResume to ad overlay:", e);
            finish();
        }
    }

    protected void onSaveInstanceState(Bundle bundle) {
        try {
            if (this.zznK != null) {
                this.zznK.onSaveInstanceState(bundle);
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onSaveInstanceState to ad overlay:", e);
            finish();
        }
        super.onSaveInstanceState(bundle);
    }

    protected void onStart() {
        super.onStart();
        try {
            if (this.zznK != null) {
                this.zznK.onStart();
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onStart to ad overlay:", e);
            finish();
        }
    }

    protected void onStop() {
        try {
            if (this.zznK != null) {
                this.zznK.onStop();
            }
        } catch (Throwable e) {
            zzb.zzd("Could not forward onStop to ad overlay:", e);
            finish();
        }
        super.onStop();
    }

    public void setContentView(int i) {
        super.setContentView(i);
        zzaE();
    }

    public void setContentView(View view) {
        super.setContentView(view);
        zzaE();
    }

    public void setContentView(View view, LayoutParams layoutParams) {
        super.setContentView(view, layoutParams);
        zzaE();
    }
}
