package com.upsight.android.analytics.internal.dispatcher.routing;

import com.upsight.android.analytics.internal.DataStoreRecord;

public class Packet {
    private final DataStoreRecord mEvent;
    private final Route mRoute;
    private State mState;
    private boolean mTriedOnCurrentStep;

    public enum State {
        UNDELIVERED,
        DELIVERED,
        TRASHED
    }

    Packet(DataStoreRecord dataStoreRecord, Route route) {
        this.mState = State.UNDELIVERED;
        this.mEvent = dataStoreRecord;
        this.mRoute = route;
    }

    public void failAndRoute(String str) {
        if (State.DELIVERED.equals(this.mState)) {
            throw new IllegalStateException("Packet could not be failed because it was already delivered successfully");
        }
        this.mRoute.failedOnCurrentStep(str);
        if (this.mRoute.hasMoreSteps()) {
            this.mTriedOnCurrentStep = false;
            this.mRoute.moveToNextStep();
        }
    }

    public String getDeliveryHistory() {
        String[] routingStack = this.mRoute.getRoutingStack();
        StringBuilder stringBuilder = new StringBuilder();
        for (String append : routingStack) {
            stringBuilder.append(append).append('\n');
        }
        return stringBuilder.deleteCharAt(stringBuilder.length() - 1).toString();
    }

    public DataStoreRecord getRecord() {
        return this.mEvent;
    }

    public State getState() {
        return this.mState;
    }

    public boolean hasMoreOptionsToTry() {
        return this.mRoute.hasMoreSteps() || !this.mTriedOnCurrentStep;
    }

    public void markDelivered() {
        this.mState = State.DELIVERED;
    }

    public void markTrashed() {
        this.mState = State.TRASHED;
    }

    public void routeToNext() {
        this.mTriedOnCurrentStep = true;
        this.mRoute.getCurrentQueue().enqueuePacket(this);
    }
}
