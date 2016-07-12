package rx.subjects;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import rx.Observable.OnSubscribe;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.functions.Action1;
import rx.internal.operators.NotificationLite;

public final class AsyncSubject<T> extends Subject<T, T> {
    volatile Object lastValue;
    private final NotificationLite<T> nl;
    final SubjectSubscriptionManager<T> state;

    /* renamed from: rx.subjects.AsyncSubject.1 */
    static final class C13861 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ SubjectSubscriptionManager val$state;

        C13861(SubjectSubscriptionManager subjectSubscriptionManager) {
            this.val$state = subjectSubscriptionManager;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            Object obj = this.val$state.get();
            NotificationLite notificationLite = this.val$state.nl;
            subjectObserver.accept(obj, notificationLite);
            if (obj == null || !(notificationLite.isCompleted(obj) || notificationLite.isError(obj))) {
                subjectObserver.onCompleted();
            }
        }
    }

    protected AsyncSubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(onSubscribe);
        this.nl = NotificationLite.instance();
        this.state = subjectSubscriptionManager;
    }

    public static <T> AsyncSubject<T> create() {
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onTerminated = new C13861(subjectSubscriptionManager);
        return new AsyncSubject(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    @Experimental
    public Throwable getThrowable() {
        Object obj = this.state.get();
        return this.nl.isError(obj) ? this.nl.getError(obj) : null;
    }

    @Experimental
    public T getValue() {
        Object obj = this.lastValue;
        return (this.nl.isError(this.state.get()) || !this.nl.isNext(obj)) ? null : this.nl.getValue(obj);
    }

    @Experimental
    public T[] getValues(T[] tArr) {
        Object obj = this.lastValue;
        if (!this.nl.isError(this.state.get()) && this.nl.isNext(obj)) {
            Object value = this.nl.getValue(obj);
            T[] tArr2 = tArr.length == 0 ? (Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1) : tArr;
            tArr2[0] = value;
            if (tArr2.length <= 1) {
                return tArr2;
            }
            tArr2[1] = null;
            return tArr2;
        } else if (tArr.length <= 0) {
            return tArr;
        } else {
            tArr[0] = null;
            return tArr;
        }
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
        return !this.nl.isError(this.state.get()) && this.nl.isNext(this.lastValue);
    }

    public void onCompleted() {
        if (this.state.active) {
            Object obj = this.lastValue;
            if (obj == null) {
                obj = this.nl.completed();
            }
            for (SubjectObserver subjectObserver : this.state.terminate(obj)) {
                if (obj == this.nl.completed()) {
                    subjectObserver.onCompleted();
                } else {
                    subjectObserver.onNext(this.nl.getValue(obj));
                    subjectObserver.onCompleted();
                }
            }
        }
    }

    public void onError(Throwable th) {
        if (this.state.active) {
            List list = null;
            for (SubjectObserver onError : this.state.terminate(this.nl.error(th))) {
                try {
                    onError.onError(th);
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
        this.lastValue = this.nl.next(t);
    }
}
