package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.voxelbusters.nativeplugins.defines.Keys;
import org.json.JSONObject;

@zzgr
public class zzfp extends Handler {
    private final zzfo zzCq;

    public zzfp(Context context) {
        this(new zzfq(context));
    }

    public zzfp(zzfo com_google_android_gms_internal_zzfo) {
        this.zzCq = com_google_android_gms_internal_zzfo;
    }

    private void zzc(JSONObject jSONObject) {
        try {
            this.zzCq.zza(jSONObject.getString("request_id"), jSONObject.getString("base_url"), jSONObject.getString(Keys.HTML));
        } catch (Exception e) {
        }
    }

    public void handleMessage(Message message) {
        try {
            Bundle data = message.getData();
            if (data != null) {
                JSONObject jSONObject = new JSONObject(data.getString(ModelColumns.DATA));
                if ("fetch_html".equals(jSONObject.getString("message_name"))) {
                    zzc(jSONObject);
                }
            }
        } catch (Exception e) {
        }
    }
}
