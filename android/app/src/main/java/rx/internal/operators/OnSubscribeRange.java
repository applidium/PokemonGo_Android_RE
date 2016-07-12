package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;

public final class OnSubscribeRange implements OnSubscribe<Integer> {
    private final int end;
    private final int start;

    private static final class RangeProducer implements Producer {
        private static final AtomicLongFieldUpdater<RangeProducer> REQUESTED_UPDATER;
        private final int end;
        private long index;
        private final Subscriber<? super Integer> f916o;
        private volatile long requested;

        static {
            REQUESTED_UPDATER = AtomicLongFieldUpdater.newUpdater(RangeProducer.class, "requested");
        }

        private RangeProducer(Subscriber<? super Integer> subscriber, int i, int i2) {
            this.f916o = subscriber;
            this.index = (long) i;
            this.end = i2;
        }

        public void request(long j) {
            if (this.requested != Long.MAX_VALUE) {
                long j2;
                if (j == Long.MAX_VALUE && REQUESTED_UPDATER.compareAndSet(this, 0, Long.MAX_VALUE)) {
                    j2 = this.index;
                    while (j2 <= ((long) this.end)) {
                        if (!this.f916o.isUnsubscribed()) {
                            this.f916o.onNext(Integer.valueOf((int) j2));
                            j2++;
                        } else {
                            return;
                        }
                    }
                    if (!this.f916o.isUnsubscribed()) {
                        this.f916o.onCompleted();
                    }
                } else if (j > 0 && BackpressureUtils.getAndAddRequest(REQUESTED_UPDATER, this, j) == 0) {
                    long min;
                    do {
                        j2 = this.requested;
                        long j3 = this.index;
                        long j4 = (((long) this.end) - j3) + 1;
                        min = Math.min(j4, j2);
                        Object obj = j4 <= j2 ? 1 : null;
                        j4 = min + j3;
                        while (j3 < j4) {
                            if (!this.f916o.isUnsubscribed()) {
                                this.f916o.onNext(Integer.valueOf((int) j3));
                                j3++;
                            } else {
                                return;
                            }
                        }
                        this.index = j4;
                        if (obj != null) {
                            this.f916o.onCompleted();
                            return;
                        }
                    } while (REQUESTED_UPDATER.addAndGet(this, -min) != 0);
                }
            }
        }
    }

    public OnSubscribeRange(int i, int i2) {
        this.start = i;
        this.end = i2;
    }

    public void call(Subscriber<? super Integer> subscriber) {
        subscriber.setProducer(new RangeProducer(this.start, this.end, null));
    }
}
