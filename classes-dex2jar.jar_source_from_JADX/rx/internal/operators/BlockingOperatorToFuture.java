package rx.internal.operators;

import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;

public final class BlockingOperatorToFuture {

    /* renamed from: rx.internal.operators.BlockingOperatorToFuture.1 */
    static final class C11651 extends Subscriber<T> {
        final /* synthetic */ AtomicReference val$error;
        final /* synthetic */ CountDownLatch val$finished;
        final /* synthetic */ AtomicReference val$value;

        C11651(CountDownLatch countDownLatch, AtomicReference atomicReference, AtomicReference atomicReference2) {
            this.val$finished = countDownLatch;
            this.val$error = atomicReference;
            this.val$value = atomicReference2;
        }

        public void onCompleted() {
            this.val$finished.countDown();
        }

        public void onError(Throwable th) {
            this.val$error.compareAndSet(null, th);
            this.val$finished.countDown();
        }

        public void onNext(T t) {
            this.val$value.set(t);
        }
    }

    /* renamed from: rx.internal.operators.BlockingOperatorToFuture.2 */
    static final class C11662 implements Future<T> {
        private volatile boolean cancelled;
        final /* synthetic */ AtomicReference val$error;
        final /* synthetic */ CountDownLatch val$finished;
        final /* synthetic */ Subscription val$s;
        final /* synthetic */ AtomicReference val$value;

        C11662(CountDownLatch countDownLatch, Subscription subscription, AtomicReference atomicReference, AtomicReference atomicReference2) {
            this.val$finished = countDownLatch;
            this.val$s = subscription;
            this.val$error = atomicReference;
            this.val$value = atomicReference2;
            this.cancelled = false;
        }

        private T getValue() throws ExecutionException {
            if (this.val$error.get() != null) {
                throw new ExecutionException("Observable onError", (Throwable) this.val$error.get());
            } else if (!this.cancelled) {
                return this.val$value.get();
            } else {
                throw new CancellationException("Subscription unsubscribed");
            }
        }

        public boolean cancel(boolean z) {
            if (this.val$finished.getCount() <= 0) {
                return false;
            }
            this.cancelled = true;
            this.val$s.unsubscribe();
            this.val$finished.countDown();
            return true;
        }

        public T get() throws InterruptedException, ExecutionException {
            this.val$finished.await();
            return getValue();
        }

        public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            if (this.val$finished.await(j, timeUnit)) {
                return getValue();
            }
            throw new TimeoutException("Timed out after " + timeUnit.toMillis(j) + "ms waiting for underlying Observable.");
        }

        public boolean isCancelled() {
            return this.cancelled;
        }

        public boolean isDone() {
            return this.val$finished.getCount() == 0;
        }
    }

    private BlockingOperatorToFuture() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Future<T> toFuture(Observable<? extends T> observable) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        AtomicReference atomicReference2 = new AtomicReference();
        return new C11662(countDownLatch, observable.single().subscribe(new C11651(countDownLatch, atomicReference2, atomicReference)), atomicReference2, atomicReference);
    }
}
