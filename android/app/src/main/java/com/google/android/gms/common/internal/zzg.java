package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.gms.C0170R;
import com.google.android.gms.internal.zzmq;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import spacemadness.com.lunarconsole.C1401R;

public final class zzg {
    public static String zzc(Context context, int i, String str) {
        Resources resources = context.getResources();
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                if (zzmq.zzb(resources)) {
                    return resources.getString(C0170R.string.common_google_play_services_install_text_tablet, new Object[]{str});
                }
                return resources.getString(C0170R.string.common_google_play_services_install_text_phone, new Object[]{str});
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return resources.getString(C0170R.string.common_google_play_services_update_text, new Object[]{str});
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return resources.getString(C0170R.string.common_google_play_services_enable_text, new Object[]{str});
            case Place.TYPE_ART_GALLERY /*5*/:
                return resources.getString(C0170R.string.common_google_play_services_invalid_account_text);
            case Place.TYPE_BAKERY /*7*/:
                return resources.getString(C0170R.string.common_google_play_services_network_error_text);
            case Place.TYPE_BAR /*9*/:
                return resources.getString(C0170R.string.common_google_play_services_unsupported_text, new Object[]{str});
            case Place.TYPE_CAMPGROUND /*16*/:
                return resources.getString(C0170R.string.common_google_play_services_api_unavailable_text, new Object[]{str});
            case Place.TYPE_CAR_DEALER /*17*/:
                return resources.getString(C0170R.string.common_google_play_services_sign_in_failed_text);
            case Place.TYPE_CAR_RENTAL /*18*/:
                return resources.getString(C0170R.string.common_google_play_services_updating_text, new Object[]{str});
            case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                return resources.getString(C0170R.string.common_android_wear_update_text, new Object[]{str});
            default:
                return resources.getString(C0170R.string.common_google_play_services_unknown_issue);
        }
    }

    public static String zzd(Context context, int i, String str) {
        Resources resources = context.getResources();
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                if (zzmq.zzb(resources)) {
                    return resources.getString(C0170R.string.common_google_play_services_install_text_tablet, new Object[]{str});
                }
                return resources.getString(C0170R.string.common_google_play_services_install_text_phone, new Object[]{str});
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return resources.getString(C0170R.string.common_google_play_services_update_text, new Object[]{str});
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return resources.getString(C0170R.string.common_google_play_services_enable_text, new Object[]{str});
            case Place.TYPE_ART_GALLERY /*5*/:
                return resources.getString(C0170R.string.common_google_play_services_invalid_account_text);
            case Place.TYPE_BAKERY /*7*/:
                return resources.getString(C0170R.string.common_google_play_services_network_error_text);
            case Place.TYPE_BAR /*9*/:
                return resources.getString(C0170R.string.common_google_play_services_unsupported_text, new Object[]{str});
            case Place.TYPE_CAMPGROUND /*16*/:
                return resources.getString(C0170R.string.common_google_play_services_api_unavailable_text, new Object[]{str});
            case Place.TYPE_CAR_DEALER /*17*/:
                return resources.getString(C0170R.string.common_google_play_services_sign_in_failed_text);
            case Place.TYPE_CAR_RENTAL /*18*/:
                return resources.getString(C0170R.string.common_google_play_services_updating_text, new Object[]{str});
            case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                return resources.getString(C0170R.string.common_android_wear_notification_needs_update_text, new Object[]{str});
            default:
                return resources.getString(C0170R.string.common_google_play_services_unknown_issue);
        }
    }

    public static final String zzg(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return resources.getString(C0170R.string.common_google_play_services_install_title);
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return resources.getString(C0170R.string.common_google_play_services_update_title);
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return resources.getString(C0170R.string.common_google_play_services_enable_title);
            case Place.TYPE_AQUARIUM /*4*/:
            case Place.TYPE_ATM /*6*/:
                return null;
            case Place.TYPE_ART_GALLERY /*5*/:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return resources.getString(C0170R.string.common_google_play_services_invalid_account_title);
            case Place.TYPE_BAKERY /*7*/:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return resources.getString(C0170R.string.common_google_play_services_network_error_title);
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case Place.TYPE_BAR /*9*/:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return resources.getString(C0170R.string.common_google_play_services_unsupported_title);
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case Place.TYPE_BICYCLE_STORE /*11*/:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case Place.TYPE_CAMPGROUND /*16*/:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case Place.TYPE_CAR_DEALER /*17*/:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return resources.getString(C0170R.string.common_google_play_services_sign_in_failed_title);
            case Place.TYPE_CAR_RENTAL /*18*/:
                return resources.getString(C0170R.string.common_google_play_services_updating_title);
            case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                return resources.getString(C0170R.string.common_android_wear_update_title);
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i);
                return null;
        }
    }

    public static String zzh(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return resources.getString(C0170R.string.common_google_play_services_install_button);
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                return resources.getString(C0170R.string.common_google_play_services_update_button);
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return resources.getString(C0170R.string.common_google_play_services_enable_button);
            default:
                return resources.getString(17039370);
        }
    }

    public static final String zzi(Context context, int i) {
        Resources resources = context.getResources();
        switch (i) {
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return resources.getString(C0170R.string.common_google_play_services_install_title);
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                return resources.getString(C0170R.string.common_google_play_services_update_title);
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return resources.getString(C0170R.string.common_google_play_services_enable_title);
            case Place.TYPE_AQUARIUM /*4*/:
            case Place.TYPE_ATM /*6*/:
                return null;
            case Place.TYPE_ART_GALLERY /*5*/:
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return resources.getString(C0170R.string.common_google_play_services_invalid_account_title);
            case Place.TYPE_BAKERY /*7*/:
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return resources.getString(C0170R.string.common_google_play_services_network_error_title);
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            case Place.TYPE_BAR /*9*/:
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return resources.getString(C0170R.string.common_google_play_services_unsupported_title);
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            case Place.TYPE_BICYCLE_STORE /*11*/:
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            case Place.TYPE_CAMPGROUND /*16*/:
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            case Place.TYPE_CAR_DEALER /*17*/:
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return resources.getString(C0170R.string.common_google_play_services_sign_in_failed_title);
            case Place.TYPE_CAR_RENTAL /*18*/:
                return resources.getString(C0170R.string.common_google_play_services_updating_title);
            case Place.TYPE_GENERAL_CONTRACTOR /*42*/:
                return resources.getString(C0170R.string.common_android_wear_update_title);
            default:
                Log.e("GoogleApiAvailability", "Unexpected error code " + i);
                return null;
        }
    }
}
