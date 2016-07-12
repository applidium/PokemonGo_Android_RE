package rx.observers;

import rx.Observer;
import rx.exceptions.Exceptions;

public class SerializedObserver<T> implements Observer<T> {
    private static final Object COMPLETE_SENTINEL;
    private static final int MAX_DRAIN_ITERATION = Integer.MAX_VALUE;
    private static final Object NULL_SENTINEL;
    private final Observer<? super T> actual;
    private boolean emitting;
    private FastList queue;
    private boolean terminated;

    private static final class ErrorSentinel {
        final Throwable f926e;

        ErrorSentinel(Throwable th) {
            this.f926e = th;
        }
    }

    static final class FastList {
        Object[] array;
        int size;

        FastList() {
        }

        public void add(Object obj) {
            Object[] objArr;
            int i = this.size;
            Object obj2 = this.array;
            if (obj2 == null) {
                objArr = new Object[16];
                this.array = objArr;
            } else if (i == obj2.length) {
                objArr = new Object[((i >> 2) + i)];
                System.arraycopy(obj2, 0, objArr, 0, i);
                this.array = objArr;
            } else {
                Object obj3 = obj2;
            }
            objArr[i] = obj;
            this.size = i + 1;
        }
    }

    static {
        NULL_SENTINEL = new Object();
        COMPLETE_SENTINEL = new Object();
    }

    public SerializedObserver(Observer<? super T> observer) {
        this.emitting = false;
        this.terminated = false;
        this.actual = observer;
    }

    void drainQueue(FastList fastList) {
        if (fastList != null && fastList.size != 0) {
            Object[] objArr = fastList.array;
            int length = objArr.length;
            int i = 0;
            while (i < length) {
                Object obj = objArr[i];
                if (obj != null) {
                    if (obj == NULL_SENTINEL) {
                        this.actual.onNext(null);
                    } else if (obj == COMPLETE_SENTINEL) {
                        this.actual.onCompleted();
                    } else if (obj.getClass() == ErrorSentinel.class) {
                        this.actual.onError(((ErrorSentinel) obj).f926e);
                    } else {
                        this.actual.onNext(obj);
                    }
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public void onCompleted() {
        synchronized (this) {
            if (this.terminated) {
                return;
            }
            this.terminated = true;
            if (this.emitting) {
                if (this.queue == null) {
                    this.queue = new FastList();
                }
                this.queue.add(COMPLETE_SENTINEL);
                return;
            }
            this.emitting = true;
            FastList fastList = this.queue;
            this.queue = null;
            drainQueue(fastList);
            this.actual.onCompleted();
        }
    }

    public void onError(Throwable th) {
        Exceptions.throwIfFatal(th);
        synchronized (this) {
            if (this.terminated) {
            } else if (this.emitting) {
                if (this.queue == null) {
                    this.queue = new FastList();
                }
                this.queue.add(new ErrorSentinel(th));
            } else {
                this.emitting = true;
                FastList fastList = this.queue;
                this.queue = null;
                drainQueue(fastList);
                this.actual.onError(th);
                synchronized (this) {
                    this.emitting = false;
                }
            }
        }
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public void onNext(T r8) {
        /*
        r7 = this;
        r2 = 2147483647; // 0x7fffffff float:NaN double:1.060997895E-314;
        r3 = 1;
        r5 = 0;
        r4 = 0;
        monitor-enter(r7);
        r0 = r7.terminated;	 Catch:{ all -> 0x0025 }
        if (r0 == 0) goto L_0x000d;
    L_0x000b:
        monitor-exit(r7);	 Catch:{ all -> 0x0025 }
    L_0x000c:
        return;
    L_0x000d:
        r0 = r7.emitting;	 Catch:{ all -> 0x0025 }
        if (r0 == 0) goto L_0x002b;
    L_0x0011:
        r0 = r7.queue;	 Catch:{ all -> 0x0025 }
        if (r0 != 0) goto L_0x001c;
    L_0x0015:
        r0 = new rx.observers.SerializedObserver$FastList;	 Catch:{ all -> 0x0025 }
        r0.<init>();	 Catch:{ all -> 0x0025 }
        r7.queue = r0;	 Catch:{ all -> 0x0025 }
    L_0x001c:
        r0 = r7.queue;	 Catch:{ all -> 0x0025 }
        if (r8 == 0) goto L_0x0028;
    L_0x0020:
        r0.add(r8);	 Catch:{ all -> 0x0025 }
        monitor-exit(r7);	 Catch:{ all -> 0x0025 }
        goto L_0x000c;
    L_0x0025:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0025 }
        throw r0;
    L_0x0028:
        r8 = NULL_SENTINEL;	 Catch:{ all -> 0x0025 }
        goto L_0x0020;
    L_0x002b:
        r0 = 1;
        r7.emitting = r0;	 Catch:{ all -> 0x0025 }
        r0 = r7.queue;	 Catch:{ all -> 0x0025 }
        r1 = 0;
        r7.queue = r1;	 Catch:{ all -> 0x0025 }
        monitor-exit(r7);	 Catch:{ all -> 0x0025 }
        r1 = r2;
    L_0x0035:
        r7.drainQueue(r0);	 Catch:{ all -> 0x0085 }
        if (r1 != r2) goto L_0x003f;
    L_0x003a:
        r6 = r7.actual;	 Catch:{ all -> 0x0085 }
        r6.onNext(r8);	 Catch:{ all -> 0x0085 }
    L_0x003f:
        r1 = r1 + -1;
        if (r1 <= 0) goto L_0x0065;
    L_0x0043:
        monitor-enter(r7);	 Catch:{ all -> 0x0085 }
        r0 = r7.queue;	 Catch:{ all -> 0x0087 }
        r6 = 0;
        r7.queue = r6;	 Catch:{ all -> 0x0087 }
        if (r0 != 0) goto L_0x0064;
    L_0x004b:
        r0 = 0;
        r7.emitting = r0;	 Catch:{ all -> 0x0087 }
        monitor-exit(r7);	 Catch:{ all -> 0x0050 }
        goto L_0x000c;
    L_0x0050:
        r0 = move-exception;
        r1 = r3;
    L_0x0052:
        monitor-exit(r7);	 Catch:{ all -> 0x008a }
        throw r0;	 Catch:{ all -> 0x0054 }
    L_0x0054:
        r0 = move-exception;
        r4 = r1;
    L_0x0056:
        if (r4 != 0) goto L_0x0063;
    L_0x0058:
        monitor-enter(r7);
        r1 = r7.terminated;	 Catch:{ all -> 0x0082 }
        if (r1 == 0) goto L_0x007e;
    L_0x005d:
        r1 = r7.queue;	 Catch:{ all -> 0x0082 }
        r1 = 0;
        r7.queue = r1;	 Catch:{ all -> 0x0082 }
    L_0x0062:
        monitor-exit(r7);	 Catch:{ all -> 0x0082 }
    L_0x0063:
        throw r0;
    L_0x0064:
        monitor-exit(r7);	 Catch:{ all -> 0x0087 }
    L_0x0065:
        if (r1 > 0) goto L_0x0035;
    L_0x0067:
        monitor-enter(r7);
        r0 = r7.terminated;	 Catch:{ all -> 0x007b }
        if (r0 == 0) goto L_0x0076;
    L_0x006c:
        r0 = r7.queue;	 Catch:{ all -> 0x007b }
        r1 = 0;
        r7.queue = r1;	 Catch:{ all -> 0x007b }
    L_0x0071:
        monitor-exit(r7);	 Catch:{ all -> 0x007b }
        r7.drainQueue(r0);
        goto L_0x000c;
    L_0x0076:
        r0 = 0;
        r7.emitting = r0;	 Catch:{ all -> 0x007b }
        r0 = r5;
        goto L_0x0071;
    L_0x007b:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x007b }
        throw r0;
    L_0x007e:
        r1 = 0;
        r7.emitting = r1;	 Catch:{ all -> 0x0082 }
        goto L_0x0062;
    L_0x0082:
        r0 = move-exception;
        monitor-exit(r7);	 Catch:{ all -> 0x0082 }
        throw r0;
    L_0x0085:
        r0 = move-exception;
        goto L_0x0056;
    L_0x0087:
        r0 = move-exception;
        r1 = r4;
        goto L_0x0052;
    L_0x008a:
        r0 = move-exception;
        goto L_0x0052;
        */
        throw new UnsupportedOperationException("Method not decompiled: rx.observers.SerializedObserver.onNext(java.lang.Object):void");
    }
}
