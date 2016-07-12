package com.upsight.android.analytics.internal.dispatcher.delivery;

import android.text.TextUtils;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.upsight.android.UpsightContext;
import com.upsight.android.analytics.dispatcher.EndpointResponse;
import com.upsight.android.analytics.internal.dispatcher.delivery.ResponseParser.Response;
import com.upsight.android.analytics.internal.dispatcher.routing.Packet;
import com.upsight.android.analytics.internal.dispatcher.schema.Schema;
import com.upsight.android.analytics.internal.session.Clock;
import com.upsight.android.internal.util.NetworkHelper;
import com.upsight.android.logger.UpsightLogger;
import java.io.IOException;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.ReentrantLock;
import rx.Scheduler;
import rx.functions.Action0;

public class BatchSender {
    private Scheduler mBatchSendExecutor;
    private final Clock mClock;
    private Config mConfig;
    private OnDeliveryListener mDeliveryListener;
    private UpsightEndpoint mEndpoint;
    private ReentrantLock mListenersLock;
    private final UpsightLogger mLogger;
    private ObjectMapper mObjectMapper;
    private OnResponseListener mResponseListener;
    private ResponseParser mResponseParser;
    private Scheduler mRetryExecutor;
    private ConcurrentMap<Request, Integer> mTryCounts;
    private UpsightContext mUpsight;

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.delivery.BatchSender.1 */
    class C08911 implements Action0 {
        final /* synthetic */ Request val$request;

        C08911(Request request) {
            this.val$request = request;
        }

        public void call() {
            new BatchSendTask(this.val$request).run();
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.delivery.BatchSender.2 */
    class C08922 implements Action0 {
        final /* synthetic */ Request val$request;

        C08922(Request request) {
            this.val$request = request;
        }

        public void call() {
            new RetryTask(this.val$request).run();
        }
    }

    private class BatchSendTask implements Runnable {
        public static final String NETWORK_ERROR = "Network communication problems";
        private Request mRequest;

        public BatchSendTask(Request request) {
            this.mRequest = request;
        }

        public void run() {
            if (NetworkHelper.isConnected(BatchSender.this.mUpsight)) {
                try {
                    Response response;
                    UpsightEndpoint.Response send = BatchSender.this.mEndpoint.send(new UpsightRequest(BatchSender.this.mUpsight, this.mRequest, BatchSender.this.mObjectMapper, BatchSender.this.mClock, BatchSender.this.mLogger));
                    if (TextUtils.isEmpty(send.body)) {
                        response = null;
                    } else {
                        response = BatchSender.this.mResponseParser.parse(send.body);
                        BatchSender.this.notifyResponseListener(response.responses);
                    }
                    if (send.isOk()) {
                        BatchSender.this.sendSucceeded(this.mRequest);
                        return;
                    }
                    BatchSender.this.mLogger.m199e("BatchSender", "Received " + send.statusCode + " HTTP response code from server", new Object[0]);
                    BatchSender.this.sendFailed(this.mRequest, FailReason.SERVER, response != null ? response.error : null);
                    return;
                } catch (IOException e) {
                    BatchSender.this.sendFailed(this.mRequest, FailReason.NETWORK, NETWORK_ERROR);
                    return;
                }
            }
            BatchSender.this.sendFailed(this.mRequest, FailReason.NETWORK, NETWORK_ERROR);
        }
    }

    public static class Config {
        public final boolean countNetworkFail;
        public final int maxRetryCount;
        public final int retryInterval;

        public Config(boolean z, int i, int i2) {
            this.countNetworkFail = z;
            this.retryInterval = i;
            this.maxRetryCount = i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Config config = (Config) obj;
            return config.countNetworkFail == this.countNetworkFail && config.retryInterval == this.retryInterval && config.maxRetryCount == this.maxRetryCount;
        }

        public boolean isValid() {
            return this.retryInterval > 0 && this.maxRetryCount >= 0;
        }
    }

    private enum FailReason {
        SERVER,
        NETWORK
    }

    public static final class Request {
        public final Batch batch;
        public final Schema schema;

        public Request(Batch batch, Schema schema) {
            this.batch = batch;
            this.schema = schema;
        }
    }

    private class RetryTask implements Runnable {
        private Request mRequest;

        public RetryTask(Request request) {
            this.mRequest = request;
        }

        public void run() {
            BatchSender.this.submitRequest(this.mRequest);
        }
    }

    BatchSender(UpsightContext upsightContext, Config config, Scheduler scheduler, Scheduler scheduler2, UpsightEndpoint upsightEndpoint, ResponseParser responseParser, ObjectMapper objectMapper, Clock clock, UpsightLogger upsightLogger) {
        this.mUpsight = upsightContext;
        this.mEndpoint = upsightEndpoint;
        this.mConfig = config;
        this.mRetryExecutor = scheduler;
        this.mObjectMapper = objectMapper;
        this.mBatchSendExecutor = scheduler2;
        this.mTryCounts = new ConcurrentHashMap();
        this.mListenersLock = new ReentrantLock();
        this.mResponseParser = responseParser;
        this.mClock = clock;
        this.mLogger = upsightLogger;
    }

    private void notifyDeliveryListener(Batch batch) {
        this.mListenersLock.lock();
        try {
            if (this.mDeliveryListener != null) {
                for (Packet onDelivery : batch.getPackets()) {
                    this.mDeliveryListener.onDelivery(onDelivery);
                }
            }
            this.mListenersLock.unlock();
        } catch (Throwable th) {
            this.mListenersLock.unlock();
        }
    }

    private void notifyResponseListener(Collection<EndpointResponse> collection) {
        this.mListenersLock.lock();
        try {
            if (this.mResponseListener != null) {
                for (EndpointResponse onResponse : collection) {
                    this.mResponseListener.onResponse(onResponse);
                }
            }
            this.mListenersLock.unlock();
        } catch (Throwable th) {
            this.mListenersLock.unlock();
        }
    }

    private void sendFailed(Request request, FailReason failReason, String str) {
        Object obj = (Integer) this.mTryCounts.get(request);
        if (obj == null) {
            obj = Integer.valueOf(this.mConfig.maxRetryCount);
        }
        if (obj.intValue() > 0) {
            if (failReason != FailReason.NETWORK || this.mConfig.countNetworkFail) {
                obj = Integer.valueOf(obj.intValue() - 1);
            }
            this.mTryCounts.put(request, obj);
            this.mRetryExecutor.createWorker().schedule(new C08922(request), (long) this.mConfig.retryInterval, TimeUnit.SECONDS);
            return;
        }
        this.mTryCounts.remove(request);
        for (Packet failAndRoute : request.batch.getPackets()) {
            failAndRoute.failAndRoute(str);
        }
        notifyDeliveryListener(request.batch);
    }

    private void sendSucceeded(Request request) {
        this.mTryCounts.remove(request);
        for (Packet markDelivered : request.batch.getPackets()) {
            markDelivered.markDelivered();
        }
        notifyDeliveryListener(request.batch);
    }

    public void setDeliveryListener(OnDeliveryListener onDeliveryListener) {
        this.mListenersLock.lock();
        try {
            this.mDeliveryListener = onDeliveryListener;
        } finally {
            this.mListenersLock.unlock();
        }
    }

    public void setResponseListener(OnResponseListener onResponseListener) {
        this.mListenersLock.lock();
        try {
            this.mResponseListener = onResponseListener;
        } finally {
            this.mListenersLock.unlock();
        }
    }

    public void submitRequest(Request request) {
        this.mBatchSendExecutor.createWorker().schedule(new C08911(request));
    }
}
