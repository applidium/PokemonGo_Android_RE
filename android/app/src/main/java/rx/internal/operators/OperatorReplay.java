package rx.internal.operators;

import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Scheduler;
import rx.Subscriber;
import rx.subjects.Subject;

public final class OperatorReplay {

    /* renamed from: rx.internal.operators.OperatorReplay.1 */
    static final class C12731 implements OnSubscribe<T> {
        final /* synthetic */ Observable val$observedOn;

        C12731(Observable observable) {
            this.val$observedOn = observable;
        }

        public void call(Subscriber<? super T> subscriber) {
            OperatorReplay.subscriberOf(this.val$observedOn).call(subscriber);
        }
    }

    /* renamed from: rx.internal.operators.OperatorReplay.2 */
    static final class C12742 implements OnSubscribe<T> {
        final /* synthetic */ Observable val$target;

        C12742(Observable observable) {
            this.val$target = observable;
        }

        public void call(Subscriber<? super T> subscriber) {
            this.val$target.unsafeSubscribe(subscriber);
        }
    }

    public static final class SubjectWrapper<T> extends Subject<T, T> {
        final Subject<T, T> subject;

        public SubjectWrapper(OnSubscribe<T> onSubscribe, Subject<T, T> subject) {
            super(onSubscribe);
            this.subject = subject;
        }

        public boolean hasObservers() {
            return this.subject.hasObservers();
        }

        public void onCompleted() {
            this.subject.onCompleted();
        }

        public void onError(Throwable th) {
            this.subject.onError(th);
        }

        public void onNext(T t) {
            this.subject.onNext(t);
        }
    }

    private OperatorReplay() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Subject<T, T> createScheduledSubject(Subject<T, T> subject, Scheduler scheduler) {
        return new SubjectWrapper(new C12731(subject.observeOn(scheduler)), subject);
    }

    public static <T> OnSubscribe<T> subscriberOf(Observable<T> observable) {
        return new C12742(observable);
    }
}
