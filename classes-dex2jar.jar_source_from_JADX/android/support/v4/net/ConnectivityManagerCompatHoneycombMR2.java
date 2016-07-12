package android.support.v4.net;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import spacemadness.com.lunarconsole.C1401R;

class ConnectivityManagerCompatHoneycombMR2 {
    ConnectivityManagerCompatHoneycombMR2() {
    }

    public static boolean isActiveNetworkMetered(ConnectivityManager connectivityManager) {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return true;
        }
        switch (activeNetworkInfo.getType()) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
            case Place.TYPE_AQUARIUM /*4*/:
            case Place.TYPE_ART_GALLERY /*5*/:
            case Place.TYPE_ATM /*6*/:
                return true;
            case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
            case Place.TYPE_BAKERY /*7*/:
            case Place.TYPE_BAR /*9*/:
                return false;
            default:
                return true;
        }
    }
}
