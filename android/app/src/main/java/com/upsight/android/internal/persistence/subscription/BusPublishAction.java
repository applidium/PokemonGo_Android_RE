package com.upsight.android.internal.persistence.subscription;

import com.squareup.otto.Bus;
import rx.functions.Action1;

class BusPublishAction implements Action1<DataStoreEvent> {
    private final Bus bus;

    BusPublishAction(Bus bus) {
        this.bus = bus;
    }

    public void call(DataStoreEvent dataStoreEvent) {
        this.bus.post(dataStoreEvent);
    }
}
