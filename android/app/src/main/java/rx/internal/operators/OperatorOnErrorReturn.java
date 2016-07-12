package rx.internal.operators;

import java.util.Arrays;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.CompositeException;
import rx.exceptions.Exceptions;
import rx.functions.Func1;
import rx.plugins.RxJavaPlugins;

public final class OperatorOnErrorReturn<T> implements Operator<T, T> {
    final Func1<Throwable, ? extends T> resultFunction;

    /* renamed from: rx.internal.operators.OperatorOnErrorReturn.1 */
    class C12661 extends Subscriber<T> {
        private boolean done;
        final /* synthetic */ Subscriber val$child;

        /* renamed from: rx.internal.operators.OperatorOnErrorReturn.1.1 */
        class C12651 implements Producer {
            final /* synthetic */ Producer val$producer;

            C12651(Producer producer) {
                this.val$producer = producer;
            }

            public void request(long j) {
                this.val$producer.request(j);
            }
        }

        C12661(Subscriber subscriber) {
            this.val$child = subscriber;
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
                this.val$child.onNext(OperatorOnErrorReturn.this.resultFunction.call(th));
                this.val$child.onCompleted();
            } catch (Throwable th2) {
                this.val$child.onError(new CompositeException(Arrays.asList(new Throwable[]{th, th2})));
            }
        }

        public void onNext(T t) {
            if (!this.done) {
                this.val$child.onNext(t);
            }
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(new C12651(producer));
        }
    }

    public OperatorOnErrorReturn(Func1<Throwable, ? extends T> func1) {
        this.resultFunction = func1;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object c12661 = new C12661(subscriber);
        subscriber.add(c12661);
        return c12661;
    }
}
