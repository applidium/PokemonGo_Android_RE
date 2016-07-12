package com.google.android.gms.common.api;

import android.app.Activity;
import com.google.android.gms.common.internal.zzx;

public abstract class ResolvingResultCallbacks<R extends Result> extends ResultCallbacks<R> {
    private final Activity mActivity;
    private final int zzaaY;

    protected ResolvingResultCallbacks(Activity activity, int i) {
        this.mActivity = (Activity) zzx.zzb((Object) activity, (Object) "Activity must not be null");
        this.zzaaY = i;
    }

    public abstract void onSuccess(R r);

    public abstract void onUnresolvableFailure(Status status);
}
