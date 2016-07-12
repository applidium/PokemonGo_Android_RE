package rx.subjects;

import java.util.concurrent.TimeUnit;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Scheduler.Worker;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.internal.operators.NotificationLite;
import rx.schedulers.TestScheduler;

public final class TestSubject<T> extends Subject<T, T> {
    private final Worker innerScheduler;
    private final SubjectSubscriptionManager<T> state;

    /* renamed from: rx.subjects.TestSubject.1 */
    static final class C13961 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ SubjectSubscriptionManager val$state;

        C13961(SubjectSubscriptionManager subjectSubscriptionManager) {
            this.val$state = subjectSubscriptionManager;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            subjectObserver.emitFirst(this.val$state.get(), this.val$state.nl);
        }
    }

    /* renamed from: rx.subjects.TestSubject.2 */
    class C13972 implements Action0 {
        C13972() {
        }

        public void call() {
            TestSubject.this._onCompleted();
        }
    }

    /* renamed from: rx.subjects.TestSubject.3 */
    class C13983 implements Action0 {
        final /* synthetic */ Throwable val$e;

        C13983(Throwable th) {
            this.val$e = th;
        }

        public void call() {
            TestSubject.this._onError(this.val$e);
        }
    }

    /* renamed from: rx.subjects.TestSubject.4 */
    class C13994 implements Action0 {
        final /* synthetic */ Object val$v;

        C13994(Object obj) {
            this.val$v = obj;
        }

        public void call() {
            TestSubject.this._onNext(this.val$v);
        }
    }

    protected TestSubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager, TestScheduler testScheduler) {
        super(onSubscribe);
        this.state = subjectSubscriptionManager;
        this.innerScheduler = testScheduler.createWorker();
    }

    private void _onCompleted() {
        if (this.state.active) {
            for (SubjectObserver onCompleted : this.state.terminate(NotificationLite.instance().completed())) {
                onCompleted.onCompleted();
            }
        }
    }

    private void _onError(Throwable th) {
        if (this.state.active) {
            for (SubjectObserver onError : this.state.terminate(NotificationLite.instance().error(th))) {
                onError.onError(th);
            }
        }
    }

    private void _onNext(T t) {
        for (Observer onNext : this.state.observers()) {
            onNext.onNext(t);
        }
    }

    public static <T> TestSubject<T> create(TestScheduler testScheduler) {
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onAdded = new C13961(subjectSubscriptionManager);
        subjectSubscriptionManager.onTerminated = subjectSubscriptionManager.onAdded;
        return new TestSubject(subjectSubscriptionManager, subjectSubscriptionManager, testScheduler);
    }

    public boolean hasObservers() {
        return this.state.observers().length > 0;
    }

    public void onCompleted() {
        onCompleted(0);
    }

    public void onCompleted(long j) {
        this.innerScheduler.schedule(new C13972(), j, TimeUnit.MILLISECONDS);
    }

    public void onError(Throwable th) {
        onError(th, 0);
    }

    public void onError(Throwable th, long j) {
        this.innerScheduler.schedule(new C13983(th), j, TimeUnit.MILLISECONDS);
    }

    public void onNext(T t) {
        onNext(t, 0);
    }

    public void onNext(T t, long j) {
        this.innerScheduler.schedule(new C13994(t), j, TimeUnit.MILLISECONDS);
    }
}
