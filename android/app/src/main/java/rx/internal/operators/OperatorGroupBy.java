package rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import org.apache.commons.io.FileUtils;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.exceptions.OnErrorThrowable;
import rx.functions.Action0;
import rx.functions.Func1;
import rx.observables.GroupedObservable;
import rx.subjects.Subject;
import rx.subscriptions.Subscriptions;

public class OperatorGroupBy<T, K, R> implements Operator<GroupedObservable<K, R>, T> {
    private static final Func1<Object, Object> IDENTITY;
    private static final Object NULL_KEY;
    final Func1<? super T, ? extends K> keySelector;
    final Func1<? super T, ? extends R> valueSelector;

    /* renamed from: rx.internal.operators.OperatorGroupBy.1 */
    static final class C12351 implements Func1<Object, Object> {
        C12351() {
        }

        public Object call(Object obj) {
            return obj;
        }
    }

    static final class GroupBySubscriber<K, T, R> extends Subscriber<T> {
        static final AtomicLongFieldUpdater<GroupBySubscriber> BUFFERED_COUNT;
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> COMPLETION_EMITTED_UPDATER;
        private static final int MAX_QUEUE_SIZE = 1024;
        static final AtomicLongFieldUpdater<GroupBySubscriber> REQUESTED;
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> TERMINATED_UPDATER;
        private static final int TERMINATED_WITH_COMPLETED = 1;
        private static final int TERMINATED_WITH_ERROR = 2;
        private static final int UNTERMINATED = 0;
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> WIP_FOR_UNSUBSCRIBE_UPDATER;
        private static final NotificationLite<Object> nl;
        volatile long bufferedCount;
        final Subscriber<? super GroupedObservable<K, R>> child;
        volatile int completionEmitted;
        final Func1<? super T, ? extends R> elementSelector;
        private final ConcurrentHashMap<Object, GroupState<K, T>> groups;
        final Func1<? super T, ? extends K> keySelector;
        volatile long requested;
        final GroupBySubscriber<K, T, R> self;
        volatile int terminated;
        volatile int wipForUnsubscribe;

        /* renamed from: rx.internal.operators.OperatorGroupBy.GroupBySubscriber.1 */
        class C12361 implements Action0 {
            C12361() {
            }

            public void call() {
                if (GroupBySubscriber.WIP_FOR_UNSUBSCRIBE_UPDATER.decrementAndGet(GroupBySubscriber.this.self) == 0) {
                    GroupBySubscriber.this.self.unsubscribe();
                }
            }
        }

        /* renamed from: rx.internal.operators.OperatorGroupBy.GroupBySubscriber.2 */
        class C12402 implements OnSubscribe<R> {
            final /* synthetic */ GroupState val$groupState;
            final /* synthetic */ Object val$key;

            /* renamed from: rx.internal.operators.OperatorGroupBy.GroupBySubscriber.2.1 */
            class C12371 implements Producer {
                C12371() {
                }

                public void request(long j) {
                    GroupBySubscriber.this.requestFromGroupedObservable(j, C12402.this.val$groupState);
                }
            }

            /* renamed from: rx.internal.operators.OperatorGroupBy.GroupBySubscriber.2.2 */
            class C12382 extends Subscriber<T> {
                final /* synthetic */ Subscriber val$o;
                final /* synthetic */ AtomicBoolean val$once;

                C12382(Subscriber subscriber, Subscriber subscriber2, AtomicBoolean atomicBoolean) {
                    this.val$o = subscriber2;
                    this.val$once = atomicBoolean;
                    super(subscriber);
                }

                public void onCompleted() {
                    this.val$o.onCompleted();
                    if (this.val$once.compareAndSet(false, true)) {
                        GroupBySubscriber.this.cleanupGroup(C12402.this.val$key);
                    }
                }

                public void onError(Throwable th) {
                    this.val$o.onError(th);
                    if (this.val$once.compareAndSet(false, true)) {
                        GroupBySubscriber.this.cleanupGroup(C12402.this.val$key);
                    }
                }

                public void onNext(T t) {
                    try {
                        this.val$o.onNext(GroupBySubscriber.this.elementSelector.call(t));
                    } catch (Throwable th) {
                        onError(OnErrorThrowable.addValueAsLastCause(th, t));
                    }
                }

                public void onStart() {
                }
            }

            /* renamed from: rx.internal.operators.OperatorGroupBy.GroupBySubscriber.2.3 */
            class C12393 implements Action0 {
                final /* synthetic */ AtomicBoolean val$once;

                C12393(AtomicBoolean atomicBoolean) {
                    this.val$once = atomicBoolean;
                }

                public void call() {
                    if (this.val$once.compareAndSet(false, true)) {
                        GroupBySubscriber.this.cleanupGroup(C12402.this.val$key);
                    }
                }
            }

            C12402(GroupState groupState, Object obj) {
                this.val$groupState = groupState;
                this.val$key = obj;
            }

            public void call(Subscriber<? super R> subscriber) {
                subscriber.setProducer(new C12371());
                AtomicBoolean atomicBoolean = new AtomicBoolean();
                this.val$groupState.getObservable().doOnUnsubscribe(new C12393(atomicBoolean)).unsafeSubscribe(new C12382(subscriber, subscriber, atomicBoolean));
            }
        }

        private static class GroupState<K, T> {
            private final Queue<Object> buffer;
            private final AtomicLong count;
            private final AtomicLong requested;
            private final Subject<T, T> f917s;

            private GroupState() {
                this.f917s = BufferUntilSubscriber.create();
                this.requested = new AtomicLong();
                this.count = new AtomicLong();
                this.buffer = new ConcurrentLinkedQueue();
            }

            public Observable<T> getObservable() {
                return this.f917s;
            }

            public Observer<T> getObserver() {
                return this.f917s;
            }
        }

        static {
            WIP_FOR_UNSUBSCRIBE_UPDATER = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, "wipForUnsubscribe");
            nl = NotificationLite.instance();
            COMPLETION_EMITTED_UPDATER = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, "completionEmitted");
            TERMINATED_UPDATER = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, "terminated");
            REQUESTED = AtomicLongFieldUpdater.newUpdater(GroupBySubscriber.class, "requested");
            BUFFERED_COUNT = AtomicLongFieldUpdater.newUpdater(GroupBySubscriber.class, "bufferedCount");
        }

        public GroupBySubscriber(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends R> func12, Subscriber<? super GroupedObservable<K, R>> subscriber) {
            this.self = this;
            this.wipForUnsubscribe = TERMINATED_WITH_COMPLETED;
            this.groups = new ConcurrentHashMap();
            this.terminated = 0;
            this.keySelector = func1;
            this.elementSelector = func12;
            this.child = subscriber;
            subscriber.add(Subscriptions.create(new C12361()));
        }

        private void cleanupGroup(Object obj) {
            GroupState groupState = (GroupState) this.groups.remove(obj);
            if (groupState != null) {
                if (!groupState.buffer.isEmpty()) {
                    BUFFERED_COUNT.addAndGet(this.self, (long) (-groupState.buffer.size()));
                }
                completeInner();
                requestMoreIfNecessary();
            }
        }

        private void completeInner() {
            if (WIP_FOR_UNSUBSCRIBE_UPDATER.decrementAndGet(this) == 0) {
                unsubscribe();
            } else if (this.groups.isEmpty() && this.terminated == TERMINATED_WITH_COMPLETED && COMPLETION_EMITTED_UPDATER.compareAndSet(this, 0, TERMINATED_WITH_COMPLETED)) {
                this.child.onCompleted();
            }
        }

        private GroupState<K, T> createNewGroup(Object obj) {
            GroupState<K, T> groupState = new GroupState();
            GroupedObservable create = GroupedObservable.create(getKey(obj), new C12402(groupState, obj));
            int i;
            do {
                i = this.wipForUnsubscribe;
                if (i <= 0) {
                    return null;
                }
            } while (!WIP_FOR_UNSUBSCRIBE_UPDATER.compareAndSet(this, i, i + TERMINATED_WITH_COMPLETED));
            if (((GroupState) this.groups.putIfAbsent(obj, groupState)) != null) {
                throw new IllegalStateException("Group already existed while creating a new one");
            }
            this.child.onNext(create);
            return groupState;
        }

        private void drainIfPossible(GroupState<K, T> groupState) {
            while (groupState.requested.get() > 0) {
                Object poll = groupState.buffer.poll();
                if (poll != null) {
                    nl.accept(groupState.getObserver(), poll);
                    if (groupState.requested.get() != Long.MAX_VALUE) {
                        groupState.requested.decrementAndGet();
                    }
                    BUFFERED_COUNT.decrementAndGet(this);
                    requestMoreIfNecessary();
                } else {
                    return;
                }
            }
        }

        private void emitItem(GroupState<K, T> groupState, Object obj) {
            Queue access$500 = groupState.buffer;
            AtomicLong access$000 = groupState.requested;
            REQUESTED.decrementAndGet(this);
            if (access$000 == null || access$000.get() <= 0 || !(access$500 == null || access$500.isEmpty())) {
                access$500.add(obj);
                BUFFERED_COUNT.incrementAndGet(this);
                if (groupState.count.getAndIncrement() == 0) {
                    pollQueue(groupState);
                }
            } else {
                nl.accept(groupState.getObserver(), obj);
                if (access$000.get() != Long.MAX_VALUE) {
                    access$000.decrementAndGet();
                }
            }
            requestMoreIfNecessary();
        }

        private K getKey(Object obj) {
            return obj == OperatorGroupBy.NULL_KEY ? null : obj;
        }

        private Object groupedKey(K k) {
            return k == null ? OperatorGroupBy.NULL_KEY : k;
        }

        private void pollQueue(GroupState<K, T> groupState) {
            do {
                drainIfPossible(groupState);
                if (groupState.count.decrementAndGet() > 1) {
                    groupState.count.set(1);
                }
            } while (groupState.count.get() > 0);
        }

        private void requestMoreIfNecessary() {
            if (REQUESTED.get(this) == 0 && this.terminated == 0) {
                long j = FileUtils.ONE_KB - BUFFERED_COUNT.get(this);
                if (j > 0 && REQUESTED.compareAndSet(this, 0, j)) {
                    request(j);
                }
            }
        }

        public void onCompleted() {
            if (TERMINATED_UPDATER.compareAndSet(this, 0, TERMINATED_WITH_COMPLETED)) {
                for (GroupState emitItem : this.groups.values()) {
                    emitItem(emitItem, nl.completed());
                }
                if (this.groups.isEmpty() && COMPLETION_EMITTED_UPDATER.compareAndSet(this, 0, TERMINATED_WITH_COMPLETED)) {
                    this.child.onCompleted();
                }
            }
        }

        public void onError(Throwable th) {
            if (TERMINATED_UPDATER.compareAndSet(this, 0, TERMINATED_WITH_ERROR)) {
                for (GroupState emitItem : this.groups.values()) {
                    emitItem(emitItem, nl.error(th));
                }
                try {
                    this.child.onError(th);
                } finally {
                    unsubscribe();
                }
            }
        }

        public void onNext(T t) {
            try {
                Object groupedKey = groupedKey(this.keySelector.call(t));
                GroupState groupState = (GroupState) this.groups.get(groupedKey);
                if (groupState == null) {
                    if (!this.child.isUnsubscribed()) {
                        groupState = createNewGroup(groupedKey);
                    } else {
                        return;
                    }
                }
                if (groupState != null) {
                    emitItem(groupState, nl.next(t));
                }
            } catch (Throwable th) {
                onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }

        public void onStart() {
            REQUESTED.set(this, FileUtils.ONE_KB);
            request(FileUtils.ONE_KB);
        }

        void requestFromGroupedObservable(long j, GroupState<K, T> groupState) {
            BackpressureUtils.getAndAddRequest(groupState.requested, j);
            if (groupState.count.getAndIncrement() == 0) {
                pollQueue(groupState);
            }
        }
    }

    static {
        IDENTITY = new C12351();
        NULL_KEY = new Object();
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> func1) {
        this(func1, IDENTITY);
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> func1, Func1<? super T, ? extends R> func12) {
        this.keySelector = func1;
        this.valueSelector = func12;
    }

    public Subscriber<? super T> call(Subscriber<? super GroupedObservable<K, R>> subscriber) {
        return new GroupBySubscriber(this.keySelector, this.valueSelector, subscriber);
    }
}
