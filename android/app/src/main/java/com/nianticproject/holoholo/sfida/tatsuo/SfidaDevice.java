package com.nianticproject.holoholo.sfida.tatsuo;

import android.annotation.TargetApi;
import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.content.Context;
import android.graphics.Color;
import android.support.v4.view.MotionEventCompat;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.util.Log;
import com.google.android.gms.location.LocationStatusCodes;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@TargetApi(18)
public class SfidaDevice {
    private static final String TAG;
    private BluetoothGatt bluetoothGatt;
    private final BluetoothGattCallback bluetoothGattCallback;
    private int[] buttonPresses;
    private int connectionState;
    private Context context;
    private BluetoothDevice device;
    private BluetoothGattService service;

    /* renamed from: com.nianticproject.holoholo.sfida.tatsuo.SfidaDevice.1 */
    class C08001 extends BluetoothGattCallback {
        C08001() {
        }

        public void onButtonUpdated(int i) {
            if (SfidaDevice.this.buttonPresses == null) {
                SfidaDevice.this.buttonPresses = new int[]{i};
            } else {
                Object obj = new int[(SfidaDevice.this.buttonPresses.length + 1)];
                System.arraycopy(SfidaDevice.this.buttonPresses, 0, obj, 0, SfidaDevice.this.buttonPresses.length);
                obj[SfidaDevice.this.buttonPresses.length] = i;
                SfidaDevice.this.buttonPresses = obj;
            }
            Log.d(SfidaDevice.TAG, String.format("SFIDA button press returns %d", new Object[]{Integer.valueOf(i)}));
        }

        public void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            byte[] value = bluetoothGattCharacteristic.getValue();
            onButtonUpdated(value[1] + (value[0] * AccessibilityNodeInfoCompat.ACTION_NEXT_AT_MOVEMENT_GRANULARITY));
        }

        public void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i, int i2) {
            Log.d(SfidaDevice.TAG, String.format("onConnectionStateChange. status: %d", new Object[]{Integer.valueOf(i)}));
            if (i2 == 2) {
                SfidaDevice.this.connectionState = 2;
                Log.d(SfidaDevice.TAG, "Connected to GATT server.");
                Log.d(SfidaDevice.TAG, String.format("Attempting to start service discovery: %s", new Object[]{Boolean.valueOf(SfidaDevice.this.bluetoothGatt.discoverServices())}));
            } else if (i2 == 0) {
                SfidaDevice.this.connectionState = 0;
                SfidaDevice.this.bluetoothGatt = null;
                Log.d(SfidaDevice.TAG, "Disconnected from GATT server.");
            }
        }

        public void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i) {
            if (i != 0) {
                Log.e(SfidaDevice.TAG, String.format("GATT Failed to discover service. status: %d", new Object[]{Integer.valueOf(i)}));
                return;
            }
            SfidaDevice.this.service = bluetoothGatt.getService(SfidaUUID.SFIDA_DEV_CTRL_SVC_UUID);
            if (SfidaDevice.this.service == null) {
                Log.e(SfidaDevice.TAG, "GATT Service not found: SFIDA_DEV_CTRL_SVC");
                return;
            }
            Log.d(SfidaDevice.TAG, "GATT onServicesDiscovered service is set");
            BluetoothGattCharacteristic characteristic = SfidaDevice.this.service.getCharacteristic(SfidaUUID.SFIDA_BUTTON_NOTIF_CHAR_UUID);
            if (characteristic != null) {
                bluetoothGatt.setCharacteristicNotification(characteristic, true);
                List descriptors = characteristic.getDescriptors();
                for (int i2 = 0; i2 < descriptors.size(); i2++) {
                    BluetoothGattDescriptor bluetoothGattDescriptor = (BluetoothGattDescriptor) descriptors.get(i2);
                    bluetoothGattDescriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                    bluetoothGatt.writeDescriptor(bluetoothGattDescriptor);
                }
            }
        }
    }

    private static class SfidaFlashPatternBuilder {
        private int inputReadTimeMs;
        private List<SfidaFlash> patterns;
        private int priority;

        private static class SfidaFlash {
            public int color;
            public int flashTimeMs;
            public boolean interpolationEnabled;
            public int vibrationLevel;

            public SfidaFlash(int i, int i2, int i3, boolean z) {
                this.flashTimeMs = i;
                this.color = i2;
                this.vibrationLevel = i3;
                this.interpolationEnabled = z;
            }
        }

        private SfidaFlashPatternBuilder() {
            this.patterns = new ArrayList();
        }

        public SfidaFlashPatternBuilder addFlash(int i, int i2, int i3, boolean z) {
            if (this.patterns.size() < 30) {
                this.patterns.add(new SfidaFlash(i, i2, i3, z));
                return this;
            }
            throw new InvalidParameterException("Number of flash patterns exceeded limit.");
        }

        public byte[] build() {
            byte[] bArr = new byte[((this.patterns.size() * 3) + 4)];
            bArr[0] = (byte) (this.inputReadTimeMs / 50);
            bArr[1] = (byte) 0;
            bArr[2] = (byte) 0;
            bArr[3] = (byte) (((this.priority & 7) << 5) | (this.patterns.size() & 31));
            int i = 4;
            int i2 = 0;
            while (i2 < this.patterns.size()) {
                SfidaFlash sfidaFlash = (SfidaFlash) this.patterns.get(i2);
                int i3 = i + 1;
                bArr[i] = (byte) (sfidaFlash.flashTimeMs / 50);
                int i4 = i3 + 1;
                bArr[i3] = (byte) (((Color.green(sfidaFlash.color) >> 4) << 4) | (Color.red(sfidaFlash.color >> 4) & 15));
                bArr[i4] = (byte) (((Color.blue(sfidaFlash.color) >> 4) & 15) | (((sfidaFlash.interpolationEnabled ? 1 : 0) << 7) | ((sfidaFlash.vibrationLevel & 7) << 4)));
                i2++;
                i = i4 + 1;
            }
            return bArr;
        }

        public SfidaFlashPatternBuilder setInputReadTimeMs(int i) {
            this.inputReadTimeMs = i;
            return this;
        }

        public SfidaFlashPatternBuilder setPriority(int i) {
            this.priority = i;
            return this;
        }
    }

    static {
        TAG = SfidaDevice.class.getSimpleName();
    }

    public SfidaDevice(Context context, BluetoothDevice bluetoothDevice) {
        this.connectionState = 0;
        this.bluetoothGattCallback = new C08001();
        this.context = context;
        this.device = bluetoothDevice;
    }

    private byte[] read(UUID uuid) {
        if (this.service == null) {
            Log.e(TAG, "No SFIDA Service.");
            return null;
        }
        BluetoothGattCharacteristic characteristic = this.service.getCharacteristic(uuid);
        if (characteristic == null) {
            Log.e(TAG, "Characteristic not found: SFIDA_LED_VIBR_CTRL_CHAR");
            return null;
        }
        this.bluetoothGatt.readCharacteristic(characteristic);
        return characteristic.getValue();
    }

    private void write(UUID uuid, byte[] bArr) {
        if (this.service == null) {
            Log.e(TAG, "No SFIDA Service.");
            return;
        }
        BluetoothGattCharacteristic characteristic = this.service.getCharacteristic(uuid);
        if (characteristic == null) {
            Log.e(TAG, "Characteristic not found: SFIDA_LED_VIBR_CTRL_CHAR");
            return;
        }
        characteristic.setValue(bArr);
        this.bluetoothGatt.writeCharacteristic(characteristic);
    }

    public void connect() {
        Log.d(TAG, "Connect to the GATT server");
        if (this.bluetoothGatt == null) {
            this.bluetoothGatt = this.device.connectGatt(this.context, true, this.bluetoothGattCallback);
        }
    }

    public String getVersion() {
        byte[] read = read(SfidaUUID.SFIDA_FW_VERSION);
        return read != null ? new String(read) : "Unknown";
    }

    public boolean hasGattService() {
        if (this.service != null) {
            Log.d(TAG, "GATT hasGattService returns true");
        }
        return this.service != null;
    }

    @Deprecated
    public void play(int i) {
        this.buttonPresses = null;
        playFlash(16711680, 0, 2, 10000, LocationStatusCodes.GEOFENCE_NOT_AVAILABLE, 10000);
    }

    public void play(int i, int i2, int i3, int i4) {
        this.buttonPresses = null;
        write(SfidaUUID.SFIDA_LED_VIBR_CTRL_CHAR_UUID, new SfidaFlashPatternBuilder().setPriority(1).setInputReadTimeMs(i4).addFlash(i3, i, i2, false).build());
    }

    public void playFlash(int i, int i2, int i3, int i4, int i5, int i6) {
        int i7 = 30;
        int i8 = i4 / i5;
        if (i8 > 30) {
            i5 = i4 / 30;
        } else {
            i7 = i8;
        }
        SfidaFlashPatternBuilder sfidaFlashPatternBuilder = new SfidaFlashPatternBuilder();
        sfidaFlashPatternBuilder.setPriority(1);
        sfidaFlashPatternBuilder.setInputReadTimeMs(i6);
        for (i8 = 0; i8 < i7 / 2; i8++) {
            sfidaFlashPatternBuilder.addFlash(i5, i, i3, false);
            sfidaFlashPatternBuilder.addFlash(i5, i2, 0, false);
        }
        write(SfidaUUID.SFIDA_LED_VIBR_CTRL_CHAR_UUID, sfidaFlashPatternBuilder.build());
    }

    public void playPattern(int i, int i2, int[] iArr, int i3, int i4, int i5) {
        SfidaFlashPatternBuilder sfidaFlashPatternBuilder = new SfidaFlashPatternBuilder();
        sfidaFlashPatternBuilder.setPriority(1);
        sfidaFlashPatternBuilder.setInputReadTimeMs(i5);
        for (int i6 = 0; i6 < i3; i6++) {
            sfidaFlashPatternBuilder.addFlash(iArr[i6], i, i2, false);
            sfidaFlashPatternBuilder.addFlash(i4, 0, 0, false);
        }
        write(SfidaUUID.SFIDA_LED_VIBR_CTRL_CHAR_UUID, sfidaFlashPatternBuilder.build());
    }

    public int[] readButtonPresses() {
        if (this.buttonPresses == null || this.buttonPresses.length <= 0) {
            return new int[0];
        }
        Log.d(TAG, String.format("SFIDA readButtonPresses %s", new Object[]{this.buttonPresses.toString()}));
        int[] iArr = this.buttonPresses;
        this.buttonPresses = null;
        return iArr;
    }

    public void stop() {
        write(SfidaUUID.SFIDA_LED_VIBR_CTRL_CHAR_UUID, new SfidaFlashPatternBuilder().setPriority(7).addFlash(100, MotionEventCompat.ACTION_MASK, 0, false).build());
    }
}
