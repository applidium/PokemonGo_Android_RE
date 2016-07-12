package rx.subjects;

import com.voxelbusters.nativeplugins.defines.Keys.GameServices;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Subscriber;
import rx.functions.Action0;
import rx.functions.Action1;
import rx.functions.Actions;
import rx.internal.operators.NotificationLite;
import rx.subscriptions.Subscriptions;

final class SubjectSubscriptionManager<T> implements OnSubscribe<T> {
    static final AtomicReferenceFieldUpdater<SubjectSubscriptionManager, Object> LATEST_UPDATER;
    static final AtomicReferenceFieldUpdater<SubjectSubscriptionManager, State> STATE_UPDATER;
    boolean active;
    volatile Object latest;
    public final NotificationLite<T> nl;
    Action1<SubjectObserver<T>> onAdded;
    Action1<SubjectObserver<T>> onStart;
    Action1<SubjectObserver<T>> onTerminated;
    volatile State<T> state;

    /* renamed from: rx.subjects.SubjectSubscriptionManager.1 */
    class C13951 implements Action0 {
        final /* synthetic */ SubjectObserver val$bo;

        C13951(SubjectObserver subjectObserver) {
            this.val$bo = subjectObserver;
        }

        public void call() {
            SubjectSubscriptionManager.this.remove(this.val$bo);
        }
    }

    protected static final class State<T> {
        static final State EMPTY;
        static final SubjectObserver[] NO_OBSERVERS;
        static final State TERMINATED;
        final SubjectObserver[] observers;
        final boolean terminated;

        static {
            NO_OBSERVERS = new SubjectObserver[0];
            TERMINATED = new State(true, NO_OBSERVERS);
            EMPTY = new State(false, NO_OBSERVERS);
        }

        public State(boolean z, SubjectObserver[] subjectObserverArr) {
            this.terminated = z;
            this.observers = subjectObserverArr;
        }

        public State add(SubjectObserver subjectObserver) {
            int length = this.observers.length;
            Object obj = new SubjectObserver[(length + 1)];
            System.arraycopy(this.observers, 0, obj, 0, length);
            obj[length] = subjectObserver;
            return new State(this.terminated, obj);
        }

        public State remove(SubjectObserver subjectObserver) {
            SubjectObserver[] subjectObserverArr = this.observers;
            int length = subjectObserverArr.length;
            if (length == 1 && subjectObserverArr[0] == subjectObserver) {
                return EMPTY;
            }
            if (length == 0) {
                return this;
            }
            Object obj = new SubjectObserver[(length - 1)];
            int i = 0;
            int i2 = 0;
            while (i < length) {
                int i3;
                SubjectObserver subjectObserver2 = subjectObserverArr[i];
                if (subjectObserver2 == subjectObserver) {
                    i3 = i2;
                } else if (i2 == length - 1) {
                    return this;
                } else {
                    i3 = i2 + 1;
                    obj[i2] = subjectObserver2;
                }
                i++;
                i2 = i3;
            }
            if (i2 == 0) {
                return EMPTY;
            }
            SubjectObserver[] subjectObserverArr2;
            if (i2 < length - 1) {
                subjectObserverArr2 = new SubjectObserver[i2];
                System.arraycopy(obj, 0, subjectObserverArr2, 0, i2);
            } else {
                Object obj2 = obj;
            }
            return new State(this.terminated, subjectObserverArr2);
        }
    }

    protected static final class SubjectObserver<T> implements Observer<T> {
        final Observer<? super T> actual;
        protected volatile boolean caughtUp;
        boolean emitting;
        boolean fastPath;
        boolean first;
        private volatile Object index;
        List<Object> queue;

        public SubjectObserver(Observer<? super T> observer) {
            this.first = true;
            this.actual = observer;
        }

        protected void accept(Object obj, NotificationLite<T> notificationLite) {
            if (obj != null) {
                notificationLite.accept(this.actual, obj);
            }
        }

        protected void emitFirst(Object obj, NotificationLite<T> notificationLite) {
            boolean z = false;
            synchronized (this) {
                if (!this.first || this.emitting) {
                    return;
                }
                this.first = false;
                if (obj != null) {
                    z = true;
                }
                this.emitting = z;
                if (obj != null) {
                    emitLoop(null, obj, notificationLite);
                }
            }
        }

        protected void emitLoop(List<Object> list, Object obj, NotificationLite<T> notificationLite) {
            Throwable th;
            Object obj2 = null;
            Object obj3 = 1;
            while (true) {
                if (r6 != null) {
                    for (Object accept : r6) {
                        accept(accept, notificationLite);
                    }
                }
                if (obj3 != null) {
                    try {
                        accept(obj, notificationLite);
                        obj3 = null;
                    } catch (Throwable th2) {
                        if (obj2 == null) {
                            synchronized (this) {
                            }
                            this.emitting = false;
                        }
                    }
                }
                synchronized (this) {
                    List list2 = this.queue;
                    this.queue = null;
                    if (list2 == null) {
                        this.emitting = false;
                        try {
                            return;
                        } catch (Throwable th3) {
                            th = th3;
                            int i = 1;
                            throw th;
                        }
                    } else {
                        try {
                        } catch (Throwable th4) {
                            th = th4;
                        }
                    }
                }
            }
        }

        protected void emitNext(Object obj, NotificationLite<T> notificationLite) {
            if (!this.fastPath) {
                synchronized (this) {
                    this.first = false;
                    if (this.emitting) {
                        if (this.queue == null) {
                            this.queue = new ArrayList();
                        }
                        this.queue.add(obj);
                        return;
                    }
                    this.fastPath = true;
                }
            }
            notificationLite.accept(this.actual, obj);
        }

        protected Observer<? super T> getActual() {
            return this.actual;
        }

        public <I> I index() {
            return this.index;
        }

        public void index(Object obj) {
            this.index = obj;
        }

        public void onCompleted() {
            this.actual.onCompleted();
        }

        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        public void onNext(T t) {
            this.actual.onNext(t);
        }
    }

    static {
        STATE_UPDATER = AtomicReferenceFieldUpdater.newUpdater(SubjectSubscriptionManager.class, State.class, GameServices.STATE);
        LATEST_UPDATER = AtomicReferenceFieldUpdater.newUpdater(SubjectSubscriptionManager.class, Object.class, "latest");
    }

    SubjectSubscriptionManager() {
        this.state = State.EMPTY;
        this.active = true;
        this.onStart = Actions.empty();
        this.onAdded = Actions.empty();
        this.onTerminated = Actions.empty();
        this.nl = NotificationLite.instance();
    }

    boolean add(SubjectObserver<T> subjectObserver) {
        State state;
        do {
            state = this.state;
            if (state.terminated) {
                this.onTerminated.call(subjectObserver);
                return false;
            }
        } while (!STATE_UPDATER.compareAndSet(this, state, state.add(subjectObserver)));
        this.onAdded.call(subjectObserver);
        return true;
    }

    void addUnsubscriber(Subscriber<? super T> subscriber, SubjectObserver<T> subjectObserver) {
        subscriber.add(Subscriptions.create(new C13951(subjectObserver)));
    }

    public void call(Subscriber<? super T> subscriber) {
        SubjectObserver subjectObserver = new SubjectObserver(subscriber);
        addUnsubscriber(subscriber, subjectObserver);
        this.onStart.call(subjectObserver);
        if (!subscriber.isUnsubscribed() && add(subjectObserver) && subscriber.isUnsubscribed()) {
            remove(subjectObserver);
        }
    }

    Object get() {
        return this.latest;
    }

    SubjectObserver<T>[] next(Object obj) {
        set(obj);
        return this.state.observers;
    }

    SubjectObserver<T>[] observers() {
        return this.state.observers;
    }

    void remove(SubjectObserver<T> subjectObserver) {
        State state;
        State remove;
        do {
            state = this.state;
            if (!state.terminated) {
                remove = state.remove(subjectObserver);
                if (remove == state) {
                    return;
                }
            } else {
                return;
            }
        } while (!STATE_UPDATER.compareAndSet(this, state, remove));
    }

    void set(Object obj) {
        this.latest = obj;
    }

    SubjectObserver<T>[] terminate(Object obj) {
        set(obj);
        this.active = false;
        return this.state.terminated ? State.NO_OBSERVERS : ((State) STATE_UPDATER.getAndSet(this, State.TERMINATED)).observers;
    }
}
