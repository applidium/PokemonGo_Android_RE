package com.google.android.gms.location.places.internal;

import android.content.Context;
import android.net.Uri;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.internal.PlaceImpl.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import spacemadness.com.lunarconsole.BuildConfig;

public class zzs extends zzu implements Place {
    private final String zzaGt;
    private boolean zzaHu;
    private final zzp zzaHx;

    public zzs(DataHolder dataHolder, int i, Context context) {
        super(dataHolder, i);
        this.zzaHx = context != null ? zzp.zzaF(context) : null;
        this.zzaHu = zzh("place_is_logging_enabled", false);
        this.zzaGt = zzF("place_id", BuildConfig.FLAVOR);
    }

    private void zzdz(String str) {
        if (this.zzaHu && this.zzaHx != null) {
            this.zzaHx.zzE(this.zzaGt, str);
        }
    }

    public /* synthetic */ Object freeze() {
        return zzxm();
    }

    public CharSequence getAddress() {
        zzdz("getAddress");
        return zzF("place_address", BuildConfig.FLAVOR);
    }

    public String getId() {
        zzdz("getId");
        return this.zzaGt;
    }

    public LatLng getLatLng() {
        zzdz("getLatLng");
        return (LatLng) zza("place_lat_lng", (Creator) LatLng.CREATOR);
    }

    public Locale getLocale() {
        zzdz("getLocale");
        Object zzF = zzF("place_locale", BuildConfig.FLAVOR);
        return !TextUtils.isEmpty(zzF) ? new Locale(zzF) : Locale.getDefault();
    }

    public CharSequence getName() {
        zzdz("getName");
        return zzF("place_name", BuildConfig.FLAVOR);
    }

    public CharSequence getPhoneNumber() {
        zzdz("getPhoneNumber");
        return zzF("place_phone_number", BuildConfig.FLAVOR);
    }

    public List<Integer> getPlaceTypes() {
        zzdz("getPlaceTypes");
        return zza("place_types", Collections.emptyList());
    }

    public int getPriceLevel() {
        zzdz("getPriceLevel");
        return zzz("place_price_level", -1);
    }

    public float getRating() {
        zzdz("getRating");
        return zzb("place_rating", -1.0f);
    }

    public LatLngBounds getViewport() {
        zzdz("getViewport");
        return (LatLngBounds) zza("place_viewport", (Creator) LatLngBounds.CREATOR);
    }

    public Uri getWebsiteUri() {
        zzdz("getWebsiteUri");
        String zzF = zzF("place_website_uri", null);
        return zzF == null ? null : Uri.parse(zzF);
    }

    public float zzxe() {
        zzdz("getLevelNumber");
        return zzb("place_level_number", 0.0f);
    }

    public boolean zzxh() {
        zzdz("isPermanentlyClosed");
        return zzh("place_is_permanently_closed", false);
    }

    public Place zzxm() {
        zza zzaj = new zza().zzaj(this.zzaHu);
        this.zzaHu = false;
        Place zzxn = zzaj.zzdC(getAddress().toString()).zzu(zzb("place_attributions", Collections.emptyList())).zzdA(getId()).zzai(zzxh()).zza(getLatLng()).zzf(zzxe()).zzdB(getName().toString()).zzdD(getPhoneNumber().toString()).zzhs(getPriceLevel()).zzg(getRating()).zzt(getPlaceTypes()).zza(getViewport()).zzl(getWebsiteUri()).zzxn();
        zzxn.setLocale(getLocale());
        zzxn.zza(this.zzaHx);
        return zzxn;
    }
}
