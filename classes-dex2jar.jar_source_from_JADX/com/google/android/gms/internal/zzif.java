package com.google.android.gms.internal;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import android.view.MotionEvent;
import com.google.android.gms.ads.internal.util.client.zzb;
import com.google.android.gms.ads.internal.zzp;
import com.voxelbusters.nativeplugins.defines.Keys.Mime;
import java.util.Map;

@zzgr
public class zzif {
    private final Context mContext;
    private int mState;
    private final float zzAC;
    private String zzII;
    private float zzIJ;
    private float zzIK;
    private float zzIL;

    /* renamed from: com.google.android.gms.internal.zzif.1 */
    class C05841 implements OnClickListener {
        final /* synthetic */ String zzIM;
        final /* synthetic */ zzif zzIN;

        C05841(zzif com_google_android_gms_internal_zzif, String str) {
            this.zzIN = com_google_android_gms_internal_zzif;
            this.zzIM = str;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            zzp.zzbv().zzb(this.zzIN.mContext, Intent.createChooser(new Intent("android.intent.action.SEND").setType(Mime.PLAIN_TEXT).putExtra("android.intent.extra.TEXT", this.zzIM), "Share via"));
        }
    }

    /* renamed from: com.google.android.gms.internal.zzif.2 */
    class C05852 implements OnClickListener {
        final /* synthetic */ zzif zzIN;

        C05852(zzif com_google_android_gms_internal_zzif) {
            this.zzIN = com_google_android_gms_internal_zzif;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
        }
    }

    public zzif(Context context) {
        this.mState = 0;
        this.mContext = context;
        this.zzAC = context.getResources().getDisplayMetrics().density;
    }

    public zzif(Context context, String str) {
        this(context);
        this.zzII = str;
    }

    private void showDialog() {
        if (this.mContext instanceof Activity) {
            Object zzaD = zzaD(this.zzII);
            Builder builder = new Builder(this.mContext);
            builder.setMessage(zzaD);
            builder.setTitle("Ad Information");
            builder.setPositiveButton("Share", new C05841(this, zzaD));
            builder.setNegativeButton("Close", new C05852(this));
            builder.create().show();
            return;
        }
        zzb.zzaG("Can not create dialog without Activity Context");
    }

    static String zzaD(String str) {
        if (TextUtils.isEmpty(str)) {
            return "No debug information";
        }
        Uri build = new Uri.Builder().encodedQuery(str.replaceAll("\\+", "%20")).build();
        StringBuilder stringBuilder = new StringBuilder();
        Map zze = zzp.zzbv().zze(build);
        for (String str2 : zze.keySet()) {
            stringBuilder.append(str2).append(" = ").append((String) zze.get(str2)).append("\n\n");
        }
        Object trim = stringBuilder.toString().trim();
        return TextUtils.isEmpty(trim) ? "No debug information" : trim;
    }

    void zza(int i, float f, float f2) {
        if (i == 0) {
            this.mState = 0;
            this.zzIJ = f;
            this.zzIK = f2;
            this.zzIL = f2;
        } else if (this.mState == -1) {
        } else {
            if (i == 2) {
                if (f2 > this.zzIK) {
                    this.zzIK = f2;
                } else if (f2 < this.zzIL) {
                    this.zzIL = f2;
                }
                if (this.zzIK - this.zzIL > 30.0f * this.zzAC) {
                    this.mState = -1;
                    return;
                }
                if (this.mState == 0 || this.mState == 2) {
                    if (f - this.zzIJ >= 50.0f * this.zzAC) {
                        this.zzIJ = f;
                        this.mState++;
                    }
                } else if ((this.mState == 1 || this.mState == 3) && f - this.zzIJ <= -50.0f * this.zzAC) {
                    this.zzIJ = f;
                    this.mState++;
                }
                if (this.mState == 1 || this.mState == 3) {
                    if (f > this.zzIJ) {
                        this.zzIJ = f;
                    }
                } else if (this.mState == 2 && f < this.zzIJ) {
                    this.zzIJ = f;
                }
            } else if (i == 1 && this.mState == 4) {
                showDialog();
            }
        }
    }

    public void zzaC(String str) {
        this.zzII = str;
    }

    public void zze(MotionEvent motionEvent) {
        int historySize = motionEvent.getHistorySize();
        for (int i = 0; i < historySize; i++) {
            zza(motionEvent.getActionMasked(), motionEvent.getHistoricalX(0, i), motionEvent.getHistoricalY(0, i));
        }
        zza(motionEvent.getActionMasked(), motionEvent.getX(), motionEvent.getY());
    }
}
