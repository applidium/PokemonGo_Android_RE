package com.upsight.android.internal.persistence.subscription;

import com.squareup.otto.Bus;
import com.squareup.otto.Subscribe;
import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.functions.Action0;
import rx.subscriptions.Subscriptions;

class OnSubscribeBus implements OnSubscribe<DataStoreEvent> {
    private final Bus mBus;

    /* renamed from: com.upsight.android.internal.persistence.subscription.OnSubscribeBus.1 */
    class C09321 implements Action0 {
        final /* synthetic */ BusAdapter val$adapter;

        C09321(BusAdapter busAdapter) {
            this.val$adapter = busAdapter;
        }

        public void call() {
            OnSubscribeBus.this.mBus.unregister(this.val$adapter);
        }
    }

    private static class BusAdapter {
        private final Subscriber<? super DataStoreEvent> mChild;

        private BusAdapter(Subscriber<? super DataStoreEvent> subscriber) {
            this.mChild = subscriber;
        }

        @Subscribe
        public void onPersistenceEvent(DataStoreEvent dataStoreEvent) {
            if (!this.mChild.isUnsubscribed()) {
                this.mChild.onNext(dataStoreEvent);
            }
        }
    }

    OnSubscribeBus(Bus bus) {
        this.mBus = bus;
    }

    public void call(Subscriber<? super DataStoreEvent> subscriber) {
        BusAdapter busAdapter = new BusAdapter(null);
        this.mBus.register(busAdapter);
        subscriber.add(Subscriptions.create(new C09321(busAdapter)));
    }
}
