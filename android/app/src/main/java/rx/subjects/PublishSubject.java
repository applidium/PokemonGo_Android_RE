package rx.subjects;

import java.util.ArrayList;
import java.util.List;
import rx.Observable.OnSubscribe;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.functions.Action1;
import rx.internal.operators.NotificationLite;

public final class PublishSubject<T> extends Subject<T, T> {
    private final NotificationLite<T> nl;
    final SubjectSubscriptionManager<T> state;

    /* renamed from: rx.subjects.PublishSubject.1 */
    static final class C13881 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ SubjectSubscriptionManager val$state;

        C13881(SubjectSubscriptionManager subjectSubscriptionManager) {
            this.val$state = subjectSubscriptionManager;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            subjectObserver.emitFirst(this.val$state.get(), this.val$state.nl);
        }
    }

    protected PublishSubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(onSubscribe);
        this.nl = NotificationLite.instance();
        this.state = subjectSubscriptionManager;
    }

    public static <T> PublishSubject<T> create() {
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onTerminated = new C13881(subjectSubscriptionManager);
        return new PublishSubject(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    @Experimental
    public Throwable getThrowable() {
        Object obj = this.state.get();
        return this.nl.isError(obj) ? this.nl.getError(obj) : null;
    }

    @Experimental
    public T getValue() {
        return null;
    }

    @Experimental
    public Object[] getValues() {
        return new Object[0];
    }

    @Experimental
    public T[] getValues(T[] tArr) {
        if (tArr.length > 0) {
            tArr[0] = null;
        }
        return tArr;
    }

    @Experimental
    public boolean hasCompleted() {
        Object obj = this.state.get();
        return (obj == null || this.nl.isError(obj)) ? false : true;
    }

    public boolean hasObservers() {
        return this.state.observers().length > 0;
    }

    @Experimental
    public boolean hasThrowable() {
        return this.nl.isError(this.state.get());
    }

    @Experimental
    public boolean hasValue() {
        return false;
    }

    public void onCompleted() {
        if (this.state.active) {
            Object completed = this.nl.completed();
            for (SubjectObserver emitNext : this.state.terminate(completed)) {
                emitNext.emitNext(completed, this.state.nl);
            }
        }
    }

    public void onError(Throwable th) {
        if (this.state.active) {
            Object error = this.nl.error(th);
            List list = null;
            for (SubjectObserver emitNext : this.state.terminate(error)) {
                try {
                    emitNext.emitNext(error, this.state.nl);
                } catch (Throwable th2) {
                    if (list == null) {
                        list = new ArrayList();
                    }
                    list.add(th2);
                }
            }
            Exceptions.throwIfAny(list);
        }
    }

    public void onNext(T t) {
        for (SubjectObserver onNext : this.state.observers()) {
            onNext.onNext(t);
        }
    }
}
