package com.google.android.gms.dynamic;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.dynamic.zzc.zza;

public final class zzb extends zza {
    private Fragment zzapz;

    private zzb(Fragment fragment) {
        this.zzapz = fragment;
    }

    public static zzb zza(Fragment fragment) {
        return fragment != null ? new zzb(fragment) : null;
    }

    public Bundle getArguments() {
        return this.zzapz.getArguments();
    }

    public int getId() {
        return this.zzapz.getId();
    }

    public boolean getRetainInstance() {
        return this.zzapz.getRetainInstance();
    }

    public String getTag() {
        return this.zzapz.getTag();
    }

    public int getTargetRequestCode() {
        return this.zzapz.getTargetRequestCode();
    }

    public boolean getUserVisibleHint() {
        return this.zzapz.getUserVisibleHint();
    }

    public zzd getView() {
        return zze.zzy(this.zzapz.getView());
    }

    public boolean isAdded() {
        return this.zzapz.isAdded();
    }

    public boolean isDetached() {
        return this.zzapz.isDetached();
    }

    public boolean isHidden() {
        return this.zzapz.isHidden();
    }

    public boolean isInLayout() {
        return this.zzapz.isInLayout();
    }

    public boolean isRemoving() {
        return this.zzapz.isRemoving();
    }

    public boolean isResumed() {
        return this.zzapz.isResumed();
    }

    public boolean isVisible() {
        return this.zzapz.isVisible();
    }

    public void setHasOptionsMenu(boolean z) {
        this.zzapz.setHasOptionsMenu(z);
    }

    public void setMenuVisibility(boolean z) {
        this.zzapz.setMenuVisibility(z);
    }

    public void setRetainInstance(boolean z) {
        this.zzapz.setRetainInstance(z);
    }

    public void setUserVisibleHint(boolean z) {
        this.zzapz.setUserVisibleHint(z);
    }

    public void startActivity(Intent intent) {
        this.zzapz.startActivity(intent);
    }

    public void startActivityForResult(Intent intent, int i) {
        this.zzapz.startActivityForResult(intent, i);
    }

    public void zzn(zzd com_google_android_gms_dynamic_zzd) {
        this.zzapz.registerForContextMenu((View) zze.zzp(com_google_android_gms_dynamic_zzd));
    }

    public void zzo(zzd com_google_android_gms_dynamic_zzd) {
        this.zzapz.unregisterForContextMenu((View) zze.zzp(com_google_android_gms_dynamic_zzd));
    }

    public zzd zzsa() {
        return zze.zzy(this.zzapz.getActivity());
    }

    public zzc zzsb() {
        return zza(this.zzapz.getParentFragment());
    }

    public zzd zzsc() {
        return zze.zzy(this.zzapz.getResources());
    }

    public zzc zzsd() {
        return zza(this.zzapz.getTargetFragment());
    }
}
