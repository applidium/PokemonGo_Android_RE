package com.nianticproject.holoholo.sfida.tatsuo;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothAdapter.LeScanCallback;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;

@TargetApi(18)
public class SfidaController {
    private static final String TAG;
    private static SfidaController instance_;
    private BluetoothAdapter bluetoothAdapter;
    private final Context context;
    private LeScanCallback leScanCallback;
    private SfidaDevice sfidaDevice;

    /* renamed from: com.nianticproject.holoholo.sfida.tatsuo.SfidaController.1 */
    class C07991 implements LeScanCallback {
        C07991() {
        }

        public void onLeScan(BluetoothDevice bluetoothDevice, int i, byte[] bArr) {
            Log.d(SfidaController.TAG, String.format("Found device: %s address: %s", new Object[]{bluetoothDevice.getName(), bluetoothDevice.getAddress()}));
            if ("EBISU".equals(bluetoothDevice.getName())) {
                Log.d(SfidaController.TAG, String.format("Found SFIDA device: %s", new Object[]{bluetoothDevice.getAddress()}));
                SfidaController.this.sfidaDevice = new SfidaDevice(SfidaController.this.context, bluetoothDevice);
                SfidaController.this.sfidaDevice.connect();
                SfidaController.this.stopScan();
            }
        }
    }

    static {
        TAG = SfidaController.class.getSimpleName();
    }

    public SfidaController(Context context) {
        this.leScanCallback = new C07991();
        this.context = context;
    }

    public static SfidaController get(Context context) {
        if (instance_ == null) {
            instance_ = new SfidaController(context);
        }
        return instance_;
    }

    @Nullable
    public SfidaDevice getSfidaDevice() {
        return this.sfidaDevice;
    }

    public boolean init() {
        Log.d(TAG, "Initialize SfidaController..");
        this.bluetoothAdapter = ((BluetoothManager) this.context.getSystemService("bluetooth")).getAdapter();
        if (this.bluetoothAdapter == null) {
            Log.d(TAG, "No Bluetooth available.");
            return false;
        } else if (this.bluetoothAdapter.isEnabled()) {
            return true;
        } else {
            Log.d(TAG, "Bluetooth disabled.");
            return false;
        }
    }

    public void startScan() {
        Log.d(TAG, "Start bluetooth device scan");
        this.bluetoothAdapter.startLeScan(this.leScanCallback);
    }

    public void stopScan() {
        Log.d(TAG, "Stop bluetooth device scan");
        this.bluetoothAdapter.stopLeScan(this.leScanCallback);
    }
}
