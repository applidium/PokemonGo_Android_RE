package rx.internal.util;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import rx.Producer;
import rx.annotations.Experimental;

@Experimental
public final class BackpressureDrainManager implements Producer {
    protected static final AtomicLongFieldUpdater<BackpressureDrainManager> REQUESTED_COUNT;
    protected final BackpressureQueueCallback actual;
    protected boolean emitting;
    protected Throwable exception;
    protected volatile long requestedCount;
    protected volatile boolean terminated;

    public interface BackpressureQueueCallback {
        boolean accept(Object obj);

        void complete(Throwable th);

        Object peek();

        Object poll();
    }

    static {
        REQUESTED_COUNT = AtomicLongFieldUpdater.newUpdater(BackpressureDrainManager.class, "requestedCount");
    }

    public BackpressureDrainManager(BackpressureQueueCallback backpressureQueueCallback) {
        this.actual = backpressureQueueCallback;
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final void drain() {
        /*
        r14 = this;
        r6 = 9223372036854775807; // 0x7fffffffffffffff float:NaN double:NaN;
        r12 = 0;
        r4 = 1;
        r5 = 0;
        monitor-enter(r14);
        r0 = r14.emitting;	 Catch:{ all -> 0x0039 }
        if (r0 == 0) goto L_0x0010;
    L_0x000e:
        monitor-exit(r14);	 Catch:{ all -> 0x0039 }
    L_0x000f:
        return;
    L_0x0010:
        r0 = 1;
        r14.emitting = r0;	 Catch:{ all -> 0x0039 }
        r0 = r14.terminated;	 Catch:{ all -> 0x0039 }
        monitor-exit(r14);	 Catch:{ all -> 0x0039 }
        r2 = r14.requestedCount;
        r9 = r14.actual;	 Catch:{ all -> 0x005d }
    L_0x001a:
        r8 = r5;
    L_0x001b:
        r1 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1));
        if (r1 > 0) goto L_0x0021;
    L_0x001f:
        if (r0 == 0) goto L_0x0040;
    L_0x0021:
        if (r0 == 0) goto L_0x005f;
    L_0x0023:
        r1 = r9.peek();	 Catch:{ all -> 0x005d }
        if (r1 != 0) goto L_0x003c;
    L_0x0029:
        r0 = r14.exception;	 Catch:{ all -> 0x002f }
        r9.complete(r0);	 Catch:{ all -> 0x002f }
        goto L_0x000f;
    L_0x002f:
        r0 = move-exception;
        r5 = r4;
    L_0x0031:
        if (r5 != 0) goto L_0x0038;
    L_0x0033:
        monitor-enter(r14);
        r1 = 0;
        r14.emitting = r1;	 Catch:{ all -> 0x0090 }
        monitor-exit(r14);	 Catch:{ all -> 0x0090 }
    L_0x0038:
        throw r0;
    L_0x0039:
        r0 = move-exception;
        monitor-exit(r14);	 Catch:{ all -> 0x0039 }
        throw r0;
    L_0x003c:
        r1 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1));
        if (r1 != 0) goto L_0x005f;
    L_0x0040:
        monitor-enter(r14);	 Catch:{ all -> 0x005d }
        r0 = r14.terminated;	 Catch:{ all -> 0x0077 }
        r1 = r9.peek();	 Catch:{ all -> 0x0077 }
        if (r1 == 0) goto L_0x0072;
    L_0x0049:
        r1 = r4;
    L_0x004a:
        r2 = r14.requestedCount;	 Catch:{ all -> 0x0077 }
        r2 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1));
        if (r2 != 0) goto L_0x0079;
    L_0x0050:
        if (r1 != 0) goto L_0x0074;
    L_0x0052:
        if (r0 != 0) goto L_0x0074;
    L_0x0054:
        r0 = 0;
        r14.emitting = r0;	 Catch:{ all -> 0x0059 }
        monitor-exit(r14);	 Catch:{ all -> 0x0059 }
        goto L_0x000f;
    L_0x0059:
        r0 = move-exception;
        r5 = r4;
    L_0x005b:
        monitor-exit(r14);	 Catch:{ all -> 0x0077 }
        throw r0;	 Catch:{ all -> 0x005d }
    L_0x005d:
        r0 = move-exception;
        goto L_0x0031;
    L_0x005f:
        r1 = r9.poll();	 Catch:{ all -> 0x005d }
        if (r1 == 0) goto L_0x0040;
    L_0x0065:
        r1 = r9.accept(r1);	 Catch:{ all -> 0x005d }
        if (r1 != 0) goto L_0x000f;
    L_0x006b:
        r10 = 1;
        r2 = r2 - r10;
        r1 = r8 + 1;
        r8 = r1;
        goto L_0x001b;
    L_0x0072:
        r1 = r5;
        goto L_0x004a;
    L_0x0074:
        r2 = r6;
    L_0x0075:
        monitor-exit(r14);	 Catch:{ all -> 0x0077 }
        goto L_0x001a;
    L_0x0077:
        r0 = move-exception;
        goto L_0x005b;
    L_0x0079:
        r2 = REQUESTED_COUNT;	 Catch:{ all -> 0x0077 }
        r3 = -r8;
        r10 = (long) r3;	 Catch:{ all -> 0x0077 }
        r2 = r2.addAndGet(r14, r10);	 Catch:{ all -> 0x0077 }
        r8 = (r2 > r12 ? 1 : (r2 == r12 ? 0 : -1));
        if (r8 == 0) goto L_0x0087;
    L_0x0085:
        if (r1 != 0) goto L_0x0075;
    L_0x0087:
        if (r0 == 0) goto L_0x008b;
    L_0x0089:
        if (r1 == 0) goto L_0x0075;
    L_0x008b:
        r0 = 0;
        r14.emitting = r0;	 Catch:{ all -> 0x0059 }
        monitor-exit(r14);	 Catch:{ all -> 0x0059 }
        goto L_0x000f;
    L_0x0090:
        r0 = move-exception;
        monitor-exit(r14);	 Catch:{ all -> 0x0090 }
        throw r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.internal.util.BackpressureDrainManager.drain():void");
    }

    public final boolean isTerminated() {
        return this.terminated;
    }

    public final void request(long j) {
        if (j != 0) {
            Object obj;
            long j2;
            long j3;
            do {
                j2 = this.requestedCount;
                Object obj2 = j2 == 0 ? 1 : null;
                if (j2 == Long.MAX_VALUE) {
                    obj = obj2;
                    break;
                } else if (j == Long.MAX_VALUE) {
                    j3 = j;
                    obj = 1;
                } else if (j2 > Long.MAX_VALUE - j) {
                    j3 = Long.MAX_VALUE;
                    obj = obj2;
                } else {
                    j3 = j2 + j;
                    obj = obj2;
                }
            } while (!REQUESTED_COUNT.compareAndSet(this, j2, j3));
            if (obj != null) {
                drain();
            }
        }
    }

    public final void terminate() {
        this.terminated = true;
    }

    public final void terminate(Throwable th) {
        if (!this.terminated) {
            this.exception = th;
            this.terminated = true;
        }
    }

    public final void terminateAndDrain() {
        this.terminated = true;
        drain();
    }

    public final void terminateAndDrain(Throwable th) {
        if (!this.terminated) {
            this.exception = th;
            this.terminated = true;
            drain();
        }
    }
}
