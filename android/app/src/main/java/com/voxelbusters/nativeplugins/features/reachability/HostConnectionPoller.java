package com.voxelbusters.nativeplugins.features.reachability;

import com.voxelbusters.nativeplugins.defines.CommonDefines;
import com.voxelbusters.nativeplugins.utilities.Debug;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;

public class HostConnectionPoller {
    private long connectionTimeOutPeriod;
    private int currentRetryCount;
    private String ip;
    private int maxRetryCount;
    private int port;
    private Future socketFutureTask;
    private float timeGapBetweenPolls;

    /* renamed from: com.voxelbusters.nativeplugins.features.reachability.HostConnectionPoller.1 */
    class C09931 implements Runnable {
        C09931() {
        }

        public void run() {
            SocketAddress inetSocketAddress = new InetSocketAddress(HostConnectionPoller.this.getIp(), HostConnectionPoller.this.getPort());
            while (true) {
                Socket socket = new Socket();
                try {
                    socket.connect(inetSocketAddress, (int) (HostConnectionPoller.this.getConnectionTimeOutPeriod() * 1000));
                    HostConnectionPoller.this.ReportConnectionSuccess();
                    socket.close();
                } catch (IOException e) {
                    HostConnectionPoller.this.ReportConnectionFailure();
                    e.printStackTrace();
                }
                try {
                    Thread.sleep((long) (HostConnectionPoller.this.timeGapBetweenPolls * 1000.0f));
                } catch (InterruptedException e2) {
                    e2.printStackTrace();
                }
            }
        }
    }

    HostConnectionPoller() {
        this.socketFutureTask = null;
        this.ip = "8.8.8.8";
        this.port = 56;
        this.connectionTimeOutPeriod = 60;
        this.maxRetryCount = 3;
        this.timeGapBetweenPolls = 2.0f;
    }

    private void ReportConnectionFailure() {
        this.currentRetryCount++;
        if (this.currentRetryCount > getMaxRetryCount()) {
            NetworkReachabilityHandler.sendSocketConnectionStatus(false);
            this.currentRetryCount = 0;
        }
    }

    private void ReportConnectionSuccess() {
        NetworkReachabilityHandler.sendSocketConnectionStatus(true);
    }

    void Start() {
        if (this.socketFutureTask != null) {
            this.socketFutureTask.cancel(true);
        }
        this.socketFutureTask = Executors.newSingleThreadExecutor().submit(new C09931());
    }

    public long getConnectionTimeOutPeriod() {
        return this.connectionTimeOutPeriod;
    }

    public String getIp() {
        return this.ip;
    }

    public int getMaxRetryCount() {
        return this.maxRetryCount;
    }

    public int getPort() {
        return this.port;
    }

    public float getTimeGapBetweenPolls() {
        return this.timeGapBetweenPolls;
    }

    public void setConnectionTimeOutPeriod(int i) {
        if (i != 0) {
            this.connectionTimeOutPeriod = (long) i;
        } else {
            Debug.warning(CommonDefines.NETWORK_CONNECTIVITY_TAG, "time out value should not be zero. Considering default 60 secs for timeout");
        }
    }

    public void setIp(String str) {
        this.ip = str;
    }

    public void setMaxRetryCount(int i) {
        this.maxRetryCount = i;
    }

    public void setPort(int i) {
        this.port = i;
    }

    public void setTimeGapBetweenPolls(float f) {
        this.timeGapBetweenPolls = f;
    }
}
