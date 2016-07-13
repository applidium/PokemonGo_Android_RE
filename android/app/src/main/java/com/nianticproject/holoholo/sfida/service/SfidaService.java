package com.nianticproject.holoholo.sfida.service;

import android.annotation.TargetApi;
import android.app.Service;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.bluetooth.BluetoothManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Binder;
import android.os.IBinder;
import android.support.annotation.Nullable;
import android.support.v4.widget.ExploreByTouchHelper;
import android.util.Log;

import com.google.android.gms.location.places.Place;
import com.nianticlabs.pokemongo.R;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.SfidaNotification;
import com.nianticproject.holoholo.sfida.SfidaUtils;
import com.nianticproject.holoholo.sfida.constants.SfidaConstants;
import com.nianticproject.holoholo.sfida.constants.SfidaConstants.CertificationState;
import com.nianticproject.holoholo.sfida.constants.SfidaConstants.ConnectionState;
import com.nianticproject.holoholo.sfida.service.SfidaButtonDetector.OnClickListener;
import com.nianticproject.holoholo.sfida.service.SfidaWatchDog.OnTimeoutListener;
import com.upsight.android.internal.persistence.subscription.Subscriptions;

import org.apache.commons.io.IOUtils;

import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import java.util.Set;
import java.util.UUID;

@TargetApi(18)
public class SfidaService extends Service {
    private static final String CLIENT_CHARACTERISTIC_CONFIG = "00002902-0000-1000-8000-00805f9b34fb";
    public static final String EXTRA_DATA_CHARACTERISTIC = "com.nianticproject.holoholo.sfida..EXTRA_DATA_TYPE";
    public static final String EXTRA_DATA_RAW = "com.nianticproject.holoholo.sfida.EXTRA_DATA_RAW";
    private static final String TAG;
    private static final boolean USE_AUTO_CONNECT = false;
    private final IBinder binder;
    private BluetoothAdapter bluetoothAdapter;
    private String bluetoothDeviceAddress;
    private BluetoothGatt bluetoothGatt;
    private BluetoothManager bluetoothManager;
    private final BroadcastReceiver broadcastReceiver;
    private Certificator certificator;
    private volatile ConnectionState connectionState;
    private volatile boolean isReceivedNotifyCallback;
    private volatile boolean isReceivedWriteCallback;
    private SfidaButtonDetector sfidaButtonDetector;

    /* renamed from: com.nianticproject.holoholo.sfida.service.SfidaService.1 */
    class C07971 extends BroadcastReceiver {
        C07971() {
        }

        public void onReceive(final Context context, final Intent intent) {
            int n = 0;
            Log.d(SfidaService.TAG, "onReceive() : " + intent.getAction());
            final String action = intent.getAction();
            if (action == null) {
                Log.d(SfidaService.TAG, "onReceived() action was null");
            } else {
                switch (action) {
                    case "android.bluetooth.device.action.BOND_STATE_CHANGED":
                        SfidaService.this.onBondStateChanged(intent);
                        break;
                    case "android.bluetooth.device.action.ACL_DISCONNECTED":
                        if (SfidaService.this.connectionState == SfidaConstants.ConnectionState.RE_BOND) {
                            SfidaService.this.setConnectionState(SfidaConstants.ConnectionState.NO_CONNECTION);
                            SfidaUtils.createBond(SfidaService.this.getDevice(SfidaService.this.bluetoothDeviceAddress));
                            SfidaService.this.sendBroadcast("com.nianticproject.holoholo.sfida.ACTION_CREATE_BOND");
                        }
                        break;
                    case "com.nianticproject.holoholo.sfida.dismiss":
                        SfidaNotification.dissmiss(SfidaService.this.getApplicationContext());
                        SfidaService.this.disconnectBluetooth();
                        break;
                    case "com.nianticproject.holoholo.sfida.vibrate":
                        SfidaService.this.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getBlinkRed());
                        break;
                    case "android.bluetooth.device.action.PAIRING_REQUEST":
                        final BluetoothDevice bluetoothDevice = intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
                        try {
                            bluetoothDevice.getClass().getMethod("setPairingConfirmation", Boolean.TYPE).invoke(bluetoothDevice, true);
                            bluetoothDevice.getClass().getMethod("cancelPairingUserInput").invoke(bluetoothDevice);
                        } catch (IllegalAccessException ex) {
                            ex.printStackTrace();
                        } catch (InvocationTargetException ex2) {
                            ex2.printStackTrace();
                        } catch (NoSuchMethodException ex3) {
                            ex3.printStackTrace();
                        }
                        break;
                    default:
                        Log.d(SfidaService.TAG, "onReceive() : " + action);
                }
            }
        }
    }

    /* renamed from: com.nianticproject.holoholo.sfida.service.SfidaService.2 */
    static /* synthetic */ class C07982 {
        static final /* synthetic */ int[] f36x11f28293;

        static {
            f36x11f28293 = new int[ConnectionState.values().length];
            try {
                f36x11f28293[ConnectionState.DISCOVERING_SERVICE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f36x11f28293[ConnectionState.RE_BOND.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    public class LocalBinder extends Binder {
        public SfidaService getService() {
            return SfidaService.this;
        }
    }

    static {
        TAG = SfidaService.class.getSimpleName();
    }

    public SfidaService() {
        this.connectionState = ConnectionState.NO_CONNECTION;
        this.isReceivedWriteCallback = false;
        this.isReceivedNotifyCallback = false;
        this.binder = new LocalBinder();
        this.sfidaButtonDetector = new SfidaButtonDetector();
        this.certificator = new Certificator(this);
        this.broadcastReceiver = new C07971();
    }

    private Boolean isBoundDevice(BluetoothDevice bluetoothDevice) {
        Set<BluetoothDevice> bondedDevices = this.bluetoothAdapter.getBondedDevices();
        if (!(bondedDevices == null || bondedDevices.size() == 0)) {
            for (BluetoothDevice address : bondedDevices) {
                if (address.getAddress().equals(bluetoothDevice.getAddress())) {
                    return Boolean.valueOf(true);
                }
            }
        }
        return Boolean.valueOf(false);
    }

    private void onBondStateChanged(Intent intent) {
        int intExtra = intent.getIntExtra("android.bluetooth.device.extra.BOND_STATE", ExploreByTouchHelper.INVALID_ID);
        int intExtra2 = intent.getIntExtra("android.bluetooth.device.extra.PREVIOUS_BOND_STATE", ExploreByTouchHelper.INVALID_ID);
        Log.d(TAG, "[BLE] ACTION_BOND_STATE_CHANGED oldState : " + SfidaUtils.getBondStateName(intExtra2) + " \u2192 newState : " + SfidaUtils.getBondStateName(intExtra));
        BluetoothDevice bluetoothDevice = (BluetoothDevice) intent.getParcelableExtra("android.bluetooth.device.extra.DEVICE");
        if (bluetoothDevice != null) {
            switch (intExtra) {
                case Subscriptions.MAX_QUEUE_LENGTH /*10*/:
                    if (intExtra2 == 12) {
                        setConnectionState(ConnectionState.RE_BOND);
                        this.certificator.setCertificationState(CertificationState.NO_CERTIFICATION);
                        disconnectBluetooth();
                    } else if (intExtra2 == 11) {
                        setConnectionState(ConnectionState.NO_CONNECTION);
                        sendBroadcast(SfidaConstants.ACTION_BOND_CANCELED);
                    } else {
                        Log.d(TAG, "Unhandled oldState : " + intExtra2);
                    }
                case Place.TYPE_BOOK_STORE /*12*/:
                    try {
                        bluetoothDevice.getClass().getMethod("cancelPairingUserInput", new Class[0]).invoke(bluetoothDevice, new Object[0]);
                    } catch (IllegalAccessException e) {
                        e.printStackTrace();
                    } catch (InvocationTargetException e2) {
                        e2.printStackTrace();
                    } catch (NoSuchMethodException e3) {
                        e3.printStackTrace();
                    }
                    connect(bluetoothDevice);
                default:
            }
        }
    }

    private void sendBroadcast(String str) {
        sendBroadcast(new Intent(str));
    }

    private void startCertificateSequence() {
        this.certificator.startCertification();
    }

    public void closeBluetoothGatt() {
        if (this.bluetoothGatt != null) {
            this.bluetoothGatt.close();
            this.bluetoothGatt = null;
        }
    }

    public boolean connect(BluetoothDevice bluetoothDevice) {
        if (isBoundDevice(bluetoothDevice).booleanValue()) {
            setConnectionState(ConnectionState.CONNECT_GATT);
            String address = bluetoothDevice.getAddress();
            if (this.bluetoothAdapter == null || address == null) {
                Log.w(TAG, "[BLE] BluetoothAdapter not initialized or unspecified address.");
                return false;
            } else if (this.bluetoothDeviceAddress == null || !address.equals(this.bluetoothDeviceAddress) || this.bluetoothGatt == null) {
                this.bluetoothGatt = bluetoothDevice.connectGatt(this, false, new SfidaGattCallback(this));
                Log.d(TAG, "Trying to create a new connection.");
                this.bluetoothDeviceAddress = address;
            } else {
                Log.d(TAG, "[BLE] Trying to use an existing bluetoothGatt for connection.");
                return this.bluetoothGatt.connect();
            }
        }
        setConnectionState(ConnectionState.BONDING);
        SfidaUtils.createBond(bluetoothDevice);
        return true;
    }

    public boolean disconnectBluetooth() {
        if (this.bluetoothAdapter == null || this.bluetoothGatt == null) {
            Log.w(TAG, "[BLE] BluetoothAdapter not initialized");
            return false;
        }
        this.bluetoothGatt.disconnect();
        return true;
    }

    public boolean enableDeviceControlServiceNotify() {
        Log.d(TAG, "enableDeviceControlServiceNotify()");
        BluetoothGattCharacteristic findCharacteristic = findCharacteristic(SfidaMessage.UUID_DEVICE_CONTROL_SERVICE, SfidaMessage.UUID_BUTTON_NOTIF_CHAR);
        if (findCharacteristic != null) {
            boolean sendToEnableSfidaNotification = sendToEnableSfidaNotification(findCharacteristic, true, SfidaMessage.UUID_BUTTON_NOTIF_CHAR);
            Log.d(TAG, "enableDeviceControlServiceNotify() result : " + sendToEnableSfidaNotification);
            return sendToEnableSfidaNotification;
        }
        Log.e(TAG, "enableDeviceControlServiceNotify() BluetoothGattCharacteristic not found.");
        return false;
    }

    public boolean enableSecurityServiceNotify() {
        return enableSecurityServiceNotify(null);
    }

    public boolean enableSecurityServiceNotify(OnTimeoutListener onTimeoutListener) {
        Log.d(TAG, "enableSecurityServiceNotify()");
        BluetoothGattCharacteristic findCharacteristic = findCharacteristic(SfidaMessage.UUID_CERTIFICATE_SERVICE, SfidaMessage.UUID_SFIDA_COMMANDS_CHAR);
        if (findCharacteristic != null) {
            boolean sendToEnableSfidaNotification = sendToEnableSfidaNotification(findCharacteristic, true, SfidaMessage.UUID_SFIDA_COMMANDS_CHAR, onTimeoutListener);
            Log.d(TAG, "enableSecurityServiceNotify() result : " + sendToEnableSfidaNotification);
            return sendToEnableSfidaNotification;
        }
        Log.e(TAG, "enableSecurityServiceNotify() BluetoothGattCharacteristic not found.");
        return false;
    }

    public BluetoothGattCharacteristic findCharacteristic(UUID uuid, UUID uuid2) {
        if (this.bluetoothGatt == null) {
            return null;
        }
        BluetoothGattService service = this.bluetoothGatt.getService(uuid);
        if (service != null) {
            return service.getCharacteristic(uuid2);
        }
        Log.e(TAG, "findCharacteristic() characteristic was not found.");
        return null;
    }

    public String getBluetoothAddress() {
        return this.bluetoothDeviceAddress;
    }

    public BluetoothDevice getDevice(String str) {
        BluetoothDevice remoteDevice = this.bluetoothAdapter.getRemoteDevice(str);
        if (remoteDevice != null) {
            return remoteDevice;
        }
        Log.w(TAG, "[BLE] Device not found.  Unable to connect.");
        return null;
    }

    public boolean getIsReceivedNotifyCallback() {
        return this.isReceivedNotifyCallback;
    }

    public boolean getIsReceivedWriteCallback() {
        return this.isReceivedWriteCallback;
    }

    public List<BluetoothGattService> getSupportedGattServices() {
        return this.bluetoothGatt == null ? null : this.bluetoothGatt.getServices();
    }

    public boolean initialize() {
        if (this.bluetoothManager == null) {
            this.bluetoothManager = (BluetoothManager) getSystemService(Context.BLUETOOTH_SERVICE);
            if (this.bluetoothManager == null) {
                Log.e(TAG, "Unable to initialize BluetoothManager.");
                return false;
            }
        }
        this.bluetoothAdapter = this.bluetoothManager.getAdapter();
        if (this.bluetoothAdapter != null) {
            return true;
        }
        Log.e(TAG, "Unable to obtain a BluetoothAdapter.");
        return false;
    }

    public IBinder onBind(Intent intent) {
        Log.d(TAG, "onBind()");
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
        intentFilter.addAction(SfidaNotification.ACTION_NOTIFICATION_DISMISS);
        intentFilter.addAction(SfidaNotification.ACTION_NOTIFICATION_VIBRATE);
        registerReceiver(this.broadcastReceiver, intentFilter);
        return this.binder;
    }

    public void onCertificationComplete() {
        setConnectionState(ConnectionState.CONNECTED);
        enableDeviceControlServiceNotify();
        sendBroadcast(SfidaConstants.ACTION_CERTIFICATE_COMPLETE);
        SfidaNotification.showSfidaNotification(getApplicationContext());
    }

    public void onConnectedWithGattServer(BluetoothGatt bluetoothGatt) {
        bluetoothGatt.discoverServices();
        setConnectionState(ConnectionState.DISCOVERING_SERVICE);
        sendBroadcast(SfidaConstants.ACTION_GATT_CONNECTED);
    }

    public void onDestroy() {
        Log.d(TAG, "onDestroy()");
        super.onDestroy();
        closeBluetoothGatt();
        unregisterReceiver(this.broadcastReceiver);
        if (this.sfidaButtonDetector != null) {
            this.sfidaButtonDetector.release();
        }
        SfidaNotification.dissmiss(getApplicationContext());
    }

    public void onDisconnectedWithGattServer() {
        if (this.connectionState != ConnectionState.RE_BOND) {
            closeBluetoothGatt();
            sendBroadcast(SfidaConstants.ACTION_GATT_DISCONNECTED);
            setConnectionState(ConnectionState.NO_CONNECTION);
            SfidaNotification.dissmiss(getApplicationContext());
        }
    }

    public void onServiceDiscovered() {
        switch (C07982.f36x11f28293[this.connectionState.ordinal()]) {
            case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                setConnectionState(ConnectionState.CERTIFICATION);
                startCertificateSequence();
                sendBroadcast(SfidaConstants.ACTION_GATT_SERVICES_DISCOVERED);
            case R.styleable.LoadingImageView_circleCrop /*2*/:
                setConnectionState(ConnectionState.NO_CONNECTION);
                disconnectBluetooth();
            default:
        }
    }

    public void onSfidaUpdated(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        Intent intent = new Intent(SfidaConstants.ACTION_DATA_AVAILABLE);
        byte[] value = bluetoothGattCharacteristic.getValue();
        Serializable uuid = bluetoothGattCharacteristic.getUuid();
        String byteArrayToString = SfidaUtils.byteArrayToString(value);
        String byteArrayToBitString = SfidaUtils.byteArrayToBitString(value);
        Log.d(TAG, "[BLE] onSfidaUpdated()");
        Log.d(TAG, "  RawData : " + byteArrayToString);
        Log.d(TAG, "  Bit : " + byteArrayToBitString);
        Log.d(TAG, "  UUID    : " + uuid.toString());
        try {
            Log.d(TAG, "  type    : " + bluetoothGattCharacteristic.getIntValue(18, 0).intValue());
        } catch (NullPointerException e) {
            e.printStackTrace();
        }
        SfidaWatchDog.getInstance().stopWatch();
        if (SfidaMessage.UUID_SFIDA_COMMANDS_CHAR.equals(uuid)) {
            if (this.certificator == null) {
                this.certificator = new Certificator(this);
            }
            this.certificator.onSfidaUpdated(byteArrayToString);
        } else if (SfidaMessage.UUID_FW_VERSION_CHAR.equals(uuid)) {
            if (value != null && value.length > 0) {
                try {
                    intent.putExtra(EXTRA_DATA_RAW, new String(value, "US-ASCII"));
                    intent.putExtra(EXTRA_DATA_CHARACTERISTIC, uuid);
                    sendBroadcast(intent);
                } catch (UnsupportedEncodingException e2) {
                    e2.printStackTrace();
                }
            }
        } else if (SfidaMessage.UUID_BATTERY_LEVEL_CHAR.equals(uuid)) {
            if (value != null && value.length > 0) {
                Log.d(TAG, "BatteryLevel received. " + bluetoothGattCharacteristic.getValue()[0] + "%");
            }
        } else if (!SfidaMessage.UUID_BUTTON_NOTIF_CHAR.equals(uuid)) {
            sendBroadcast(intent);
        } else if (value != null) {
            this.sfidaButtonDetector.setButtonStatus(value, false);
            intent.putExtra(EXTRA_DATA_RAW, value);
            intent.putExtra(EXTRA_DATA_CHARACTERISTIC, uuid);
            sendBroadcast(intent);
        }
    }

    public boolean onUnbind(Intent intent) {
        Log.d(TAG, "onUnbind()");
        return super.onUnbind(intent);
    }

    public void readBatteryLevel() {
        Log.d(TAG, "readBatteryLevel()");
        BluetoothGattCharacteristic findCharacteristic = findCharacteristic(SfidaMessage.UUID_BATTERY_SERVICE, SfidaMessage.UUID_BATTERY_LEVEL_CHAR);
        if (findCharacteristic != null) {
            readCharacteristic(findCharacteristic);
        } else {
            Log.e(TAG, "readBatteryLevel() BluetoothGattCharacteristic not found.");
        }
    }

    public boolean readCertificateMessage(UUID uuid) {
        Log.d(TAG, "readCertificateMessage()");
        if (uuid == null) {
            throw new NullPointerException();
        }
        BluetoothGattCharacteristic findCharacteristic = findCharacteristic(SfidaMessage.UUID_CERTIFICATE_SERVICE, uuid);
        if (findCharacteristic != null) {
            boolean readCharacteristic = readCharacteristic(findCharacteristic);
            Log.d(TAG, "readCertificateMessage() : " + readCharacteristic);
            return readCharacteristic;
        }
        Log.e(TAG, "readCertificateMessage() BluetoothGattCharacteristic not found.");
        return false;
    }

    public boolean readCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        if (this.bluetoothAdapter == null || this.bluetoothGatt == null) {
            Log.w(TAG, "[BLE] BluetoothAdapter not initialized");
            return false;
        }
        this.bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, true);
        return this.bluetoothGatt.readCharacteristic(bluetoothGattCharacteristic);
    }

    public void readFwVersionMessage() {
        Log.d(TAG, "readFwVersionMessage()");
        BluetoothGattCharacteristic findCharacteristic = findCharacteristic(SfidaMessage.UUID_DEVICE_CONTROL_SERVICE, SfidaMessage.UUID_FW_VERSION_CHAR);
        if (findCharacteristic != null) {
            readCharacteristic(findCharacteristic);
        } else {
            Log.e(TAG, "readFwVersionMessage() BluetoothGattCharacteristic not found.");
        }
    }

    public boolean sendCertificateMessage(byte[] bArr) {
        return sendCertificateMessage(bArr, null);
    }

    public boolean sendCertificateMessage(byte[] bArr, OnTimeoutListener onTimeoutListener) {
        Log.d(TAG, "sendCertificateMessage()");
        if (bArr == null) {
            throw new NullPointerException();
        }
        Log.d(TAG, "sendCertificateMessage() \n  value : " + SfidaUtils.byteArrayToString(bArr) + IOUtils.LINE_SEPARATOR_UNIX + "  UUID  : " + SfidaMessage.UUID_CENTRAL_TO_SFIDA_CHAR);
        BluetoothGattCharacteristic findCharacteristic = findCharacteristic(SfidaMessage.UUID_CERTIFICATE_SERVICE, SfidaMessage.UUID_CENTRAL_TO_SFIDA_CHAR);
        if (findCharacteristic != null) {
            findCharacteristic.setValue(bArr);
            boolean writeCharacteristic = writeCharacteristic(findCharacteristic, onTimeoutListener);
            Log.d(TAG, "sendCertificateMessage() result : " + writeCharacteristic);
            return writeCharacteristic;
        }
        Log.e(TAG, "sendCertificateMessage() BluetoothGattCharacteristic not found.");
        return false;
    }

    public boolean sendDeviceControlMessage(UUID uuid, byte[] bArr) {
        return sendDeviceControlMessage(uuid, bArr, null);
    }

    public boolean sendDeviceControlMessage(UUID uuid, byte[] bArr, OnTimeoutListener onTimeoutListener) {
        Log.d(TAG, "[BLE] sendDeviceControlMessage() \n  value : " + SfidaUtils.byteArrayToString(bArr) + IOUtils.LINE_SEPARATOR_UNIX + "  UUID  : " + uuid);
        BluetoothGattCharacteristic findCharacteristic = findCharacteristic(SfidaMessage.UUID_DEVICE_CONTROL_SERVICE, uuid);
        if (findCharacteristic != null) {
            findCharacteristic.setValue(bArr);
            boolean writeCharacteristic = writeCharacteristic(findCharacteristic, onTimeoutListener);
            Log.d(TAG, "sendDeviceControlMessage() result : " + writeCharacteristic);
            return writeCharacteristic;
        }
        Log.e(TAG, "sendDeviceControlMessage() BluetoothGattCharacteristic not found.");
        return false;
    }

    public boolean sendDeviceControlMessage(UUID uuid, byte[] bArr, OnTimeoutListener onTimeoutListener, int i) {
        Log.d(TAG, "[BLE] sendDeviceControlMessage() \n  value : " + SfidaUtils.byteArrayToString(bArr) + IOUtils.LINE_SEPARATOR_UNIX + "  UUID  : " + uuid + " Timeout : " + i);
        BluetoothGattCharacteristic findCharacteristic = findCharacteristic(SfidaMessage.UUID_DEVICE_CONTROL_SERVICE, uuid);
        if (findCharacteristic != null) {
            findCharacteristic.setValue(bArr);
            boolean writeCharacteristic = writeCharacteristic(findCharacteristic, onTimeoutListener, i);
            Log.d(TAG, "sendDeviceControlMessage() result : " + writeCharacteristic);
            return writeCharacteristic;
        }
        Log.e(TAG, "sendDeviceControlMessage() BluetoothGattCharacteristic not found.");
        return false;
    }

    public boolean sendToEnableSfidaNotification(BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, UUID uuid) {
        return sendToEnableSfidaNotification(bluetoothGattCharacteristic, z, uuid, null);
    }

    public boolean sendToEnableSfidaNotification(BluetoothGattCharacteristic bluetoothGattCharacteristic, boolean z, UUID uuid, OnTimeoutListener onTimeoutListener) {
        if (this.bluetoothAdapter == null || this.bluetoothGatt == null) {
            Log.w(TAG, "[BLE] BluetoothAdapter not initialized");
            return false;
        }
        boolean characteristicNotification = this.bluetoothGatt.setCharacteristicNotification(bluetoothGattCharacteristic, z);
        if (characteristicNotification && uuid.equals(bluetoothGattCharacteristic.getUuid())) {
            BluetoothGattDescriptor descriptor = bluetoothGattCharacteristic.getDescriptor(UUID.fromString(CLIENT_CHARACTERISTIC_CONFIG));
            descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
            Log.d(TAG, " permission : " + descriptor.getPermissions());
            characteristicNotification = this.bluetoothGatt.writeDescriptor(descriptor);
            if (characteristicNotification && onTimeoutListener != null) {
                this.isReceivedNotifyCallback = false;
                SfidaWatchDog.getInstance().startWatch(bluetoothGattCharacteristic.getUuid(), onTimeoutListener);
                return characteristicNotification;
            } else if (characteristicNotification) {
                return characteristicNotification;
            } else {
                Log.e(TAG, "failed writeDescriptor()");
                return characteristicNotification;
            }
        } else if (characteristicNotification) {
            return characteristicNotification;
        } else {
            Log.e(TAG, "failed setCharacteristicNotification()");
            return characteristicNotification;
        }
    }

    public void setConnectionState(ConnectionState connectionState) {
        Log.d(TAG, "ConnectionState [" + this.connectionState + "] \u2192 [" + connectionState + "]");
        this.connectionState = connectionState;
    }

    public void setIsReceivedNotifyCallback(boolean z) {
        this.isReceivedNotifyCallback = z;
    }

    public void setIsReceivedWriteCallback(boolean z) {
        this.isReceivedWriteCallback = z;
    }

    public void setOnClickSfidaListener(@Nullable OnClickListener onClickListener) {
        if (this.sfidaButtonDetector != null) {
            this.sfidaButtonDetector.setOnclickListener(onClickListener);
        }
    }

    public boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic, OnTimeoutListener onTimeoutListener) {
        Log.d(TAG, "writeCharacteristic()");
        boolean writeCharacteristic = this.bluetoothGatt.writeCharacteristic(bluetoothGattCharacteristic);
        if (writeCharacteristic) {
            this.isReceivedWriteCallback = false;
            if (onTimeoutListener != null) {
                SfidaWatchDog.getInstance().startWatch(bluetoothGattCharacteristic.getUuid(), onTimeoutListener);
            }
        }
        return writeCharacteristic;
    }

    public boolean writeCharacteristic(BluetoothGattCharacteristic bluetoothGattCharacteristic, OnTimeoutListener onTimeoutListener, int i) {
        Log.d(TAG, "writeCharacteristic()");
        boolean writeCharacteristic = this.bluetoothGatt.writeCharacteristic(bluetoothGattCharacteristic);
        if (writeCharacteristic) {
            this.isReceivedWriteCallback = false;
            if (onTimeoutListener != null) {
                SfidaWatchDog.getInstance().startWatch(bluetoothGattCharacteristic.getUuid(), onTimeoutListener, i);
            }
        }
        return writeCharacteristic;
    }
}
