package com.nianticproject.holoholo.sfida.service;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaUtils;
import com.nianticproject.holoholo.sfida.constants.BluetoothGattSupport;
import org.apache.commons.io.IOUtils;
import spacemadness.com.lunarconsole.C1401R;

@TargetApi(18)
public class SfidaGattCallback extends BluetoothGattCallback {
    public static final String TAG;
    private SfidaService sfidaService;

    static {
        TAG = SfidaGattCallback.class.getSimpleName();
    }

    public SfidaGattCallback(SfidaService sfidaService) {
        this.sfidaService = sfidaService;
    }

    public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.sfidaService.onSfidaUpdated(bluetoothGattCharacteristic);
    }

    public void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        if (i == 0) {
            this.sfidaService.onSfidaUpdated(bluetoothGattCharacteristic);
        } else {
            Log.e(TAG, "[BLE] onCharacteristicRead() Read failed.");
        }
    }

    public void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i) {
        Log.d(TAG, "[BLE] onCharacteristicWrite() \n  UUID   : " + bluetoothGattCharacteristic.getUuid() + IOUtils.LINE_SEPARATOR_UNIX + "  status : " + SfidaUtils.getGattStateName(i) + IOUtils.LINE_SEPARATOR_UNIX + "  value  : " + SfidaUtils.byteArrayToString(bluetoothGattCharacteristic.getValue()));
        this.sfidaService.setIsReceivedWriteCallback(true);
        if (i == BluetoothGattSupport.GATT_ERROR) {
            this.sfidaService.disconnectBluetooth();
        }
    }

    public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
        Log.d(TAG, "[BLE] onConnectionStateChange() oldState : " + SfidaUtils.getConnectionStateName(i) + " \u2192 newState : " + SfidaUtils.getConnectionStateName(i2));
        switch (i2) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                Log.d(TAG, "[BLE] Disconnected from GATT server.");
                this.sfidaService.onDisconnectedWithGattServer();
            case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                Log.d(TAG, "[BLE] Connected with GATT server.");
                this.sfidaService.onConnectedWithGattServer(bluetoothGatt);
            case Place.TYPE_CAR_REPAIR /*19*/:
            case Place.TYPE_ESTABLISHMENT /*34*/:
            case BluetoothGattSupport.GATT_ERROR /*133*/:
            default:
                Log.e(TAG, "[BLE] onConnectionStateChange() UnhandledState status : " + i + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + "newState : " + i2);
        }
    }

    public void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i) {
        super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i);
        Log.d(TAG, "[BLE] onDescriptorWrite() \n  UUID   : " + bluetoothGattDescriptor.getUuid() + IOUtils.LINE_SEPARATOR_UNIX + "  status : " + SfidaUtils.getGattStateName(i) + IOUtils.LINE_SEPARATOR_UNIX + "  value  : " + SfidaUtils.byteArrayToString(bluetoothGattDescriptor.getValue()));
        switch (i) {
            case BluetoothGattSupport.GATT_INSUF_AUTHENTICATION /*8*/:
                Log.e(TAG, "Too early to call enableSecurityServiceNotify().");
                break;
            case BluetoothGattSupport.GATT_INTERNAL_ERROR /*129*/:
                Log.e(TAG, "SFIDA is already unpaired");
                break;
            case BluetoothGattSupport.GATT_ERROR /*133*/:
                Log.e(TAG, "SFIDA is already paired with other device");
                break;
        }
        this.sfidaService.setIsReceivedNotifyCallback(true);
    }

    public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
        Log.d(TAG, "[BLE] onServicesDiscovered() : " + SfidaUtils.getGattStateName(i));
        switch (i) {
            case C1401R.styleable.AdsAttrs_adSize /*0*/:
                this.sfidaService.onServiceDiscovered();
            default:
                Log.e(TAG, "[BLE] onServicesDiscovered received error: " + i);
        }
    }
}
