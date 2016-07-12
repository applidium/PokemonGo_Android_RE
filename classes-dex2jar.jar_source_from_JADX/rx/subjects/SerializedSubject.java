package rx.subjects;

import rx.Observable.OnSubscribe;
import rx.Subscriber;
import rx.annotations.Experimental;
import rx.observers.SerializedObserver;

public class SerializedSubject<T, R> extends Subject<T, R> {
    private final Subject<T, R> actual;
    private final SerializedObserver<T> observer;

    /* renamed from: rx.subjects.SerializedSubject.1 */
    class C13941 implements OnSubscribe<R> {
        final /* synthetic */ Subject val$actual;

        C13941(Subject subject) {
            this.val$actual = subject;
        }

        public void call(Subscriber<? super R> subscriber) {
            this.val$actual.unsafeSubscribe(subscriber);
        }
    }

    public SerializedSubject(Subject<T, R> subject) {
        super(new C13941(subject));
        this.actual = subject;
        this.observer = new SerializedObserver(subject);
    }

    @Experimental
    public Throwable getThrowable() {
        return this.actual.getThrowable();
    }

    @Experimental
    public T getValue() {
        return this.actual.getValue();
    }

    @Experimental
    public Object[] getValues() {
        return this.actual.getValues();
    }

    @Experimental
    public T[] getValues(T[] tArr) {
        return this.actual.getValues(tArr);
    }

    @Experimental
    public boolean hasCompleted() {
        return this.actual.hasCompleted();
    }

    public boolean hasObservers() {
        return this.actual.hasObservers();
    }

    @Experimental
    public boolean hasThrowable() {
        return this.actual.hasThrowable();
    }

    @Experimental
    public boolean hasValue() {
        return this.actual.hasValue();
    }

    public void onCompleted() {
        this.observer.onCompleted();
    }

    public void onError(Throwable th) {
        this.observer.onError(th);
    }

    public void onNext(T t) {
        this.observer.onNext(t);
    }
}
