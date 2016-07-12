package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.internal.producers.ProducerArbiter;
import rx.plugins.RxJavaPlugins;
import rx.subscriptions.SerialSubscription;

public final class OperatorOnErrorResumeNextViaFunction<T> implements Operator<T, T> {
    private final Func1<Throwable, ? extends Observable<? extends T>> resumeFunction;

    /* renamed from: rx.internal.operators.OperatorOnErrorResumeNextViaFunction.1 */
    class C12621 extends Subscriber<T> {
        private boolean done;
        final /* synthetic */ Subscriber val$child;
        final /* synthetic */ ProducerArbiter val$pa;
        final /* synthetic */ SerialSubscription val$ssub;

        /* renamed from: rx.internal.operators.OperatorOnErrorResumeNextViaFunction.1.1 */
        class C12611 extends Subscriber<T> {
            C12611() {
            }

            public void onCompleted() {
                C12621.this.val$child.onCompleted();
            }

            public void onError(Throwable th) {
                C12621.this.val$child.onError(th);
            }

            public void onNext(T t) {
                C12621.this.val$child.onNext(t);
            }

            public void setProducer(Producer producer) {
                C12621.this.val$pa.setProducer(producer);
            }
        }

        C12621(Subscriber subscriber, ProducerArbiter producerArbiter, SerialSubscription serialSubscription) {
            this.val$child = subscriber;
            this.val$pa = producerArbiter;
            this.val$ssub = serialSubscription;
            this.done = false;
        }

        public void onCompleted() {
            if (!this.done) {
                this.done = true;
                this.val$child.onCompleted();
            }
        }

        public void onError(Throwable th) {
            if (this.done) {
                Exceptions.throwIfFatal(th);
                return;
            }
            this.done = true;
            try {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
                unsubscribe();
                Object c12611 = new C12611();
                this.val$ssub.set(c12611);
                ((Observable) OperatorOnErrorResumeNextViaFunction.this.resumeFunction.call(th)).unsafeSubscribe(c12611);
            } catch (Throwable th2) {
                this.val$child.onError(th2);
            }
        }

        public void onNext(T t) {
            if (!this.done) {
                this.val$child.onNext(t);
            }
        }

        public void setProducer(Producer producer) {
            this.val$pa.setProducer(producer);
        }
    }

    public OperatorOnErrorResumeNextViaFunction(Func1<Throwable, ? extends Observable<? extends T>> func1) {
        this.resumeFunction = func1;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Producer producerArbiter = new ProducerArbiter();
        Object serialSubscription = new SerialSubscription();
        Object c12621 = new C12621(subscriber, producerArbiter, serialSubscription);
        subscriber.add(serialSubscription);
        serialSubscription.set(c12621);
        subscriber.setProducer(producerArbiter);
        return c12621;
    }
}
