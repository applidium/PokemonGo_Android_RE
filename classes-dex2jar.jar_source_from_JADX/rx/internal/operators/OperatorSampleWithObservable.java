package rx.internal.operators;

import java.util.concurrent.atomic.AtomicReference;
import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.observers.SerializedSubscriber;

public final class OperatorSampleWithObservable<T, U> implements Operator<T, T> {
    static final Object EMPTY_TOKEN;
    final Observable<U> sampler;

    /* renamed from: rx.internal.operators.OperatorSampleWithObservable.1 */
    class C12771 extends Subscriber<U> {
        final /* synthetic */ SerializedSubscriber val$s;
        final /* synthetic */ AtomicReference val$value;

        C12771(Subscriber subscriber, AtomicReference atomicReference, SerializedSubscriber serializedSubscriber) {
            this.val$value = atomicReference;
            this.val$s = serializedSubscriber;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$s.onCompleted();
            unsubscribe();
        }

        public void onError(Throwable th) {
            this.val$s.onError(th);
            unsubscribe();
        }

        public void onNext(U u) {
            Object andSet = this.val$value.getAndSet(OperatorSampleWithObservable.EMPTY_TOKEN);
            if (andSet != OperatorSampleWithObservable.EMPTY_TOKEN) {
                this.val$s.onNext(andSet);
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorSampleWithObservable.2 */
    class C12782 extends Subscriber<T> {
        final /* synthetic */ SerializedSubscriber val$s;
        final /* synthetic */ AtomicReference val$value;

        C12782(Subscriber subscriber, AtomicReference atomicReference, SerializedSubscriber serializedSubscriber) {
            this.val$value = atomicReference;
            this.val$s = serializedSubscriber;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$s.onCompleted();
            unsubscribe();
        }

        public void onError(Throwable th) {
            this.val$s.onError(th);
            unsubscribe();
        }

        public void onNext(T t) {
            this.val$value.set(t);
        }
    }

    static {
        EMPTY_TOKEN = new Object();
    }

    public OperatorSampleWithObservable(Observable<U> observable) {
        this.sampler = observable;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        AtomicReference atomicReference = new AtomicReference(EMPTY_TOKEN);
        Subscriber c12771 = new C12771(subscriber, atomicReference, serializedSubscriber);
        Subscriber c12782 = new C12782(subscriber, atomicReference, serializedSubscriber);
        this.sampler.unsafeSubscribe(c12771);
        return c12782;
    }
}
