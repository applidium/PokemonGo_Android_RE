package rx.internal.producers;

import rx.Producer;

public final class ProducerArbiter implements Producer {
    static final Producer NULL_PRODUCER;
    Producer currentProducer;
    boolean emitting;
    long missedProduced;
    Producer missedProducer;
    long missedRequested;
    long requested;

    /* renamed from: rx.internal.producers.ProducerArbiter.1 */
    static final class C13451 implements Producer {
        C13451() {
        }

        public void request(long j) {
        }
    }

    static {
        NULL_PRODUCER = new C13451();
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void emitLoop() {
        /*
        r13 = this;
        r12 = 0;
        r2 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r10 = 0;
    L_0x0008:
        monitor-enter(r13);
        r4 = r13.missedRequested;	 Catch:{ all -> 0x0045 }
        r6 = r13.missedProduced;	 Catch:{ all -> 0x0045 }
        r8 = r13.missedProducer;	 Catch:{ all -> 0x0045 }
        r0 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r0 != 0) goto L_0x001e;
    L_0x0013:
        r0 = (r6 > r10 ? 1 : (r6 == r10 ? 0 : -1));
        if (r0 != 0) goto L_0x001e;
    L_0x0017:
        if (r8 != 0) goto L_0x001e;
    L_0x0019:
        r0 = 0;
        r13.emitting = r0;	 Catch:{ all -> 0x0045 }
        monitor-exit(r13);	 Catch:{ all -> 0x0045 }
        return;
    L_0x001e:
        r0 = 0;
        r13.missedRequested = r0;	 Catch:{ all -> 0x0045 }
        r0 = 0;
        r13.missedProduced = r0;	 Catch:{ all -> 0x0045 }
        r0 = 0;
        r13.missedProducer = r0;	 Catch:{ all -> 0x0045 }
        monitor-exit(r13);	 Catch:{ all -> 0x0045 }
        r0 = r13.requested;
        r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r9 == 0) goto L_0x003c;
    L_0x0030:
        r0 = r0 + r4;
        r9 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1));
        if (r9 < 0) goto L_0x0039;
    L_0x0035:
        r9 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1));
        if (r9 != 0) goto L_0x0048;
    L_0x0039:
        r13.requested = r2;
        r0 = r2;
    L_0x003c:
        if (r8 == 0) goto L_0x005e;
    L_0x003e:
        r4 = NULL_PRODUCER;
        if (r8 != r4) goto L_0x0058;
    L_0x0042:
        r13.currentProducer = r12;
        goto L_0x0008;
    L_0x0045:
        r0 = move-exception;
        monitor-exit(r13);	 Catch:{ all -> 0x0045 }
        throw r0;
    L_0x0048:
        r0 = r0 - r6;
        r6 = (r0 > r10 ? 1 : (r0 == r10 ? 0 : -1));
        if (r6 >= 0) goto L_0x0055;
    L_0x004d:
        r0 = new java.lang.IllegalStateException;
        r1 = "more produced than requested";
        r0.<init>(r1);
        throw r0;
    L_0x0055:
        r13.requested = r0;
        goto L_0x003c;
    L_0x0058:
        r13.currentProducer = r8;
        r8.request(r0);
        goto L_0x0008;
    L_0x005e:
        r0 = r13.currentProducer;
        if (r0 == 0) goto L_0x0008;
    L_0x0062:
        r1 = (r4 > r10 ? 1 : (r4 == r10 ? 0 : -1));
        if (r1 == 0) goto L_0x0008;
    L_0x0066:
        r0.request(r4);
        goto L_0x0008;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.producers.ProducerArbiter.emitLoop():void");
    }

    public void produced(long j) {
        if (j <= 0) {
            throw new IllegalArgumentException("n > 0 required");
        }
        synchronized (this) {
            if (this.emitting) {
                this.missedProduced += j;
                return;
            }
            this.emitting = true;
            try {
                long j2 = this.requested;
                if (j2 != Long.MAX_VALUE) {
                    j2 -= j;
                    if (j2 < 0) {
                        throw new IllegalStateException("more items arrived than were requested");
                    }
                    this.requested = j2;
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
                if (producer != null) {
                    producer.request(this.requested);
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
