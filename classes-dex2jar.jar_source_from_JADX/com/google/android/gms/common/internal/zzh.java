package com.google.android.gms.common.internal;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.support.v4.app.Fragment;
import android.util.Log;

public class zzh implements OnClickListener {
    private final Activity mActivity;
    private final Intent mIntent;
    private final int zzaaY;
    private final Fragment zzafl;

    public zzh(Activity activity, Intent intent, int i) {
        this.mActivity = activity;
        this.zzafl = null;
        this.mIntent = intent;
        this.zzaaY = i;
    }

    public zzh(Fragment fragment, Intent intent, int i) {
        this.mActivity = null;
        this.zzafl = fragment;
        this.mIntent = intent;
        this.zzaaY = i;
    }

    public void onClick(DialogInterface dialogInterface, int i) {
        try {
            if (this.mIntent != null && this.zzafl != null) {
                this.zzafl.startActivityForResult(this.mIntent, this.zzaaY);
            } else if (this.mIntent != null) {
                this.mActivity.startActivityForResult(this.mIntent, this.zzaaY);
            }
            dialogInterface.dismiss();
        } catch (ActivityNotFoundException e) {
            Log.e("SettingsRedirect", "Can't redirect to app settings for Google Play services");
        }
    }
}
