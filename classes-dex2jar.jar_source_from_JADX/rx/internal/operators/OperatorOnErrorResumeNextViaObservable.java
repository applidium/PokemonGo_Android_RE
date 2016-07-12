package rx.internal.operators;

import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.Exceptions;
import rx.plugins.RxJavaPlugins;

public final class OperatorOnErrorResumeNextViaObservable<T> implements Operator<T, T> {
    final Observable<? extends T> resumeSequence;

    /* renamed from: rx.internal.operators.OperatorOnErrorResumeNextViaObservable.1 */
    class C12641 extends Subscriber<T> {
        private boolean done;
        final /* synthetic */ Subscriber val$child;

        /* renamed from: rx.internal.operators.OperatorOnErrorResumeNextViaObservable.1.1 */
        class C12631 implements Producer {
            final /* synthetic */ Producer val$producer;

            C12631(Producer producer) {
                this.val$producer = producer;
            }

            public void request(long j) {
                this.val$producer.request(j);
            }
        }

        C12641(Subscriber subscriber) {
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
            RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
            unsubscribe();
            OperatorOnErrorResumeNextViaObservable.this.resumeSequence.unsafeSubscribe(this.val$child);
        }

        public void onNext(T t) {
            if (!this.done) {
                this.val$child.onNext(t);
            }
        }

        public void setProducer(Producer producer) {
            this.val$child.setProducer(new C12631(producer));
        }
    }

    public OperatorOnErrorResumeNextViaObservable(Observable<? extends T> observable) {
        this.resumeSequence = observable;
    }

    public Subscriber<? super T> call(Subscriber<? super T> subscriber) {
        Object c12641 = new C12641(subscriber);
        subscriber.add(c12641);
        return c12641;
    }
}
