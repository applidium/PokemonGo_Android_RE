package crittercism.android;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.support.v4.os.EnvironmentCompat;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import spacemadness.com.lunarconsole.C1401R;

/* renamed from: crittercism.android.d */
public final class C1068d {
    private ConnectivityManager f699a;

    public C1068d(Context context) {
        if (context == null) {
            dx.m754b("Given a null Context.");
        } else if (context.getPackageManager().checkPermission("android.permission.ACCESS_NETWORK_STATE", context.getPackageName()) == 0) {
            this.f699a = (ConnectivityManager) context.getSystemService("connectivity");
        } else {
            dx.m754b("Add android.permission.ACCESS_NETWORK_STATE to AndroidManifest.xml to get more detailed OPTMZ data");
        }
    }

    public final C1018b m692a() {
        if (this.f699a == null) {
            return C1018b.UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = this.f699a.getActiveNetworkInfo();
        return (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) ? C1018b.NOT_CONNECTED : C1018b.m426a(activeNetworkInfo.getType());
    }

    public final String m693b() {
        if (this.f699a == null) {
            return EnvironmentCompat.MEDIA_UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = this.f699a.getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return "disconnected";
        }
        int type = activeNetworkInfo.getType();
        if (type == 0) {
            switch (activeNetworkInfo.getSubtype()) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                case Place.TYPE_AQUARIUM /*4*/:
                case Place.TYPE_BAKERY /*7*/:
                case Place.TYPE_BICYCLE_STORE /*11*/:
                    return "2G";
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                case Place.TYPE_ART_GALLERY /*5*/:
                case Place.TYPE_ATM /*6*/:
                case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                case Place.TYPE_BAR /*9*/:
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                case Place.TYPE_BOOK_STORE /*12*/:
                case Place.TYPE_BUS_STATION /*14*/:
                case Place.TYPE_CAFE /*15*/:
                    return "3G";
                case Place.TYPE_BOWLING_ALLEY /*13*/:
                    return "LTE";
            }
        } else if (type == 1) {
            return "wifi";
        }
        return EnvironmentCompat.MEDIA_UNKNOWN;
    }
}
