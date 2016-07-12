package com.google.android.gms.location.places.ui;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources.Theme;
import android.util.TypedValue;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.zzc;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.location.places.internal.PlaceImpl;
import com.google.android.gms.location.places.internal.zzp;
import com.google.android.gms.maps.model.LatLngBounds;

public class PlacePicker {
    public static final int RESULT_ERROR = 2;

    public static class IntentBuilder {
        private final Intent mIntent;

        public IntentBuilder() {
            this.mIntent = new Intent("com.google.android.gms.location.places.ui.PICK_PLACE");
            this.mIntent.setPackage(GooglePlayServicesUtil.GOOGLE_PLAY_SERVICES_PACKAGE);
            this.mIntent.putExtra("gmscore_client_jar_version", GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE);
        }

        public Intent build(Activity activity) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
            Theme theme = activity.getTheme();
            TypedValue typedValue = new TypedValue();
            TypedValue typedValue2 = new TypedValue();
            if (theme.resolveAttribute(16843827, typedValue, true) && !this.mIntent.hasExtra("primary_color")) {
                this.mIntent.putExtra("primary_color", typedValue.data);
            }
            if (theme.resolveAttribute(16843828, typedValue2, true) && !this.mIntent.hasExtra("primary_color_dark")) {
                this.mIntent.putExtra("primary_color_dark", typedValue2.data);
            }
            GoogleApiAvailability.getInstance().zzab(activity);
            return this.mIntent;
        }

        @Deprecated
        public Intent build(Context context) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
            GoogleApiAvailability.getInstance().zzab(context);
            return this.mIntent;
        }

        public IntentBuilder setLatLngBounds(LatLngBounds latLngBounds) {
            zzx.zzw(latLngBounds);
            zzc.zza((SafeParcelable) latLngBounds, this.mIntent, "latlng_bounds");
            return this;
        }
    }

    public static String getAttributions(Intent intent) {
        return intent.getStringExtra("third_party_attributions");
    }

    public static LatLngBounds getLatLngBounds(Intent intent) {
        return (LatLngBounds) zzc.zza(intent, "final_latlng_bounds", LatLngBounds.CREATOR);
    }

    public static Place getPlace(Intent intent, Context context) {
        zzx.zzb((Object) context, (Object) "context must not be null");
        PlaceImpl placeImpl = (PlaceImpl) zzc.zza(intent, "selected_place", PlaceImpl.CREATOR);
        placeImpl.zza(zzp.zzaF(context));
        return placeImpl;
    }
}
