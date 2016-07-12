package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.plugins.RxJavaPlugins;

public final class OperatorOnExceptionResumeNextViaObservable<T> implements Operator<T, T> {
    final Observable<? extends T> resumeSequence;

    /* renamed from: rx.internal.operators.OperatorOnExceptionResumeNextViaObservable.1 */
    class C12681 extends Subscriber<T> {
        private boolean done;
        final /* synthetic */ Subscriber val$child;

        /* renamed from: rx.internal.operators.OperatorOnExceptionResumeNextViaObservable.1.1 */
        class C12671 implements Producer {
            final /* synthetic */ Producer val$producer;

            C12671(Producer producer) {
                this.val$producer = producer;
            }

            public void request(long j) {
                this.val$producer.request(j);
            }
        }

        C12681(Subscriber subscriber) {
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
            if (th instanceof Exception) {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
                unsubscribe();
                OperatorOnExceptionResumeNextViaObservable.this.resumeSequence.unsafeSubscribe(this.val$child);
                return;
            }
            this.val$child.onError(th);
        }

        public void onNext(T t) {
            if (!this.done) {
                this.val$child.onNext(t);
            }
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(new C12671(producer));
        }
    }

    public OperatorOnExceptionResumeNextViaObservable(Observable<? extends T> observable) {
        this.resumeSequence = observable;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object c12681 = new C12681(subscriber);
        subscriber.add(c12681);
        return c12681;
    }
}
