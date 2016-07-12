package com.google.android.gms.internal;

import android.app.AlertDialog.Builder;
import android.app.DownloadManager;
import android.app.DownloadManager.Request;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.net.Uri;
import android.os.Environment;
import android.text.TextUtils;
import android.webkit.URLUtil;
import com.google.android.gms.C0170R;
import com.google.android.gms.ads.internal.zzp;
import java.util.Map;

@zzgr
public class zzfe extends zzfh {
    private final Context mContext;
    private final Map<String, String> zzvS;

    /* renamed from: com.google.android.gms.internal.zzfe.1 */
    class C05431 implements OnClickListener {
        final /* synthetic */ String zzAs;
        final /* synthetic */ String zzAt;
        final /* synthetic */ zzfe zzAu;

        C05431(zzfe com_google_android_gms_internal_zzfe, String str, String str2) {
            this.zzAu = com_google_android_gms_internal_zzfe;
            this.zzAs = str;
            this.zzAt = str2;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            try {
                ((DownloadManager) this.zzAu.mContext.getSystemService("download")).enqueue(this.zzAu.zzg(this.zzAs, this.zzAt));
            } catch (IllegalStateException e) {
                this.zzAu.zzak("Could not store picture.");
            }
        }
    }

    /* renamed from: com.google.android.gms.internal.zzfe.2 */
    class C05442 implements OnClickListener {
        final /* synthetic */ zzfe zzAu;

        C05442(zzfe com_google_android_gms_internal_zzfe) {
            this.zzAu = com_google_android_gms_internal_zzfe;
        }

        public void onClick(DialogInterface dialogInterface, int i) {
            this.zzAu.zzak("User canceled the download.");
        }
    }

    public zzfe(zziz com_google_android_gms_internal_zziz, Map<String, String> map) {
        super(com_google_android_gms_internal_zziz, "storePicture");
        this.zzvS = map;
        this.mContext = com_google_android_gms_internal_zziz.zzgZ();
    }

    public void execute() {
        if (this.mContext == null) {
            zzak("Activity context is not available");
        } else if (zzp.zzbv().zzL(this.mContext).zzcY()) {
            String str = (String) this.zzvS.get("iurl");
            if (TextUtils.isEmpty(str)) {
                zzak("Image url cannot be empty.");
            } else if (URLUtil.isValidUrl(str)) {
                String zzaj = zzaj(str);
                if (zzp.zzbv().zzaB(zzaj)) {
                    Builder zzK = zzp.zzbv().zzK(this.mContext);
                    zzK.setTitle(zzp.zzby().zzd(C0170R.string.store_picture_title, "Save image"));
                    zzK.setMessage(zzp.zzby().zzd(C0170R.string.store_picture_message, "Allow Ad to store image in Picture gallery?"));
                    zzK.setPositiveButton(zzp.zzby().zzd(C0170R.string.accept, "Accept"), new C05431(this, str, zzaj));
                    zzK.setNegativeButton(zzp.zzby().zzd(C0170R.string.decline, "Decline"), new C05442(this));
                    zzK.create().show();
                    return;
                }
                zzak("Image type not recognized: " + zzaj);
            } else {
                zzak("Invalid image url: " + str);
            }
        } else {
            zzak("Feature is not supported by the device.");
        }
    }

    String zzaj(String str) {
        return Uri.parse(str).getLastPathSegment();
    }

    Request zzg(String str, String str2) {
        Request request = new Request(Uri.parse(str));
        request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, str2);
        zzp.zzbx().zza(request);
        return request;
    }
}
