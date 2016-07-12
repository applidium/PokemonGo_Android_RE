package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.analytics.internal.dispatcher.delivery.Queue;

class RouteStep {
    private String mFailureReason;
    private Queue mQueue;

    public RouteStep(Queue queue) {
        this.mQueue = queue;
    }

    public RouteStep(RouteStep routeStep) {
        this(routeStep.mQueue);
    }

    public String getFailureReason() {
        return this.mFailureReason;
    }

    public Queue getQueue() {
        return this.mQueue;
    }

    public void setFailureReason(String str) {
        this.mFailureReason = str;
    }
}
