package com.voxelbusters.nativeplugins.features.reachability;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;

public class ConnectivityListener extends BroadcastReceiver {
    boolean isConnected;

    public void onReceive(Context context, Intent intent) {
        updateConnectionStatus(context);
    }

    public void updateConnectionStatus(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        boolean z = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        NetworkReachabilityHandler.sendWifiReachabilityStatus(z);
    }
}
