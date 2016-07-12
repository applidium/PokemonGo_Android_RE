package rx.internal.operators;

import rx.Notification;
import rx.Observable.Operator;
import rx.Subscriber;
import rx.plugins.RxJavaPlugins;

public final class OperatorMaterialize<T> implements Operator<Notification<T>, T> {

    /* renamed from: rx.internal.operators.OperatorMaterialize.1 */
    class C12471 extends Subscriber<T> {
        final /* synthetic */ Subscriber val$child;

        C12471(Subscriber subscriber, Subscriber subscriber2) {
            this.val$child = subscriber2;
            super(subscriber);
        }

        public void onCompleted() {
            this.val$child.onNext(Notification.createOnCompleted());
            this.val$child.onCompleted();
        }

        public void onError(Throwable th) {
            RxJavaPlugins.getInstance().getErrorHandler().handleError(th);
            this.val$child.onNext(Notification.createOnError(th));
            this.val$child.onCompleted();
        }

        public void onNext(T t) {
            this.val$child.onNext(Notification.createOnNext(t));
        }
    }

    private static final class Holder {
        static final OperatorMaterialize<Object> INSTANCE;

        static {
            INSTANCE = new OperatorMaterialize();
        }

        private Holder() {
        }
    }

    private OperatorMaterialize() {
    }

    public static <T> OperatorMaterialize<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super T> call(Subscriber<? super Notification<T>> subscriber) {
        return new C12471(subscriber, subscriber);
    }
}
