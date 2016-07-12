package com.nianticproject.holoholo.sfida;

import android.annotation.TargetApi;
import android.app.Activity;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.os.Build.VERSION;
import android.support.v4.view.InputDeviceCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import android.widget.Toast;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import com.upsight.android.internal.persistence.subscription.Subscriptions;
import java.lang.reflect.Method;
import com.nianticlabs.pokemongo.BuildConfig;
import com.nianticlabs.pokemongo.R;

public class SfidaUtils {
    private static final String TAG;

    /* renamed from: com.nianticproject.holoholo.sfida.SfidaUtils.1 */
    static final class C07921 implements Runnable {
        final /* synthetic */ Activity val$activity;
        final /* synthetic */ int val$duration;
        final /* synthetic */ String val$text;

        C07921(Activity activity, String str, int i) {
            this.val$activity = activity;
            this.val$text = str;
            this.val$duration = i;
        }

        public void run() {
            Toast.makeText(this.val$activity, this.val$text, this.val$duration).show();
        }
    }

    static {
        TAG = SfidaUtils.class.getSimpleName();
    }

    public static String byteArrayToBitString(byte[] bArr) {
        String str = BuildConfig.FLAVOR;
        for (byte b : bArr) {
            for (int i = 0; i < 8; i++) {
                str = str + String.valueOf(((AccessibilityNodeInfoCompat.ACTION_CLEAR_ACCESSIBILITY_FOCUS >> i) & b) != 0 ? 1 : 0);
            }
            str = str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR;
        }
        return str;
    }

    public static String byteArrayToString(byte[] bArr) {
        String str = BuildConfig.FLAVOR;
        for (byte valueOf : bArr) {
            str = str + String.valueOf(valueOf);
        }
        return str;
    }

    @TargetApi(19)
    public static void createBond(BluetoothDevice bluetoothDevice) {
        if (VERSION.SDK_INT >= 19) {
            Log.d(TAG, "createBond() Start Pairing...");
            bluetoothDevice.createBond();
            return;
        }
        try {
            Log.d(TAG, "createBond() Start Pairing...");
            bluetoothDevice.getClass().getMethod("createBond", (Class[]) null).invoke(bluetoothDevice, (Object[]) null);
            Log.d(TAG, "createBond() Pairing finished.");
        } catch (Exception e) {
            Log.e(TAG, e.getMessage());
        }
    }

    public static String getBondStateName(int i) {
        switch (i) {
            case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                return "BOND_NONE";
            case Place.TYPE_BICYCLE_STORE /*11*/:
                return "BOND_BONDING";
            case Place.TYPE_BOOK_STORE /*12*/:
                return "BOND_BONDED";
            default:
                return String.valueOf(i);
        }
    }

    public static String getConnectionStateName(int i) {
        switch (i) {
            case R.styleable.AdsAttrs_adSize /*0*/:
                return "STATE_DISCONNECTED";
            case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return "STATE_CONNECTING";
            case R.styleable.LoadingImageView_circleCrop /*2*/:
                return "STATE_CONNECTED";
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return "STATE_DISCONNECTING";
            default:
                return String.valueOf(i);
        }
    }

    public static String getGattStateName(int i) {
        switch (i) {
            case R.styleable.AdsAttrs_adSize /*0*/:
                return "GATT_SUCCESS";
            case R.styleable.LoadingImageView_circleCrop /*2*/:
                return "GATT_READ_NOT_PERMITTED";
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return "GATT_WRITE_NOT_PERMITTED";
            case Place.TYPE_ART_GALLERY /*5*/:
                return "GATT_INSUFFICIENT_AUTHENTICATION";
            case Place.TYPE_ATM /*6*/:
                return "GATT_REQUEST_NOT_SUPPORTED";
            case Place.TYPE_BAKERY /*7*/:
                return "GATT_INVALID_OFFSET";
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                return "GATT_INSUF_AUTHENTICATION";
            case Place.TYPE_BOWLING_ALLEY /*13*/:
                return "GATT_INVALID_ATTRIBUTE_LENGTH";
            case Place.TYPE_CAFE /*15*/:
                return "GATT_INSUFFICIENT_ENCRYPTION";
            case BluetoothGattSupport.GATT_INTERNAL_ERROR /*129*/:
                return "GATT_INTERNAL_ERROR";
            case BluetoothGattSupport.GATT_ERROR /*133*/:
                return "GATT_ERROR";
            case 143:
                return "GATT_CONNECTION_CONGESTED";
            case InputDeviceCompat.SOURCE_KEYBOARD /*257*/:
                return "GATT_FAILURE";
            default:
                return String.valueOf(i);
        }
    }

    public static byte[] hexStringToByteArray(String str) {
        int length = str.length();
        byte[] bArr = new byte[(length / 2)];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public static boolean refreshDeviceCache(BluetoothGatt bluetoothGatt) {
        try {
            Method method = bluetoothGatt.getClass().getMethod("refresh", new Class[0]);
            if (method != null) {
                return ((Boolean) method.invoke(bluetoothGatt, new Object[0])).booleanValue();
            }
        } catch (Exception e) {
            Log.e(TAG, "An exception occurred while refreshing device");
        }
        return false;
    }

    public static void removeBond(BluetoothDevice bluetoothDevice) {
        try {
            Log.d("removeBond()", "Start remove bond...");
            bluetoothDevice.getClass().getMethod("removeBond", (Class[]) null).invoke(bluetoothDevice, (Object[]) null);
            Log.d("removeBond()", "remove bond finished.");
        } catch (Exception e) {
            Log.e("removeBond()", e.getMessage());
        }
    }

    public static void toast(Activity activity, String str, int i) {
        if (activity != null) {
            activity.runOnUiThread(new C07921(activity, str, i));
        }
    }
}
