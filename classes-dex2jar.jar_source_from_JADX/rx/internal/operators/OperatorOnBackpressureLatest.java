package rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;

public final class OperatorOnBackpressureLatest<T> implements Operator<T, T> {

    static final class Holder {
        static final OperatorOnBackpressureLatest<Object> INSTANCE;

        static {
            INSTANCE = new OperatorOnBackpressureLatest();
        }

        Holder() {
        }
    }

    static final class LatestEmitter<T> extends AtomicLong implements Producer, Subscription, Observer<T> {
        static final Object EMPTY;
        static final long NOT_REQUESTED = -4611686018427387904L;
        private static final long serialVersionUID = -1364393685005146274L;
        final Subscriber<? super T> child;
        volatile boolean done;
        boolean emitting;
        boolean missed;
        LatestSubscriber<? super T> parent;
        Throwable terminal;
        final AtomicReference<Object> value;

        static {
            EMPTY = new Object();
        }

        public LatestEmitter(Subscriber<? super T> subscriber) {
            this.child = subscriber;
            this.value = new AtomicReference(EMPTY);
            lazySet(NOT_REQUESTED);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        void emit() {
            /*
            r8 = this;
            r1 = 1;
            r2 = 0;
            monitor-enter(r8);
            r0 = r8.emitting;	 Catch:{ all -> 0x0068 }
            if (r0 == 0) goto L_0x000c;
        L_0x0007:
            r0 = 1;
            r8.missed = r0;	 Catch:{ all -> 0x0068 }
            monitor-exit(r8);	 Catch:{ all -> 0x0068 }
        L_0x000b:
            return;
        L_0x000c:
            r0 = 1;
            r8.emitting = r0;	 Catch:{ all -> 0x0068 }
            r0 = 0;
            r8.missed = r0;	 Catch:{ all -> 0x0068 }
            monitor-exit(r8);	 Catch:{ all -> 0x0068 }
        L_0x0013:
            r4 = r8.get();	 Catch:{ all -> 0x0071 }
            r6 = -9223372036854775808;
            r0 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
            if (r0 == 0) goto L_0x000b;
        L_0x001d:
            r0 = r8.value;	 Catch:{ all -> 0x0071 }
            r0 = r0.get();	 Catch:{ all -> 0x0071 }
            r6 = 0;
            r3 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1));
            if (r3 <= 0) goto L_0x0040;
        L_0x0029:
            r3 = EMPTY;	 Catch:{ all -> 0x0071 }
            if (r0 == r3) goto L_0x0040;
        L_0x002d:
            r3 = r8.child;	 Catch:{ all -> 0x0071 }
            r3.onNext(r0);	 Catch:{ all -> 0x0071 }
            r3 = r8.value;	 Catch:{ all -> 0x0071 }
            r4 = EMPTY;	 Catch:{ all -> 0x0071 }
            r3.compareAndSet(r0, r4);	 Catch:{ all -> 0x0071 }
            r4 = 1;
            r8.produced(r4);	 Catch:{ all -> 0x0071 }
            r0 = EMPTY;	 Catch:{ all -> 0x0071 }
        L_0x0040:
            r3 = EMPTY;	 Catch:{ all -> 0x0071 }
            if (r0 != r3) goto L_0x0051;
        L_0x0044:
            r0 = r8.done;	 Catch:{ all -> 0x0071 }
            if (r0 == 0) goto L_0x0051;
        L_0x0048:
            r0 = r8.terminal;	 Catch:{ all -> 0x0071 }
            if (r0 == 0) goto L_0x006b;
        L_0x004c:
            r3 = r8.child;	 Catch:{ all -> 0x0071 }
            r3.onError(r0);	 Catch:{ all -> 0x0071 }
        L_0x0051:
            monitor-enter(r8);	 Catch:{ all -> 0x0071 }
            r0 = r8.missed;	 Catch:{ all -> 0x0078 }
            if (r0 != 0) goto L_0x0073;
        L_0x0056:
            r0 = 0;
            r8.emitting = r0;	 Catch:{ all -> 0x0078 }
            monitor-exit(r8);	 Catch:{ all -> 0x005b }
            goto L_0x000b;
        L_0x005b:
            r0 = move-exception;
        L_0x005c:
            monitor-exit(r8);	 Catch:{ all -> 0x005b }
            throw r0;	 Catch:{ all -> 0x005e }
        L_0x005e:
            r0 = move-exception;
            r2 = r1;
        L_0x0060:
            if (r2 != 0) goto L_0x0067;
        L_0x0062:
            monitor-enter(r8);
            r1 = 0;
            r8.emitting = r1;	 Catch:{ all -> 0x007b }
            monitor-exit(r8);	 Catch:{ all -> 0x007b }
        L_0x0067:
            throw r0;
        L_0x0068:
            r0 = move-exception;
            monitor-exit(r8);	 Catch:{ all -> 0x0068 }
            throw r0;
        L_0x006b:
            r0 = r8.child;	 Catch:{ all -> 0x0071 }
            r0.onCompleted();	 Catch:{ all -> 0x0071 }
            goto L_0x0051;
        L_0x0071:
            r0 = move-exception;
            goto L_0x0060;
        L_0x0073:
            r0 = 0;
            r8.missed = r0;	 Catch:{ all -> 0x0078 }
            monitor-exit(r8);	 Catch:{ all -> 0x0078 }
            goto L_0x0013;
        L_0x0078:
            r0 = move-exception;
            r1 = r2;
            goto L_0x005c;
        L_0x007b:
            r0 = move-exception;
            monitor-exit(r8);	 Catch:{ all -> 0x007b }
            throw r0;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.internal.operators.OperatorOnBackpressureLatest.LatestEmitter.emit():void");
        }

        public boolean isUnsubscribed() {
            return get() == Long.MIN_VALUE;
        }

        public void onCompleted() {
            this.done = true;
            emit();
        }

        public void onError(Throwable th) {
            this.terminal = th;
            this.done = true;
            emit();
        }

        public void onNext(T t) {
            this.value.lazySet(t);
            emit();
        }

        long produced(long j) {
            long j2;
            long j3;
            do {
                j3 = get();
                if (j3 < 0) {
                    return j3;
                }
                j2 = j3 - j;
            } while (!compareAndSet(j3, j2));
            return j2;
        }

        public void request(long j) {
            if (j >= 0) {
                long j2;
                long j3;
                do {
                    j2 = get();
                    if (j2 != Long.MIN_VALUE) {
                        if (j2 == NOT_REQUESTED) {
                            j3 = j;
                        } else {
                            j3 = j2 + j;
                            if (j3 < 0) {
                                j3 = Long.MAX_VALUE;
                            }
                        }
                    } else {
                        return;
                    }
                } while (!compareAndSet(j2, j3));
                if (j2 == NOT_REQUESTED) {
                    this.parent.requestMore(Long.MAX_VALUE);
                }
                emit();
            }
        }

        public void unsubscribe() {
            if (get() >= 0) {
                getAndSet(Long.MIN_VALUE);
            }
        }
    }

    static final class LatestSubscriber<T> extends Subscriber<T> {
        private final LatestEmitter<T> producer;

        private LatestSubscriber(LatestEmitter<T> latestEmitter) {
            this.producer = latestEmitter;
        }

        public void onCompleted() {
            this.producer.onCompleted();
        }

        public void onError(Throwable th) {
            this.producer.onError(th);
        }

        public void onNext(T t) {
            this.producer.onNext(t);
        }

        public void onStart() {
            request(0);
        }

        void requestMore(long j) {
            request(j);
        }
    }

    public static <T> OperatorOnBackpressureLatest<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object latestEmitter = new LatestEmitter(subscriber);
        Object latestSubscriber = new LatestSubscriber(null);
        latestEmitter.parent = latestSubscriber;
        subscriber.add(latestSubscriber);
        subscriber.add(latestEmitter);
        subscriber.setProducer(latestEmitter);
        return latestSubscriber;
    }
}
