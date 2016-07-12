package com.upsight.android.analytics.internal.dispatcher.routing;

import com.nianticproject.holoholo.sfida.SfidaMessage;
import com.upsight.android.analytics.dispatcher.EndpointResponse;
import com.upsight.android.analytics.internal.DataStoreRecord;
import com.upsight.android.analytics.internal.dispatcher.delivery.OnDeliveryListener;
import com.upsight.android.analytics.internal.dispatcher.delivery.OnResponseListener;
import com.upsight.android.analytics.internal.dispatcher.routing.Packet.State;
import com.upsight.android.analytics.internal.dispatcher.util.ByFilterSelector;
import java.util.concurrent.atomic.AtomicInteger;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.functions.Action0;
import spacemadness.com.lunarconsole.C1401R;

public class Router implements OnDeliveryListener, OnResponseListener {
    private final AtomicInteger mEventsInRouting;
    private boolean mIsFinishRequested;
    private final ByFilterSelector<Route> mRouteSelector;
    private final RoutingListener mRoutingListener;
    private final Worker mWorker;

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.routing.Router.1 */
    class C08951 implements Action0 {
        final /* synthetic */ Packet val$packet;

        C08951(Packet packet) {
            this.val$packet = packet;
        }

        public void call() {
            switch (C08973.f265xeabca321[this.val$packet.getState().ordinal()]) {
                case C1401R.styleable.LoadingImageView_imageAspectRatio /*1*/:
                    if (this.val$packet.hasMoreOptionsToTry()) {
                        this.val$packet.routeToNext();
                        return;
                    }
                    Router.this.mRoutingListener.onDelivery(this.val$packet.getRecord(), false, false, this.val$packet.getDeliveryHistory());
                    Router.this.finishPacket();
                case C1401R.styleable.LoadingImageView_circleCrop /*2*/:
                    Router.this.mRoutingListener.onDelivery(this.val$packet.getRecord(), true, false, null);
                    Router.this.finishPacket();
                case SfidaMessage.ACTIVITY_BYTE_LENGTH /*3*/:
                    Router.this.mRoutingListener.onDelivery(this.val$packet.getRecord(), false, true, this.val$packet.getDeliveryHistory());
                    Router.this.finishPacket();
                default:
            }
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.routing.Router.2 */
    class C08962 implements Action0 {
        final /* synthetic */ EndpointResponse val$response;

        C08962(EndpointResponse endpointResponse) {
            this.val$response = endpointResponse;
        }

        public void call() {
            Router.this.mRoutingListener.onResponse(this.val$response);
        }
    }

    /* renamed from: com.upsight.android.analytics.internal.dispatcher.routing.Router.3 */
    static /* synthetic */ class C08973 {
        static final /* synthetic */ int[] f265xeabca321;

        static {
            f265xeabca321 = new int[State.values().length];
            try {
                f265xeabca321[State.UNDELIVERED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f265xeabca321[State.DELIVERED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f265xeabca321[State.TRASHED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    Router(Scheduler scheduler, ByFilterSelector<Route> byFilterSelector, RoutingListener routingListener) {
        this.mEventsInRouting = new AtomicInteger();
        this.mWorker = scheduler.createWorker();
        this.mRouteSelector = byFilterSelector;
        this.mRoutingListener = routingListener;
    }

    private void finishPacket() {
        int decrementAndGet = this.mEventsInRouting.decrementAndGet();
        if (this.mIsFinishRequested && decrementAndGet == 0) {
            this.mRoutingListener.onRoutingFinished(this);
        }
    }

    public void finishRouting() {
        this.mIsFinishRequested = true;
        if (this.mEventsInRouting.get() == 0) {
            this.mRoutingListener.onRoutingFinished(this);
        }
    }

    public void onDelivery(Packet packet) {
        this.mWorker.schedule(new C08951(packet));
    }

    public void onResponse(EndpointResponse endpointResponse) {
        this.mWorker.schedule(new C08962(endpointResponse));
    }

    public boolean routeEvent(DataStoreRecord dataStoreRecord) {
        if (this.mIsFinishRequested) {
            throw new IllegalStateException("Router is requested to finish routing");
        }
        Route route = (Route) this.mRouteSelector.select(dataStoreRecord.getSourceType());
        if (route == null || route.getStepsCount() == 0) {
            return false;
        }
        new Packet(dataStoreRecord, new Route(route)).routeToNext();
        this.mEventsInRouting.incrementAndGet();
        return true;
    }
}
