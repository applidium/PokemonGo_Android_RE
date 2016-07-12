package rx.internal.operators;

import java.util.Iterator;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.functions.Func2;
import rx.observers.Subscribers;

public final class OperatorZipIterable<T1, T2, R> implements Operator<R, T1> {
    final Iterable<? extends T2> iterable;
    final Func2<? super T1, ? super T2, ? extends R> zipFunction;

    /* renamed from: rx.internal.operators.OperatorZipIterable.1 */
    class C13441 extends Subscriber<T1> {
        boolean once;
        final /* synthetic */ Iterator val$iterator;
        final /* synthetic */ Subscriber val$subscriber;

        C13441(Subscriber subscriber, Subscriber subscriber2, Iterator it) {
            this.val$subscriber = subscriber2;
            this.val$iterator = it;
            super(subscriber);
        }

        public void onCompleted() {
            if (!this.once) {
                this.once = true;
                this.val$subscriber.onCompleted();
            }
        }

        public void onError(Throwable th) {
            this.val$subscriber.onError(th);
        }

        public void onNext(T1 t1) {
            try {
                this.val$subscriber.onNext(OperatorZipIterable.this.zipFunction.call(t1, this.val$iterator.next()));
                if (!this.val$iterator.hasNext()) {
                    onCompleted();
                }
            } catch (Throwable th) {
                onError(th);
            }
        }
    }

    public OperatorZipIterable(Iterable<? extends T2> iterable, Func2<? super T1, ? super T2, ? extends R> func2) {
        this.iterable = iterable;
        this.zipFunction = func2;
    }

    public Subscriber<? super T1> call(Subscriber<? super R> subscriber) {
        Iterator it = this.iterable.iterator();
        try {
            if (!it.hasNext()) {
                subscriber.onCompleted();
                return Subscribers.empty();
            }
        } catch (Throwable th) {
            subscriber.onError(th);
        }
        return new C13441(subscriber, subscriber, it);
    }
}
