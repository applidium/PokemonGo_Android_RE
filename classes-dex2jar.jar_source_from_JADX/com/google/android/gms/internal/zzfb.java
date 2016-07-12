package com.google.android.gms.internal;

import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.google.android.gms.C0170R;
import com.google.android.gms.ads.internal.zzp;
import com.voxelbusters.nativeplugins.defines.Keys;
import java.util.Map;
import spacemadness.com.lunarconsole.BuildConfig;

@zzgr
public class zzfb extends zzfh {
    private final Context mContext;
    private final Map<String, String> zzvS;
    private String zzzV;
    private long zzzW;
    private long zzzX;
    private String zzzY;
    private String zzzZ;

    /* renamed from: com.google.android.gms.internal.zzfb.1 */
    class C05401 implements OnClickListener {
        final /* synthetic */ zzfb zzAa;

        C05401(zzfb com_google_android_gms_internal_zzfb) {
            this.zzAa = com_google_android_gms_internal_zzfb;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            zzp.zzbv().zzb(this.zzAa.mContext, this.zzAa.createIntent());
        }
    }

    /* renamed from: com.google.android.gms.internal.zzfb.2 */
    class C05412 implements OnClickListener {
        final /* synthetic */ zzfb zzAa;

        C05412(zzfb com_google_android_gms_internal_zzfb) {
            this.zzAa = com_google_android_gms_internal_zzfb;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzAa.zzak("Operation denied by user.");
        }
    }

    public zzfb(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        super(com_google_android_gms_internal_zziz, "createCalendarEvent");
        this.zzvS = map;
        this.mContext = com_google_android_gms_internal_zziz.zzgZ();
        zzec();
    }

    private String zzah(String str) {
        return TextUtils.isEmpty((CharSequence) this.zzvS.get(str)) ? BuildConfig.FLAVOR : (String) this.zzvS.get(str);
    }

    private long zzai(String str) {
        String str2 = (String) this.zzvS.get(str);
        if (str2 == null) {
            return -1;
        }
        try {
            return Long.parseLong(str2);
        } catch (NumberFormatException e) {
            return -1;
        }
    }

    private void zzec() {
        this.zzzV = zzah("description");
        this.zzzY = zzah("summary");
        this.zzzW = zzai("start_ticks");
        this.zzzX = zzai("end_ticks");
        this.zzzZ = zzah("location");
    }

    Intent createIntent() {
        Intent data = new Intent("android.intent.action.EDIT").setData(Events.CONTENT_URI);
        data.putExtra(Keys.TITLE, this.zzzV);
        data.putExtra("eventLocation", this.zzzZ);
        data.putExtra("description", this.zzzY);
        if (this.zzzW > -1) {
            data.putExtra("beginTime", this.zzzW);
        }
        if (this.zzzX > -1) {
            data.putExtra("endTime", this.zzzX);
        }
        data.setFlags(268435456);
        return data;
    }

    public void execute() {
        if (this.mContext == null) {
            zzak("Activity context is not available.");
        } else if (zzp.zzbv().zzL(this.mContext).zzdb()) {
            Builder zzK = zzp.zzbv().zzK(this.mContext);
            zzK.setTitle(zzp.zzby().zzd(C0170R.string.create_calendar_title, "Create calendar event"));
            zzK.setMessage(zzp.zzby().zzd(C0170R.string.create_calendar_message, "Allow Ad to create a calendar event?"));
            zzK.setPositiveButton(zzp.zzby().zzd(C0170R.string.accept, "Accept"), new C05401(this));
            zzK.setNegativeButton(zzp.zzby().zzd(C0170R.string.decline, "Decline"), new C05412(this));
            zzK.create().show();
        } else {
            zzak("This feature is not available on the device.");
        }
    }
}
