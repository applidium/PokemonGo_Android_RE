package rx.internal.operators;

import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.functions.Func2;
import rx.observers.SerializedSubscriber;

public final class OperatorWithLatestFrom<T, U, R> implements Operator<R, T> {
    static final Object EMPTY;
    final Observable<? extends U> other;
    final Func2<? super T, ? super U, ? extends R> resultSelector;

    /* renamed from: rx.internal.operators.OperatorWithLatestFrom.1 */
    class C13421 extends Subscriber<T> {
        final /* synthetic */ AtomicReference val$current;
        final /* synthetic */ SerializedSubscriber val$s;

        C13421(Subscriber subscriber, boolean z, AtomicReference atomicReference, SerializedSubscriber serializedSubscriber) {
            this.val$current = atomicReference;
            this.val$s = serializedSubscriber;
            super(subscriber, z);
        }

        public void onCompleted() {
            this.val$s.onCompleted();
            this.val$s.unsubscribe();
        }

        public void onError(Throwable th) {
            this.val$s.onError(th);
            this.val$s.unsubscribe();
        }

        public void onNext(T t) {
            Object obj = this.val$current.get();
            if (obj != OperatorWithLatestFrom.EMPTY) {
                try {
                    this.val$s.onNext(OperatorWithLatestFrom.this.resultSelector.call(t, obj));
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorWithLatestFrom.2 */
    class C13432 extends Subscriber<U> {
        final /* synthetic */ AtomicReference val$current;
        final /* synthetic */ SerializedSubscriber val$s;

        C13432(AtomicReference atomicReference, SerializedSubscriber serializedSubscriber) {
            this.val$current = atomicReference;
            this.val$s = serializedSubscriber;
        }

        public void onCompleted() {
            if (this.val$current.get() == OperatorWithLatestFrom.EMPTY) {
                this.val$s.onCompleted();
                this.val$s.unsubscribe();
            }
        }

        public void onError(Throwable th) {
            this.val$s.onError(th);
            this.val$s.unsubscribe();
        }

        public void onNext(U u) {
            this.val$current.set(u);
        }
    }

    static {
        EMPTY = new Object();
    }

    public OperatorWithLatestFrom(Observable<? extends U> observable, Func2<? super T, ? super U, ? extends R> func2) {
        this.other = observable;
        this.resultSelector = func2;
    }

    public Subscriber<? super T> call(Subscriber<? super R> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber, false);
        subscriber.add(serializedSubscriber);
        AtomicReference atomicReference = new AtomicReference(EMPTY);
        Object c13421 = new C13421(serializedSubscriber, true, atomicReference, serializedSubscriber);
        Object c13432 = new C13432(atomicReference, serializedSubscriber);
        serializedSubscriber.add(c13421);
        serializedSubscriber.add(c13432);
        this.other.unsafeSubscribe(c13432);
        return c13421;
    }
}
