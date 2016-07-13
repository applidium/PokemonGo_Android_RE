package com.nianticproject.holoholo.sfida.unity;

import android.app.Activity;
import android.app.Fragment;
import android.bluetooth.BluetoothDevice;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.util.Log;
import android.widget.Toast;
import com.google.android.gms.location.places.Place;
import com.nianticproject.holoholo.sfida.SfidaFinderFragment;
import com.nianticproject.holoholo.sfida.SfidaFinderFragment.OnDeviceDiscoveredListener;
import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.nianticproject.holoholo.sfida.SfidaUtils;
import com.nianticproject.holoholo.sfida.constants.SfidaConstants;
import com.nianticproject.holoholo.sfida.service.SfidaButtonDetector.OnClickListener;
import com.nianticproject.holoholo.sfida.service.SfidaService;
import com.nianticproject.holoholo.sfida.service.SfidaService.LocalBinder;
import com.unity3d.player.UnityPlayer;
import java.util.UUID;
import com.nianticlabs.pokemongo.BuildConfig;
import com.nianticlabs.pokemongo.R;

public class SfidaUnityPlugin implements UnityInterface {
    private static final String TAG;
    private static final int TIMEOUT = 800;
    private static final String UNITY_GAME_OBJECT = "AndroidSfidaConnection";
    private static final String UNITY_METHOD_ENTER_ENCOUNTER_STATE = "EnterEncounterState";
    private static final String UNITY_METHOD_HACK_POKESTOP = "HackPokestop";
    private static final String UNITY_METHOD_NOTIFY_CONNECTED = "OnSfidaConnected";
    private static final String UNITY_METHOD_NOTIFY_DISCONNECTED = "OnSfidaDisconnected";
    private static final String UNITY_METHOD_THROW_POKEBALL = "ThrowPokeball";
    private static SfidaUnityPlugin instance;
    private Activity activity;
    private BluetoothDevice device;
    private BroadcastReceiver gattUpdateReceiver;
    private Handler handler;
    private boolean isReceiverRegistered;
    private boolean isServiceBound;
    private boolean isSfidaConnected;
    private PeriodicVibrateRunnable runnable;
    private ServiceConnection serviceConnection;
    private SfidaService sfidaService;

    /* renamed from: com.nianticproject.holoholo.sfida.unity.SfidaUnityPlugin.1 */
    class C08011 implements ServiceConnection {
        C08011() {
        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            Log.d(SfidaUnityPlugin.TAG, "onServiceConnected()");
            SfidaUnityPlugin.this.sfidaService = ((LocalBinder) iBinder).getService();
            if (SfidaUnityPlugin.this.sfidaService.initialize()) {
                SfidaUnityPlugin.this.sfidaService.connect(SfidaUnityPlugin.this.device);
                SfidaUnityPlugin.this.isServiceBound = true;
                return;
            }
            Log.e(SfidaUnityPlugin.TAG, "Unable to initialize Bluetooth");
        }

        public void onServiceDisconnected(ComponentName componentName) {
            Log.d(SfidaUnityPlugin.TAG, "[BLE] onServiceDisconnected()");
            SfidaUnityPlugin.this.sfidaService = null;
        }
    }

    /* renamed from: com.nianticproject.holoholo.sfida.unity.SfidaUnityPlugin.2 */
    class C08022 extends BroadcastReceiver {
        C08022() {
        }

        public void onReceive(Context context, Intent intent) {
            SfidaUnityPlugin.this.onBroadcastUpdated(intent);
        }
    }

    /* renamed from: com.nianticproject.holoholo.sfida.unity.SfidaUnityPlugin.3 */
    class C08033 implements Runnable {
        C08033() {
        }

        public void run() {
            Toast.makeText(SfidaUnityPlugin.this.getActivity(), "Finding Pok\u00e9mon GO Plus.", Toast.LENGTH_SHORT).show();
        }
    }

    /* renamed from: com.nianticproject.holoholo.sfida.unity.SfidaUnityPlugin.4 */
    class C08044 extends PokestopClickCallback {
        C08044(String str) {
            super(str);
        }

        public void onClick() {
            super.onClick();
            SfidaUnityPlugin.this.sfidaService.setOnClickSfidaListener(null);
            UnityPlayer.UnitySendMessage(SfidaUnityPlugin.UNITY_GAME_OBJECT, SfidaUnityPlugin.UNITY_METHOD_HACK_POKESTOP, getId());
        }
    }

    /* renamed from: com.nianticproject.holoholo.sfida.unity.SfidaUnityPlugin.5 */
    class C08055 extends EncounterPokemonClickCallback {
        C08055(String str) {
            super(str);
        }

        public void onClick() {
            super.onClick();
            SfidaUnityPlugin.this.sfidaService.setOnClickSfidaListener(null);
            UnityPlayer.UnitySendMessage(SfidaUnityPlugin.UNITY_GAME_OBJECT, SfidaUnityPlugin.UNITY_METHOD_ENTER_ENCOUNTER_STATE, getId());
        }
    }

    /* renamed from: com.nianticproject.holoholo.sfida.unity.SfidaUnityPlugin.6 */
    class C08066 extends EncounterPokemonClickCallback {
        C08066(String str) {
            super(str);
        }

        public void onClick() {
            super.onClick();
            SfidaUnityPlugin.this.sfidaService.setOnClickSfidaListener(null);
            UnityPlayer.UnitySendMessage(SfidaUnityPlugin.UNITY_GAME_OBJECT, SfidaUnityPlugin.UNITY_METHOD_ENTER_ENCOUNTER_STATE, getId());
        }
    }

    /* renamed from: com.nianticproject.holoholo.sfida.unity.SfidaUnityPlugin.7 */
    class C08077 extends EncounterPokemonClickCallback {
        C08077(String str) {
            super(str);
        }

        public void onClick() {
            super.onClick();
            SfidaUnityPlugin.this.sfidaService.setOnClickSfidaListener(null);
            UnityPlayer.UnitySendMessage(SfidaUnityPlugin.UNITY_GAME_OBJECT, SfidaUnityPlugin.UNITY_METHOD_ENTER_ENCOUNTER_STATE, getId());
        }
    }

    /* renamed from: com.nianticproject.holoholo.sfida.unity.SfidaUnityPlugin.8 */
    class C08088 implements OnClickListener {
        C08088() {
        }

        public void onClick() {
            SfidaUnityPlugin.this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getThrewPokeball());
            SfidaUnityPlugin.this.sfidaService.setOnClickSfidaListener(null);
            UnityPlayer.UnitySendMessage(SfidaUnityPlugin.UNITY_GAME_OBJECT, SfidaUnityPlugin.UNITY_METHOD_THROW_POKEBALL, BuildConfig.FLAVOR);
        }

        public void onPress() {
        }

        public void onRelease() {
        }
    }

    private class PeriodicVibrateRunnable implements Runnable {
        Handler handler;

        public PeriodicVibrateRunnable(Handler handler) {
            this.handler = handler;
        }

        public void run() {
            Log.d(SfidaUnityPlugin.TAG, getClass().getName() + " run()");
            SfidaUnityPlugin.this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getCaptureSucceed());
            if (this.handler != null) {
                this.handler.postDelayed(this, 1000);
            }
        }

        public void stop() {
            this.handler.removeCallbacks(null);
            this.handler = null;
        }
    }

    private class SfidaDiscoveredListener implements OnDeviceDiscoveredListener {
        private SfidaDiscoveredListener() {
        }

        public void onDeviceDiscovered(BluetoothDevice bluetoothDevice, boolean z) {
            Toast.makeText(SfidaUnityPlugin.this.getActivity(), "Pok\u00e9mon GO Plus discovered.", Toast.LENGTH_SHORT).show();
            SfidaUnityPlugin.this.stopScanSfida();
            SfidaUnityPlugin.this.startSfidaConnection(bluetoothDevice);
        }
    }

    static {
        TAG = SfidaUnityPlugin.class.getSimpleName();
        instance = new SfidaUnityPlugin();
    }

    public SfidaUnityPlugin() {
        this.isServiceBound = false;
        this.isReceiverRegistered = false;
        this.isSfidaConnected = false;
        this.serviceConnection = new C08011();
        this.gattUpdateReceiver = new C08022();
    }

    private void addSfidaFinderFragment() {
        SfidaFinderFragment createInstance = SfidaFinderFragment.createInstance();
        createInstance.setOnDeviceDiscoveredListener(new SfidaDiscoveredListener());
        getActivity().getFragmentManager().beginTransaction().add(createInstance, SfidaFinderFragment.class.getName()).commit();
    }

    private Activity getActivity() {
        return this.activity != null ? this.activity : UnityPlayer.currentActivity;
    }

    private Context getContext() {
        return getActivity().getApplicationContext();
    }

    public static SfidaUnityPlugin getInstance() {
        return instance;
    }

    private SfidaFinderFragment getSfidaFinderFragment() {
        return (SfidaFinderFragment) getActivity().getFragmentManager().findFragmentByTag(SfidaFinderFragment.class.getName());
    }

    private boolean isEnableSfida() {
        return this.sfidaService != null && this.isSfidaConnected;
    }

    private IntentFilter makeGattUpdateIntentFilter() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(SfidaConstants.ACTION_GATT_CONNECTED);
        intentFilter.addAction(SfidaConstants.ACTION_GATT_DISCONNECTED);
        intentFilter.addAction(SfidaConstants.ACTION_DATA_AVAILABLE);
        intentFilter.addAction(SfidaConstants.ACTION_CERTIFICATE_COMPLETE);
        intentFilter.addAction("android.bluetooth.device.action.BOND_STATE_CHANGED");
        return intentFilter;
    }

    private boolean notifyPokeballBrokenOneShakeThree() {
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getPokeballShakeThree());
    }

    private boolean notifyPokeballBrokenShakeOnce() {
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getPokeballShakeOnce());
    }

    private boolean notifyPokeballBrokenShakeTwice() {
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getPokeballShakeTwice());
    }

    private void onBroadcastUpdated(Intent intent) {
        String action = intent.getAction();
        Log.d(TAG, "onBroadcastUpdated() " + action);
        switch (action) {
            case SfidaConstants.ACTION_GATT_CONNECTED:
                this.isSfidaConnected = true;
                break;
            case SfidaConstants.ACTION_GATT_DISCONNECTED:
                this.isSfidaConnected = false;
                Toast.makeText(getActivity(), "PokemonGoPlus disconnected", Toast.LENGTH_LONG).show();
                UnityPlayer.UnitySendMessage(UNITY_GAME_OBJECT, UNITY_METHOD_NOTIFY_DISCONNECTED, BuildConfig.FLAVOR);
                break;
            case SfidaConstants.ACTION_BOND_CANCELED:
                Toast.makeText(getActivity(), "Canceled pairing. Retry or refresh Pok\u00e9mon GO Plus connection.", Toast.LENGTH_LONG).show();
                break;
            case SfidaConstants.ACTION_DATA_AVAILABLE:
                Bundle extras = intent.getExtras();
                if (extras == null) {
                    Log.wtf(TAG, "ops!");
                    return;
                }
                UUID uuid = (UUID) extras.getSerializable(SfidaService.EXTRA_DATA_CHARACTERISTIC);
                if (uuid == null) {
                    Log.d(TAG, "characteristicUUID is Null");
                } else if (uuid.equals(SfidaMessage.UUID_FW_VERSION_CHAR)) {
                    Log.d(TAG, "SFIDA Version : " + extras.getString(SfidaService.EXTRA_DATA_RAW));
                } else {
                    Log.d(TAG, "[BLE] raw data " + SfidaUtils.byteArrayToString(extras.getByteArray(SfidaService.EXTRA_DATA_RAW)));
                }
                break;
            case SfidaConstants.ACTION_CREATE_BOND:
                Toast.makeText(getActivity(), "Pairing...\nClick Plus again.", Toast.LENGTH_LONG).show();
                break;
            case SfidaConstants.ACTION_CERTIFICATE_COMPLETE:
                Toast.makeText(getActivity(), "Pok\u00e9mon GO Plus connected.", Toast.LENGTH_SHORT).show();
                UnityPlayer.UnitySendMessage(UNITY_GAME_OBJECT, UNITY_METHOD_NOTIFY_CONNECTED, BuildConfig.FLAVOR);
                break;
        }
    }

    private void readFwVersion() {
        this.sfidaService.readFwVersionMessage();
    }

    private void registerReceiver() {
        getActivity().registerReceiver(this.gattUpdateReceiver, makeGattUpdateIntentFilter());
        this.isReceiverRegistered = true;
    }

    private void startScanSfida() {
        SfidaFinderFragment sfidaFinderFragment = getSfidaFinderFragment();
        if (sfidaFinderFragment != null) {
            sfidaFinderFragment.executeFindSfida();
        }
    }

    private void startSfidaConnection(BluetoothDevice bluetoothDevice) {
        this.device = bluetoothDevice;
        if (this.isServiceBound) {
            this.sfidaService.connect(bluetoothDevice);
            return;
        }
        getActivity().bindService(new Intent(getActivity(), SfidaService.class), this.serviceConnection, Context.BIND_AUTO_CREATE);
    }

    private void stopScanSfida() {
        SfidaFinderFragment sfidaFinderFragment = getSfidaFinderFragment();
        if (sfidaFinderFragment != null) {
            sfidaFinderFragment.cancelFindSfida();
        }
    }

    public void connect() {
        Log.d(TAG, "connect()");
        getActivity().runOnUiThread(new C08033());
        startScanSfida();
    }

    public void disconnect() {
        Log.d(TAG, "disconnect()");
        if (this.sfidaService != null && this.isSfidaConnected) {
            this.sfidaService.disconnectBluetooth();
        }
    }

    public boolean init() {
        Log.d(TAG, "init()");
        if (VERSION.SDK_INT < 18) {
            return false;
        }
        addSfidaFinderFragment();
        registerReceiver();
        return true;
    }

    public boolean notifyCancel() {
        Log.d(TAG, "notifyCancel()");
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getCancelPattern());
    }

    public boolean notifyCancelDowser() {
        Log.d(TAG, "notifyCancelDowser()");
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getDowserCancel());
    }

    public boolean notifyError() {
        Log.d(TAG, "notifyError()");
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getError());
    }

    public boolean notifyFoundDowser() {
        Log.d(TAG, "notifyFoundDowser()");
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getDowserVisible());
    }

    public boolean notifyNoPokeball() {
        Log.d(TAG, "notifyNoPokeball()");
        return !isEnableSfida() ? false : this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getNoPokeball());
    }

    public boolean notifyPokeballShakeAndBroken(String str) {
        Log.d(TAG, "notifyPokeballShakeAndBroken() shakeCount : " + str);
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        switch (Integer.valueOf(str).intValue()) {
            case R.styleable.AdsAttrs_adSize /*0*/:
                return true;
            case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                return notifyPokeballBrokenShakeOnce();
            case R.styleable.LoadingImageView_circleCrop /*2*/:
                return notifyPokeballBrokenShakeTwice();
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                return notifyPokeballBrokenOneShakeThree();
            default:
                return false;
        }
    }

    public boolean notifyPokemonCaught() {
        Log.d(TAG, "notifyPokemonCaught()");
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getPokemonCaught());
    }

    public boolean notifyProximityDowser(String str) {
        Log.d(TAG, "notifyProximityDowser()");
        if (!isEnableSfida()) {
            return false;
        }
        byte[] dowserProximity1;
        this.sfidaService.setOnClickSfidaListener(null);
        switch (Integer.valueOf(str).intValue()) {
            case R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                dowserProximity1 = SfidaMessage.getDowserProximity1();
                break;
            case R.styleable.LoadingImageView_circleCrop /*2*/:
                dowserProximity1 = SfidaMessage.getDowserProximity2();
                break;
            case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                dowserProximity1 = SfidaMessage.getDowserProximity3();
                break;
            case Place.TYPE_AQUARIUM /*4*/:
                dowserProximity1 = SfidaMessage.getDowserProximity4();
                break;
            case Place.TYPE_ART_GALLERY /*5*/:
                dowserProximity1 = SfidaMessage.getDowserProximity5();
                break;
            default:
                return false;
        }
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, dowserProximity1);
    }

    public boolean notifyReachedPokestop(String str) {
        Log.d(TAG, "notifyReachedPokestop() id : " + str);
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(new C08044(str));
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getReachedPokestop());
    }

    public boolean notifyReadyForThrowPokeball(String str) {
        Log.d(TAG, "notifyReadyForThrowPokeball() : " + str);
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(new C08088());
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getReadyForThrowPokeball());
    }

    public boolean notifyRewardItems(String str) {
        Log.d(TAG, "notifyRewardItems() count : " + str);
        return !isEnableSfida() ? false : this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getRewardItems(Integer.valueOf(str).intValue()));
    }

    public boolean notifySpawnedLegendaryPokemon(String str) {
        Log.d(TAG, "notifySpawnedLegendaryPokemon() id : " + str);
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(new C08077(str));
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getSpawnedLegendaryPokemon());
    }

    public boolean notifySpawnedPokemon(String str) {
        Log.d(TAG, "notifySpawnedPokemon() id : " + str);
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(new C08055(str));
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getSpawnedPokemon());
    }

    public boolean notifySpawnedUncaughtPokemon(String str) {
        Log.d(TAG, "notifySpawnedUncaughtPokemon() id : " + str);
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(new C08066(str));
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getSpawnedUncaughtPokemon());
    }

    public boolean notifyStartDowser() {
        Log.d(TAG, "notifyStartDowser()");
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getDonePattern());
    }

    public boolean oneShotVibrate() {
        if (!isEnableSfida()) {
            return false;
        }
        this.sfidaService.setOnClickSfidaListener(null);
        return this.sfidaService.sendDeviceControlMessage(SfidaMessage.UUID_LED_VIBRATE_CTRL_CHAR, SfidaMessage.getCaptureSucceed());
    }

    public void releaseSfida() {
        Log.d(TAG, "releaseSfida()");
        if (this.isReceiverRegistered) {
            getActivity().unregisterReceiver(this.gattUpdateReceiver);
        } else {
            Log.d(TAG, "releaseSfida() isNotReceiverRegistered");
        }
        if (this.isServiceBound) {
            getActivity().unbindService(this.serviceConnection);
            this.isServiceBound = false;
        }
        if (this.handler != null) {
            this.handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
    }

    public void setActivity(Activity activity) {
        this.activity = activity;
    }
}
