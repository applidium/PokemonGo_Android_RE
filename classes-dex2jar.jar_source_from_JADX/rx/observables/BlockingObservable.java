package rx.observables;

import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.operators.BlockingOperatorLatest;
import rx.internal.operators.BlockingOperatorMostRecent;
import rx.internal.operators.BlockingOperatorNext;
import rx.internal.operators.BlockingOperatorToFuture;
import rx.internal.operators.BlockingOperatorToIterator;
import rx.internal.util.UtilityFunctions;

public final class BlockingObservable<T> {
    private final Observable<? extends T> f925o;

    /* renamed from: rx.observables.BlockingObservable.1 */
    class C13601 extends Subscriber<T> {
        final /* synthetic */ AtomicReference val$exceptionFromOnError;
        final /* synthetic */ CountDownLatch val$latch;
        final /* synthetic */ Action1 val$onNext;

        C13601(CountDownLatch countDownLatch, AtomicReference atomicReference, Action1 action1) {
            this.val$latch = countDownLatch;
            this.val$exceptionFromOnError = atomicReference;
            this.val$onNext = action1;
        }

        public void onCompleted() {
            this.val$latch.countDown();
        }

        public void onError(Throwable th) {
            this.val$exceptionFromOnError.set(th);
            this.val$latch.countDown();
        }

        public void onNext(T t) {
            this.val$onNext.call(t);
        }
    }

    /* renamed from: rx.observables.BlockingObservable.2 */
    class C13612 implements Iterable<T> {
        C13612() {
        }

        public Iterator<T> iterator() {
            return BlockingObservable.this.getIterator();
        }
    }

    /* renamed from: rx.observables.BlockingObservable.3 */
    class C13623 extends Subscriber<T> {
        final /* synthetic */ CountDownLatch val$latch;
        final /* synthetic */ AtomicReference val$returnException;
        final /* synthetic */ AtomicReference val$returnItem;

        C13623(CountDownLatch countDownLatch, AtomicReference atomicReference, AtomicReference atomicReference2) {
            this.val$latch = countDownLatch;
            this.val$returnException = atomicReference;
            this.val$returnItem = atomicReference2;
        }

        public void onCompleted() {
            this.val$latch.countDown();
        }

        public void onError(Throwable th) {
            this.val$returnException.set(th);
            this.val$latch.countDown();
        }

        public void onNext(T t) {
            this.val$returnItem.set(t);
        }
    }

    private BlockingObservable(Observable<? extends T> observable) {
        this.f925o = observable;
    }

    private T blockForSingle(Observable<? extends T> observable) {
        AtomicReference atomicReference = new AtomicReference();
        AtomicReference atomicReference2 = new AtomicReference();
        CountDownLatch countDownLatch = new CountDownLatch(1);
        Subscription subscribe = observable.subscribe(new C13623(countDownLatch, atomicReference2, atomicReference));
        try {
            countDownLatch.await();
            if (atomicReference2.get() == null) {
                return atomicReference.get();
            }
            if (atomicReference2.get() instanceof RuntimeException) {
                throw ((RuntimeException) atomicReference2.get());
            }
            throw new RuntimeException((Throwable) atomicReference2.get());
        } catch (Throwable e) {
            subscribe.unsubscribe();
            Thread.currentThread().interrupt();
            throw new RuntimeException("Interrupted while waiting for subscription to complete.", e);
        }
    }

    public static <T> BlockingObservable<T> from(Observable<? extends T> observable) {
        return new BlockingObservable(observable);
    }

    public T first() {
        return blockForSingle(this.f925o.first());
    }

    public T first(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f925o.first(func1));
    }

    public T firstOrDefault(T t) {
        return blockForSingle(this.f925o.map(UtilityFunctions.identity()).firstOrDefault(t));
    }

    public T firstOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f925o.filter(func1).map(UtilityFunctions.identity()).firstOrDefault(t));
    }

    public void forEach(Action1<? super T> action1) {
        CountDownLatch countDownLatch = new CountDownLatch(1);
        AtomicReference atomicReference = new AtomicReference();
        Subscription subscribe = this.f925o.subscribe(new C13601(countDownLatch, atomicReference, action1));
        try {
            countDownLatch.await();
            if (atomicReference.get() == null) {
                return;
            }
            if (atomicReference.get() instanceof RuntimeException) {
                throw ((RuntimeException) atomicReference.get());
            }
            throw new RuntimeException((Throwable) atomicReference.get());
        } catch (Throwable e) {
            subscribe.unsubscribe();
            Thread.currentThread().interrupt();
            throw new RuntimeException("Interrupted while waiting for subscription to complete.", e);
        }
    }

    public Iterator<T> getIterator() {
        return BlockingOperatorToIterator.toIterator(this.f925o);
    }

    public T last() {
        return blockForSingle(this.f925o.last());
    }

    public T last(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f925o.last(func1));
    }

    public T lastOrDefault(T t) {
        return blockForSingle(this.f925o.map(UtilityFunctions.identity()).lastOrDefault(t));
    }

    public T lastOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f925o.filter(func1).map(UtilityFunctions.identity()).lastOrDefault(t));
    }

    public Iterable<T> latest() {
        return BlockingOperatorLatest.latest(this.f925o);
    }

    public Iterable<T> mostRecent(T t) {
        return BlockingOperatorMostRecent.mostRecent(this.f925o, t);
    }

    public Iterable<T> next() {
        return BlockingOperatorNext.next(this.f925o);
    }

    public T single() {
        return blockForSingle(this.f925o.single());
    }

    public T single(Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f925o.single(func1));
    }

    public T singleOrDefault(T t) {
        return blockForSingle(this.f925o.map(UtilityFunctions.identity()).singleOrDefault(t));
    }

    public T singleOrDefault(T t, Func1<? super T, Boolean> func1) {
        return blockForSingle(this.f925o.filter(func1).map(UtilityFunctions.identity()).singleOrDefault(t));
    }

    public Future<T> toFuture() {
        return BlockingOperatorToFuture.toFuture(this.f925o);
    }

    public Iterable<T> toIterable() {
        return new C13612();
    }
}
