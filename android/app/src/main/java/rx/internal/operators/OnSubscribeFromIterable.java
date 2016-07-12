package rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;

public final class OnSubscribeFromIterable<T> implements OnSubscribe<T> {
    final Iterable<? extends T> is;

    private static final class IterableProducer<T> implements Producer {
        private static final AtomicLongFieldUpdater<IterableProducer> REQUESTED_UPDATER;
        private final Iterator<? extends T> it;
        private final Subscriber<? super T> f915o;
        private volatile long requested;

        static {
            REQUESTED_UPDATER = AtomicLongFieldUpdater.newUpdater(IterableProducer.class, "requested");
        }

        private IterableProducer(Subscriber<? super T> subscriber, Iterator<? extends T> it) {
            this.requested = 0;
            this.f915o = subscriber;
            this.it = it;
        }

        public void request(long j) {
            if (this.requested != Long.MAX_VALUE) {
                if (j == Long.MAX_VALUE && REQUESTED_UPDATER.compareAndSet(this, 0, Long.MAX_VALUE)) {
                    while (!this.f915o.isUnsubscribed()) {
                        if (this.it.hasNext()) {
                            this.f915o.onNext(this.it.next());
                        } else if (!this.f915o.isUnsubscribed()) {
                            this.f915o.onCompleted();
                            return;
                        } else {
                            return;
                        }
                    }
                } else if (j > 0 && BackpressureUtils.getAndAddRequest(REQUESTED_UPDATER, this, j) == 0) {
                    long j2;
                    do {
                        j2 = this.requested;
                        long j3 = j2;
                        while (!this.f915o.isUnsubscribed()) {
                            if (this.it.hasNext()) {
                                j3--;
                                if (j3 >= 0) {
                                    this.f915o.onNext(this.it.next());
                                }
                            } else if (!this.f915o.isUnsubscribed()) {
                                this.f915o.onCompleted();
                                return;
                            } else {
                                return;
                            }
                        }
                        return;
                    } while (REQUESTED_UPDATER.addAndGet(this, -j2) != 0);
                }
            }
        }
    }

    public OnSubscribeFromIterable(Iterable<? extends T> iterable) {
        if (iterable == null) {
            throw new NullPointerException("iterable must not be null");
        }
        this.is = iterable;
    }

    public void call(Subscriber<? super T> subscriber) {
        Iterator it = this.is.iterator();
        if (it.hasNext() || subscriber.isUnsubscribed()) {
            subscriber.setProducer(new IterableProducer(it, null));
        } else {
            subscriber.onCompleted();
        }
    }
}
