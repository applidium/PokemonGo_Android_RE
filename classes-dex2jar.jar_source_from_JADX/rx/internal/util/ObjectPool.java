package rx.internal.util;

import com.google.android.gms.location.places.Place;
import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.TimeUnit;
import rx.Scheduler.Worker;
import rx.functions.Action0;
import rx.internal.util.unsafe.MpmcArrayQueue;
import rx.internal.util.unsafe.UnsafeAccess;
import rx.schedulers.Schedulers;

public abstract class ObjectPool<T> {
    private final int maxSize;
    private Queue<T> pool;
    private Worker schedulerWorker;

    /* renamed from: rx.internal.util.ObjectPool.1 */
    class C13501 implements Action0 {
        final /* synthetic */ int val$max;
        final /* synthetic */ int val$min;

        C13501(int i, int i2) {
            this.val$min = i;
            this.val$max = i2;
        }

        public void call() {
            int i = 0;
            int size = ObjectPool.this.pool.size();
            int i2;
            if (size < this.val$min) {
                i2 = this.val$max;
                while (i < i2 - size) {
                    ObjectPool.this.pool.add(ObjectPool.this.createObject());
                    i++;
                }
            } else if (size > this.val$max) {
                i2 = this.val$max;
                while (i < size - i2) {
                    ObjectPool.this.pool.poll();
                    i++;
                }
            }
        }
    }

    public ObjectPool() {
        this(0, 0, 67);
    }

    private ObjectPool(int i, int i2, long j) {
        this.maxSize = i2;
        initialize(i);
        this.schedulerWorker = Schedulers.computation().createWorker();
        this.schedulerWorker.schedulePeriodically(new C13501(i, i2), j, j, TimeUnit.SECONDS);
    }

    private void initialize(int i) {
        if (UnsafeAccess.isUnsafeAvailable()) {
            this.pool = new MpmcArrayQueue(Math.max(this.maxSize, Place.TYPE_SUBLOCALITY_LEVEL_2));
        } else {
            this.pool = new ConcurrentLinkedQueue();
        }
        for (int i2 = 0; i2 < i; i2++) {
            this.pool.add(createObject());
        }
    }

    public T borrowObject() {
        T poll = this.pool.poll();
        return poll == null ? createObject() : poll;
    }

    protected abstract T createObject();

    public void returnObject(T t) {
        if (t != null) {
            this.pool.offer(t);
        }
    }

    public void shutdown() {
        this.schedulerWorker.unsubscribe();
    }
}
