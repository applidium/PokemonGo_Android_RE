package rx.internal.operators;

import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Func1;
import rx.internal.producers.SingleDelayedProducer;

public final class OperatorAny<T> implements Operator<Boolean, T> {
    private final Func1<? super T, Boolean> predicate;
    private final boolean returnOnEmpty;

    /* renamed from: rx.internal.operators.OperatorAny.1 */
    class C12001 extends Subscriber<T> {
        boolean done;
        boolean hasElements;
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ SingleDelayedProducer val$producer;

        C12001(SingleDelayedProducer singleDelayedProducer, Subscriber subscriber) {
            this.val$producer = singleDelayedProducer;
            this.val$child = subscriber;
        }

        public void onCompleted() {
            if (!this.done) {
                this.done = true;
                if (this.hasElements) {
                    this.val$producer.setValue(Boolean.valueOf(false));
                } else {
                    this.val$producer.setValue(Boolean.valueOf(OperatorAny.this.returnOnEmpty));
                }
            }
        }

        public void onError(Throwable th) {
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            this.hasElements = true;
            try {
                if (((Boolean) OperatorAny.this.predicate.call(t)).booleanValue() && !this.done) {
                    this.done = true;
                    this.val$producer.setValue(Boolean.valueOf(!OperatorAny.this.returnOnEmpty));
                    unsubscribe();
                }
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }
    }

    public OperatorAny(Func1<? super T, Boolean> func1, boolean z) {
        this.predicate = func1;
        this.returnOnEmpty = z;
    }

    public Subscriber<? super T> call(Subscriber<? super Boolean> subscriber) {
        Producer singleDelayedProducer = new SingleDelayedProducer(subscriber);
        Object c12001 = new C12001(singleDelayedProducer, subscriber);
        subscriber.add(c12001);
        subscriber.setProducer(singleDelayedProducer);
        return c12001;
    }
}
