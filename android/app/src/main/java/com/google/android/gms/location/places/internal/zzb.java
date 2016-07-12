package com.google.android.gms.location.places.internal;

import android.text.style.CharacterStyle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.location.places.AutocompletePrediction;
import com.google.android.gms.location.places.internal.AutocompletePredictionEntity.SubstringEntity;
import java.util.Collections;
import java.util.List;
import spacemadness.com.lunarconsole.BuildConfig;

public class zzb extends zzu implements AutocompletePrediction {
    public zzb(DataHolder dataHolder, int i) {
        super(dataHolder, i);
    }

    private String zzwX() {
        return zzF("ap_description", BuildConfig.FLAVOR);
    }

    private String zzwY() {
        return zzF("ap_primary_text", BuildConfig.FLAVOR);
    }

    private String zzwZ() {
        return zzF("ap_secondary_text", BuildConfig.FLAVOR);
    }

    private List<SubstringEntity> zzxa() {
        return zza("ap_matched_subscriptions", SubstringEntity.CREATOR, Collections.emptyList());
    }

    private List<SubstringEntity> zzxb() {
        return zza("ap_primary_text_matched", SubstringEntity.CREATOR, Collections.emptyList());
    }

    private List<SubstringEntity> zzxc() {
        return zza("ap_secondary_text_matched", SubstringEntity.CREATOR, Collections.emptyList());
    }

    public /* synthetic */ Object freeze() {
        return zzwV();
    }

    public String getDescription() {
        return zzwX();
    }

    public CharSequence getFullText(CharacterStyle characterStyle) {
        return zzc.zza(zzwX(), zzxa(), characterStyle);
    }

    public List<SubstringEntity> getMatchedSubstrings() {
        return zzxa();
    }

    public String getPlaceId() {
        return zzF("ap_place_id", null);
    }

    public List<Integer> getPlaceTypes() {
        return zza("ap_place_types", Collections.emptyList());
    }

    public CharSequence getPrimaryText(CharacterStyle characterStyle) {
        return zzc.zza(zzwY(), zzxb(), characterStyle);
    }

    public CharSequence getSecondaryText(CharacterStyle characterStyle) {
        return zzc.zza(zzwZ(), zzxc(), characterStyle);
    }

    public AutocompletePrediction zzwV() {
        return AutocompletePredictionEntity.zza(getPlaceId(), getPlaceTypes(), zzwW(), zzwX(), zzxa(), zzwY(), zzxb(), zzwZ(), zzxc());
    }

    public int zzwW() {
        return zzz("ap_personalization_type", 6);
    }
}
