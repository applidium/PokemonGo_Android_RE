package rx.internal.producers;

import java.util.ArrayList;
import java.util.List;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;

public final class ProducerObserverArbiter<T> implements Producer, Observer<T> {
    static final Producer NULL_PRODUCER;
    final Subscriber<? super T> child;
    Producer currentProducer;
    boolean emitting;
    volatile boolean hasError;
    Producer missedProducer;
    long missedRequested;
    Object missedTerminal;
    List<T> queue;
    long requested;

    /* renamed from: rx.internal.producers.ProducerObserverArbiter.1 */
    static final class C13461 implements Producer {
        C13461() {
        }

        public void request(long j) {
        }
    }

    static {
        NULL_PRODUCER = new C13461();
    }

    public ProducerObserverArbiter(Subscriber<? super T> subscriber) {
        this.child = subscriber;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    void emitLoop() {
        /*
        r10 = this;
        r4 = r10.child;
    L_0x0002:
        monitor-enter(r10);
        r6 = r10.missedRequested;	 Catch:{ all -> 0x003f }
        r5 = r10.missedProducer;	 Catch:{ all -> 0x003f }
        r0 = r10.missedTerminal;	 Catch:{ all -> 0x003f }
        r2 = r10.queue;	 Catch:{ all -> 0x003f }
        r8 = 0;
        r1 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r1 != 0) goto L_0x001c;
    L_0x0011:
        if (r5 != 0) goto L_0x001c;
    L_0x0013:
        if (r2 != 0) goto L_0x001c;
    L_0x0015:
        if (r0 != 0) goto L_0x001c;
    L_0x0017:
        r0 = 0;
        r10.emitting = r0;	 Catch:{ all -> 0x003f }
        monitor-exit(r10);	 Catch:{ all -> 0x003f }
    L_0x001b:
        return;
    L_0x001c:
        r8 = 0;
        r10.missedRequested = r8;	 Catch:{ all -> 0x003f }
        r1 = 0;
        r10.missedProducer = r1;	 Catch:{ all -> 0x003f }
        r1 = 0;
        r10.queue = r1;	 Catch:{ all -> 0x003f }
        r1 = 0;
        r10.missedTerminal = r1;	 Catch:{ all -> 0x003f }
        monitor-exit(r10);	 Catch:{ all -> 0x003f }
        if (r2 == 0) goto L_0x0032;
    L_0x002c:
        r1 = r2.isEmpty();
        if (r1 == 0) goto L_0x0042;
    L_0x0032:
        r1 = 1;
    L_0x0033:
        if (r0 == 0) goto L_0x004a;
    L_0x0035:
        r3 = java.lang.Boolean.TRUE;
        if (r0 == r3) goto L_0x0044;
    L_0x0039:
        r0 = (java.lang.Throwable) r0;
        r4.onError(r0);
        goto L_0x001b;
    L_0x003f:
        r0 = move-exception;
        monitor-exit(r10);	 Catch:{ all -> 0x003f }
        throw r0;
    L_0x0042:
        r1 = 0;
        goto L_0x0033;
    L_0x0044:
        if (r1 == 0) goto L_0x004a;
    L_0x0046:
        r4.onCompleted();
        goto L_0x001b;
    L_0x004a:
        r0 = 0;
        if (r2 == 0) goto L_0x007e;
    L_0x004e:
        r0 = r2.iterator();
    L_0x0052:
        r1 = r0.hasNext();
        if (r1 == 0) goto L_0x0076;
    L_0x0058:
        r1 = r0.next();
        r3 = r4.isUnsubscribed();
        if (r3 != 0) goto L_0x001b;
    L_0x0062:
        r3 = r10.hasError;
        if (r3 != 0) goto L_0x0002;
    L_0x0066:
        r4.onNext(r1);	 Catch:{ Throwable -> 0x006a }
        goto L_0x0052;
    L_0x006a:
        r0 = move-exception;
        rx.exceptions.Exceptions.throwIfFatal(r0);
        r0 = rx.exceptions.OnErrorThrowable.addValueAsLastCause(r0, r1);
        r4.onError(r0);
        goto L_0x001b;
    L_0x0076:
        r0 = 0;
        r2 = r2.size();
        r2 = (long) r2;
        r0 = r0 + r2;
    L_0x007e:
        r2 = r10.requested;
        r8 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r8 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r8 == 0) goto L_0x00e4;
    L_0x0089:
        r8 = 0;
        r8 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1));
        if (r8 == 0) goto L_0x009b;
    L_0x008f:
        r2 = r2 + r6;
        r8 = 0;
        r8 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r8 >= 0) goto L_0x009b;
    L_0x0096:
        r2 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
    L_0x009b:
        r8 = 0;
        r8 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1));
        if (r8 == 0) goto L_0x00ba;
    L_0x00a1:
        r8 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r8 = (r2 > r8 ? 1 : (r2 == r8 ? 0 : -1));
        if (r8 == 0) goto L_0x00ba;
    L_0x00aa:
        r0 = r2 - r0;
        r2 = 0;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 >= 0) goto L_0x00bb;
    L_0x00b2:
        r0 = new java.lang.IllegalStateException;
        r1 = "More produced than requested";
        r0.<init>(r1);
        throw r0;
    L_0x00ba:
        r0 = r2;
    L_0x00bb:
        r10.requested = r0;
    L_0x00bd:
        if (r5 == 0) goto L_0x00d5;
    L_0x00bf:
        r2 = NULL_PRODUCER;
        if (r5 != r2) goto L_0x00c8;
    L_0x00c3:
        r0 = 0;
        r10.currentProducer = r0;
        goto L_0x0002;
    L_0x00c8:
        r10.currentProducer = r5;
        r2 = 0;
        r2 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r2 == 0) goto L_0x0002;
    L_0x00d0:
        r5.request(r0);
        goto L_0x0002;
    L_0x00d5:
        r0 = r10.currentProducer;
        if (r0 == 0) goto L_0x0002;
    L_0x00d9:
        r2 = 0;
        r1 = (r6 > r2 ? 1 : (r6 == r2 ? 0 : -1));
        if (r1 == 0) goto L_0x0002;
    L_0x00df:
        r0.request(r6);
        goto L_0x0002;
    L_0x00e4:
        r0 = r2;
        goto L_0x00bd;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerObserverArbiter.emitLoop():void");
    }

    public void onCompleted() {
        synchronized (this) {
            if (this.emitting) {
                this.missedTerminal = Boolean.valueOf(true);
                return;
            }
            this.emitting = true;
            this.child.onCompleted();
        }
    }

    public void onError(Throwable th) {
        boolean z;
        synchronized (this) {
            if (this.emitting) {
                this.missedTerminal = th;
                z = false;
            } else {
                this.emitting = true;
                z = true;
            }
        }
        if (z) {
            this.child.onError(th);
        } else {
            this.hasError = true;
        }
    }

    public void onNext(T t) {
        synchronized (this) {
            if (this.emitting) {
                List list = this.queue;
                if (list == null) {
                    list = new ArrayList(4);
                    this.queue = list;
                }
                list.add(t);
                return;
            }
            try {
                this.child.onNext(t);
                long j = this.requested;
                if (j != Long.MAX_VALUE) {
                    this.requested = j - 1;
                }
                emitLoop();
            } catch (Throwable th) {
                synchronized (this) {
                }
                this.emitting = false;
            }
        }
    }

    public void request(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        } else if (j != 0) {
            synchronized (this) {
                if (this.emitting) {
                    this.missedRequested += j;
                    return;
                }
                this.emitting = true;
                try {
                    long j2 = this.requested + j;
                    if (j2 < 0) {
                        j2 = Long.MAX_VALUE;
                    }
                    this.requested = j2;
                    Producer producer = this.currentProducer;
                    if (producer != null) {
                        producer.request(j);
                    }
                    emitLoop();
                } catch (Throwable th) {
                    synchronized (this) {
                    }
                    this.emitting = false;
                }
            }
        }
    }

    public void setProducer(Producer producer) {
        synchronized (this) {
            if (this.emitting) {
                if (producer == null) {
                    producer = NULL_PRODUCER;
                }
                this.missedProducer = producer;
                return;
            }
            this.emitting = true;
            try {
                this.currentProducer = producer;
                long j = this.requested;
                if (!(producer == null || j == 0)) {
                    producer.request(j);
                }
                emitLoop();
            } catch (Throwable th) {
                synchronized (this) {
                }
                this.emitting = false;
            }
        }
    }
}
