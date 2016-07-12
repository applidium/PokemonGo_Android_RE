package rx.subjects;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import rx.Observable.OnSubscribe;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.functions.Action1;
import rx.internal.operators.NotificationLite;

public final class BehaviorSubject<T> extends Subject<T, T> {
    private final NotificationLite<T> nl;
    private final SubjectSubscriptionManager<T> state;

    /* renamed from: rx.subjects.BehaviorSubject.1 */
    static final class C13871 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ SubjectSubscriptionManager val$state;

        C13871(SubjectSubscriptionManager subjectSubscriptionManager) {
            this.val$state = subjectSubscriptionManager;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            subjectObserver.emitFirst(this.val$state.get(), this.val$state.nl);
        }
    }

    protected BehaviorSubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager) {
        super(onSubscribe);
        this.nl = NotificationLite.instance();
        this.state = subjectSubscriptionManager;
    }

    public static <T> BehaviorSubject<T> create() {
        return create(null, false);
    }

    public static <T> BehaviorSubject<T> create(T t) {
        return create(t, true);
    }

    private static <T> BehaviorSubject<T> create(T t, boolean z) {
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        if (z) {
            subjectSubscriptionManager.set(NotificationLite.instance().next(t));
        }
        subjectSubscriptionManager.onAdded = new C13871(subjectSubscriptionManager);
        subjectSubscriptionManager.onTerminated = subjectSubscriptionManager.onAdded;
        return new BehaviorSubject(subjectSubscriptionManager, subjectSubscriptionManager);
    }

    @Experimental
    public Throwable getThrowable() {
        Object obj = this.state.get();
        return this.nl.isError(obj) ? this.nl.getError(obj) : null;
    }

    @Experimental
    public T getValue() {
        Object obj = this.state.get();
        return this.nl.isNext(obj) ? this.nl.getValue(obj) : null;
    }

    @Experimental
    public T[] getValues(T[] tArr) {
        Object obj = this.state.get();
        if (this.nl.isNext(obj)) {
            T[] tArr2 = tArr.length == 0 ? (Object[]) Array.newInstance(tArr.getClass().getComponentType(), 1) : tArr;
            tArr2[0] = this.nl.getValue(obj);
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
        return this.nl.isCompleted(this.state.get());
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
        return this.nl.isNext(this.state.get());
    }

    public void onCompleted() {
        if (this.state.get() == null || this.state.active) {
            Object completed = this.nl.completed();
            for (SubjectObserver emitNext : this.state.terminate(completed)) {
                emitNext.emitNext(completed, this.state.nl);
            }
        }
    }

    public void onError(Throwable th) {
        if (this.state.get() == null || this.state.active) {
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
        if (this.state.get() == null || this.state.active) {
            Object next = this.nl.next(t);
            for (SubjectObserver emitNext : this.state.next(next)) {
                emitNext.emitNext(next, this.state.nl);
            }
        }
    }

    int subscriberCount() {
        return this.state.observers().length;
    }
}
