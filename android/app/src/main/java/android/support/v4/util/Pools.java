package android.support.v4.util;

public final class Pools {

    public interface Pool<T> {
        T acquire();

        boolean release(T t);
    }

    public static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool;
        private int mPoolSize;

        public SimplePool(int i) {
            if (i <= 0) {
                throw new IllegalArgumentException("The max pool size must be > 0");
            }
            this.mPool = new Object[i];
        }

        private boolean isInPool(T t) {
            for (int i = 0; i < this.mPoolSize; i++) {
                if (this.mPool[i] == t) {
                    return true;
                }
            }
            return false;
        }

        public T acquire() {
            if (this.mPoolSize <= 0) {
                return null;
            }
            int i = this.mPoolSize - 1;
            T t = this.mPool[i];
            this.mPool[i] = null;
            this.mPoolSize--;
            return t;
        }

        public boolean release(T t) {
            if (isInPool(t)) {
                throw new IllegalStateException("Already in the pool!");
            } else if (this.mPoolSize >= this.mPool.length) {
                return false;
            } else {
                this.mPool[this.mPoolSize] = t;
                this.mPoolSize++;
                return true;
            }
        }
    }

    public static class SynchronizedPool<T> extends SimplePool<T> {
        private final Object mLock;

        public SynchronizedPool(int i) {
            super(i);
            this.mLock = new Object();
        }

        public T acquire() {
            T acquire;
            synchronized (this.mLock) {
                acquire = super.acquire();
            }
            return acquire;
        }

        public boolean release(T t) {
            boolean release;
            synchronized (this.mLock) {
                release = super.release(t);
            }
            return release;
        }
    }

    private Pools() {
    }
}
