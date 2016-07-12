package com.voxelbusters.nativeplugins.features.reachability;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import com.voxelbusters.NativeBinding;
import com.voxelbusters.nativeplugins.NativePluginHelper;
import com.voxelbusters.nativeplugins.base.interfaces.IAppLifeCycleListener;
import com.voxelbusters.nativeplugins.defines.CommonDefines;
import com.voxelbusters.nativeplugins.defines.UnityDefines.Reachability;
import com.voxelbusters.nativeplugins.utilities.Debug;

public class NetworkReachabilityHandler implements IAppLifeCycleListener {
    private static NetworkReachabilityHandler INSTANCE;
    static boolean isSocketConnected;
    static boolean isWifiReachable;
    ConnectivityListener connectivityListener;
    Context context;
    HostConnectionPoller socketPoller;

    static {
        isWifiReachable = false;
        isSocketConnected = false;
    }

    private NetworkReachabilityHandler() {
        this.socketPoller = new HostConnectionPoller();
    }

    public static NetworkReachabilityHandler getInstance() {
        if (INSTANCE == null) {
            INSTANCE = new NetworkReachabilityHandler();
        }
        return INSTANCE;
    }

    public static void sendSocketConnectionStatus(boolean z) {
        if (isSocketConnected != z) {
            isSocketConnected = z;
            NativePluginHelper.sendMessage(Reachability.NETWORK_CONNECTIVITY_SOCKET_STATUS_CHANGE, isSocketConnected ? "true" : "false");
        }
    }

    public static void sendWifiReachabilityStatus(boolean z) {
        if (isWifiReachable != z) {
            isWifiReachable = z;
            NativePluginHelper.sendMessage(Reachability.NETWORK_CONNECTIVITY_HARDWARE_STATUS_CHANGE, isWifiReachable ? "true" : "false");
        }
    }

    void StartSocketPoller(String str, int i, float f, int i2, int i3) {
        this.socketPoller.setIp(str);
        this.socketPoller.setPort(i);
        this.socketPoller.setConnectionTimeOutPeriod(i2);
        this.socketPoller.setMaxRetryCount(i3);
        this.socketPoller.setTimeGapBetweenPolls(f);
        this.socketPoller.Start();
    }

    void StartTestingNetworkHardware() {
        pauseReachability();
        this.connectivityListener = new ConnectivityListener();
        registerBroadcastReceiver(this.connectivityListener);
        this.connectivityListener.updateConnectionStatus(this.context);
    }

    public void initialize(String str, int i, float f, int i2, int i3) {
        this.context = NativePluginHelper.getCurrentContext();
        StartTestingNetworkHardware();
        StartSocketPoller(str, i, f, i2, i3);
        NativeBinding.addAppLifeCycleListener(this);
    }

    public void onApplicationPause() {
    }

    public void onApplicationQuit() {
        pauseReachability();
        NativeBinding.removeAppLifeCycleListener(this);
    }

    public void onApplicationResume() {
    }

    public void pauseReachability() {
        try {
            this.context.unregisterReceiver(this.connectivityListener);
        } catch (IllegalArgumentException e) {
            Debug.warning(CommonDefines.NETWORK_CONNECTIVITY_TAG, "Already unregistered!" + e.getMessage());
        }
    }

    void registerBroadcastReceiver(BroadcastReceiver broadcastReceiver) {
        IntentFilter intentFilter = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
        IntentFilter intentFilter2 = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
        IntentFilter intentFilter3 = new IntentFilter("android.net.wifi.STATE_CHANGE");
        this.context.registerReceiver(broadcastReceiver, intentFilter);
        this.context.registerReceiver(broadcastReceiver, intentFilter2);
        this.context.registerReceiver(broadcastReceiver, intentFilter3);
    }

    public void resumeReachability() {
        try {
            registerBroadcastReceiver(this.connectivityListener);
            this.connectivityListener.updateConnectionStatus(this.context);
        } catch (IllegalArgumentException e) {
            Debug.warning(CommonDefines.NETWORK_CONNECTIVITY_TAG, "Already registered! " + e.getMessage());
        }
    }
}
