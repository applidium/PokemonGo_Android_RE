package rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import rx.Observable;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.observers.SerializedSubscriber;

public final class OperatorSkipUntil<T, U> implements Operator<T, T> {
    final Observable<U> other;

    /* renamed from: rx.internal.operators.OperatorSkipUntil.1 */
    class C12911 extends Subscriber<U> {
        final /* synthetic */ AtomicBoolean val$gate;
        final /* synthetic */ SerializedSubscriber val$s;

        C12911(AtomicBoolean atomicBoolean, SerializedSubscriber serializedSubscriber) {
            this.val$gate = atomicBoolean;
            this.val$s = serializedSubscriber;
        }

        public void onCompleted() {
            unsubscribe();
        }

        public void onError(Throwable th) {
            this.val$s.onError(th);
            this.val$s.unsubscribe();
        }

        public void onNext(U u) {
            this.val$gate.set(true);
            unsubscribe();
        }
    }

    /* renamed from: rx.internal.operators.OperatorSkipUntil.2 */
    class C12922 extends Subscriber<T> {
        final /* synthetic */ AtomicBoolean val$gate;
        final /* synthetic */ SerializedSubscriber val$s;

        C12922(Subscriber subscriber, AtomicBoolean atomicBoolean, SerializedSubscriber serializedSubscriber) {
            this.val$gate = atomicBoolean;
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
            if (this.val$gate.get()) {
                this.val$s.onNext(t);
            } else {
                request(1);
            }
        }
    }

    public OperatorSkipUntil(Observable<U> observable) {
        this.other = observable;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        SerializedSubscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        AtomicBoolean atomicBoolean = new AtomicBoolean();
        Object c12911 = new C12911(atomicBoolean, serializedSubscriber);
        subscriber.add(c12911);
        this.other.unsafeSubscribe(c12911);
        return new C12922(subscriber, atomicBoolean, serializedSubscriber);
    }
}
