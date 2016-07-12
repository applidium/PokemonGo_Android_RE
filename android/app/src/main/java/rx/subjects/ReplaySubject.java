package rx.subjects;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.Observable.OnSubscribe;
import rx.Observer;
import rx.Scheduler;
import rx.annotations.Experimental;
import rx.exceptions.Exceptions;
import rx.functions.Action1;
import rx.functions.Func1;
import rx.internal.operators.NotificationLite;
import rx.internal.util.UtilityFunctions;
import rx.schedulers.Timestamped;

public final class ReplaySubject<T> extends Subject<T, T> {
    final SubjectSubscriptionManager<T> ssm;
    final ReplayState<T, ?> state;

    /* renamed from: rx.subjects.ReplaySubject.1 */
    static final class C13891 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ UnboundedReplayState val$state;

        C13891(UnboundedReplayState unboundedReplayState) {
            this.val$state = unboundedReplayState;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            subjectObserver.index(Integer.valueOf(this.val$state.replayObserverFromIndex(Integer.valueOf(0), (SubjectObserver) subjectObserver).intValue()));
        }
    }

    /* renamed from: rx.subjects.ReplaySubject.2 */
    static final class C13902 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ UnboundedReplayState val$state;

        C13902(UnboundedReplayState unboundedReplayState) {
            this.val$state = unboundedReplayState;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void call(rx.subjects.SubjectSubscriptionManager.SubjectObserver<T> r6) {
            /*
            r5 = this;
            r1 = 1;
            r2 = 0;
            monitor-enter(r6);
            r0 = r6.first;	 Catch:{ all -> 0x004a }
            if (r0 == 0) goto L_0x000b;
        L_0x0007:
            r0 = r6.emitting;	 Catch:{ all -> 0x004a }
            if (r0 == 0) goto L_0x000d;
        L_0x000b:
            monitor-exit(r6);	 Catch:{ all -> 0x004a }
        L_0x000c:
            return;
        L_0x000d:
            r0 = 0;
            r6.first = r0;	 Catch:{ all -> 0x004a }
            r0 = 1;
            r6.emitting = r0;	 Catch:{ all -> 0x004a }
            monitor-exit(r6);	 Catch:{ all -> 0x004a }
        L_0x0014:
            r0 = r6.index();	 Catch:{ all -> 0x0055 }
            r0 = (java.lang.Integer) r0;	 Catch:{ all -> 0x0055 }
            r0 = r0.intValue();	 Catch:{ all -> 0x0055 }
            r3 = r5.val$state;	 Catch:{ all -> 0x0055 }
            r3 = r3.index;	 Catch:{ all -> 0x0055 }
            if (r0 == r3) goto L_0x0031;
        L_0x0024:
            r4 = r5.val$state;	 Catch:{ all -> 0x0055 }
            r0 = java.lang.Integer.valueOf(r0);	 Catch:{ all -> 0x0055 }
            r0 = r4.replayObserverFromIndex(r0, r6);	 Catch:{ all -> 0x0055 }
            r6.index(r0);	 Catch:{ all -> 0x0055 }
        L_0x0031:
            monitor-enter(r6);	 Catch:{ all -> 0x0055 }
            r0 = r5.val$state;	 Catch:{ all -> 0x004f }
            r0 = r0.index;	 Catch:{ all -> 0x004f }
            if (r3 != r0) goto L_0x004d;
        L_0x0038:
            r0 = 0;
            r6.emitting = r0;	 Catch:{ all -> 0x004f }
            monitor-exit(r6);	 Catch:{ all -> 0x003d }
            goto L_0x000c;
        L_0x003d:
            r0 = move-exception;
        L_0x003e:
            monitor-exit(r6);	 Catch:{ all -> 0x003d }
            throw r0;	 Catch:{ all -> 0x0040 }
        L_0x0040:
            r0 = move-exception;
            r2 = r1;
        L_0x0042:
            if (r2 != 0) goto L_0x0049;
        L_0x0044:
            monitor-enter(r6);
            r1 = 0;
            r6.emitting = r1;	 Catch:{ all -> 0x0052 }
            monitor-exit(r6);	 Catch:{ all -> 0x0052 }
        L_0x0049:
            throw r0;
        L_0x004a:
            r0 = move-exception;
            monitor-exit(r6);	 Catch:{ all -> 0x004a }
            throw r0;
        L_0x004d:
            monitor-exit(r6);	 Catch:{ all -> 0x004f }
            goto L_0x0014;
        L_0x004f:
            r0 = move-exception;
            r1 = r2;
            goto L_0x003e;
        L_0x0052:
            r0 = move-exception;
            monitor-exit(r6);	 Catch:{ all -> 0x0052 }
            throw r0;
        L_0x0055:
            r0 = move-exception;
            goto L_0x0042;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.ReplaySubject.2.call(rx.subjects.SubjectSubscriptionManager$SubjectObserver):void");
        }
    }

    /* renamed from: rx.subjects.ReplaySubject.3 */
    static final class C13913 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ UnboundedReplayState val$state;

        C13913(UnboundedReplayState unboundedReplayState) {
            this.val$state = unboundedReplayState;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            Integer num = (Integer) subjectObserver.index();
            if (num == null) {
                num = Integer.valueOf(0);
            }
            this.val$state.replayObserverFromIndex(num, (SubjectObserver) subjectObserver);
        }
    }

    /* renamed from: rx.subjects.ReplaySubject.4 */
    static final class C13924 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ BoundedState val$state;

        C13924(BoundedState boundedState) {
            this.val$state = boundedState;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public void call(rx.subjects.SubjectSubscriptionManager.SubjectObserver<T> r6) {
            /*
            r5 = this;
            r1 = 1;
            r2 = 0;
            monitor-enter(r6);
            r0 = r6.first;	 Catch:{ all -> 0x0046 }
            if (r0 == 0) goto L_0x000b;
        L_0x0007:
            r0 = r6.emitting;	 Catch:{ all -> 0x0046 }
            if (r0 == 0) goto L_0x000d;
        L_0x000b:
            monitor-exit(r6);	 Catch:{ all -> 0x0046 }
        L_0x000c:
            return;
        L_0x000d:
            r0 = 0;
            r6.first = r0;	 Catch:{ all -> 0x0046 }
            r0 = 1;
            r6.emitting = r0;	 Catch:{ all -> 0x0046 }
            monitor-exit(r6);	 Catch:{ all -> 0x0046 }
        L_0x0014:
            r0 = r6.index();	 Catch:{ all -> 0x0051 }
            r0 = (rx.subjects.ReplaySubject.NodeList.Node) r0;	 Catch:{ all -> 0x0051 }
            r3 = r5.val$state;	 Catch:{ all -> 0x0051 }
            r3 = r3.tail();	 Catch:{ all -> 0x0051 }
            if (r0 == r3) goto L_0x002b;
        L_0x0022:
            r4 = r5.val$state;	 Catch:{ all -> 0x0051 }
            r0 = r4.replayObserverFromIndex(r0, r6);	 Catch:{ all -> 0x0051 }
            r6.index(r0);	 Catch:{ all -> 0x0051 }
        L_0x002b:
            monitor-enter(r6);	 Catch:{ all -> 0x0051 }
            r0 = r5.val$state;	 Catch:{ all -> 0x004b }
            r0 = r0.tail();	 Catch:{ all -> 0x004b }
            if (r3 != r0) goto L_0x0049;
        L_0x0034:
            r0 = 0;
            r6.emitting = r0;	 Catch:{ all -> 0x004b }
            monitor-exit(r6);	 Catch:{ all -> 0x0039 }
            goto L_0x000c;
        L_0x0039:
            r0 = move-exception;
        L_0x003a:
            monitor-exit(r6);	 Catch:{ all -> 0x0039 }
            throw r0;	 Catch:{ all -> 0x003c }
        L_0x003c:
            r0 = move-exception;
            r2 = r1;
        L_0x003e:
            if (r2 != 0) goto L_0x0045;
        L_0x0040:
            monitor-enter(r6);
            r1 = 0;
            r6.emitting = r1;	 Catch:{ all -> 0x004e }
            monitor-exit(r6);	 Catch:{ all -> 0x004e }
        L_0x0045:
            throw r0;
        L_0x0046:
            r0 = move-exception;
            monitor-exit(r6);	 Catch:{ all -> 0x0046 }
            throw r0;
        L_0x0049:
            monitor-exit(r6);	 Catch:{ all -> 0x004b }
            goto L_0x0014;
        L_0x004b:
            r0 = move-exception;
            r1 = r2;
            goto L_0x003a;
        L_0x004e:
            r0 = move-exception;
            monitor-exit(r6);	 Catch:{ all -> 0x004e }
            throw r0;
        L_0x0051:
            r0 = move-exception;
            goto L_0x003e;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.ReplaySubject.4.call(rx.subjects.SubjectSubscriptionManager$SubjectObserver):void");
        }
    }

    /* renamed from: rx.subjects.ReplaySubject.5 */
    static final class C13935 implements Action1<SubjectObserver<T>> {
        final /* synthetic */ BoundedState val$state;

        C13935(BoundedState boundedState) {
            this.val$state = boundedState;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            Node node = (Node) subjectObserver.index();
            if (node == null) {
                node = this.val$state.head();
            }
            this.val$state.replayObserverFromIndex(node, (SubjectObserver) subjectObserver);
        }
    }

    static final class AddTimestamped implements Func1<Object, Object> {
        final Scheduler scheduler;

        public AddTimestamped(Scheduler scheduler) {
            this.scheduler = scheduler;
        }

        public Object call(Object obj) {
            return new Timestamped(this.scheduler.now(), obj);
        }
    }

    interface ReplayState<T, I> {
        void complete();

        void error(Throwable th);

        boolean isEmpty();

        T latest();

        void next(T t);

        boolean replayObserver(SubjectObserver<? super T> subjectObserver);

        I replayObserverFromIndex(I i, SubjectObserver<? super T> subjectObserver);

        I replayObserverFromIndexTest(I i, SubjectObserver<? super T> subjectObserver, long j);

        int size();

        boolean terminated();

        T[] toArray(T[] tArr);
    }

    static final class BoundedState<T> implements ReplayState<T, Node<Object>> {
        final Func1<Object, Object> enterTransform;
        final EvictionPolicy evictionPolicy;
        final Func1<Object, Object> leaveTransform;
        final NodeList<Object> list;
        final NotificationLite<T> nl;
        volatile Node<Object> tail;
        volatile boolean terminated;

        public BoundedState(EvictionPolicy evictionPolicy, Func1<Object, Object> func1, Func1<Object, Object> func12) {
            this.nl = NotificationLite.instance();
            this.list = new NodeList();
            this.tail = this.list.tail;
            this.evictionPolicy = evictionPolicy;
            this.enterTransform = func1;
            this.leaveTransform = func12;
        }

        public void accept(Observer<? super T> observer, Node<Object> node) {
            this.nl.accept(observer, this.leaveTransform.call(node.value));
        }

        public void acceptTest(Observer<? super T> observer, Node<Object> node, long j) {
            Object obj = node.value;
            if (!this.evictionPolicy.test(obj, j)) {
                this.nl.accept(observer, this.leaveTransform.call(obj));
            }
        }

        public void complete() {
            if (!this.terminated) {
                this.terminated = true;
                this.list.addLast(this.enterTransform.call(this.nl.completed()));
                this.evictionPolicy.evictFinal(this.list);
                this.tail = this.list.tail;
            }
        }

        public void error(Throwable th) {
            if (!this.terminated) {
                this.terminated = true;
                this.list.addLast(this.enterTransform.call(this.nl.error(th)));
                this.evictionPolicy.evictFinal(this.list);
                this.tail = this.list.tail;
            }
        }

        public Node<Object> head() {
            return this.list.head;
        }

        public boolean isEmpty() {
            Node node = head().next;
            if (node == null) {
                return true;
            }
            Object call = this.leaveTransform.call(node.value);
            return this.nl.isError(call) || this.nl.isCompleted(call);
        }

        public T latest() {
            Node node = head().next;
            if (node == null) {
                return null;
            }
            Node node2 = null;
            while (node != tail()) {
                Node node3 = node;
                node = node.next;
                node2 = node3;
            }
            Object call = this.leaveTransform.call(node.value);
            if (!this.nl.isError(call) && !this.nl.isCompleted(call)) {
                return this.nl.getValue(call);
            }
            if (node2 == null) {
                return null;
            }
            return this.nl.getValue(this.leaveTransform.call(node2.value));
        }

        public void next(T t) {
            if (!this.terminated) {
                this.list.addLast(this.enterTransform.call(this.nl.next(t)));
                this.evictionPolicy.evict(this.list);
                this.tail = this.list.tail;
            }
        }

        public boolean replayObserver(SubjectObserver<? super T> subjectObserver) {
            synchronized (subjectObserver) {
                subjectObserver.first = false;
                if (subjectObserver.emitting) {
                    return false;
                }
                subjectObserver.index(replayObserverFromIndex((Node) subjectObserver.index(), (SubjectObserver) subjectObserver));
                return true;
            }
        }

        public Node<Object> replayObserverFromIndex(Node<Object> node, SubjectObserver<? super T> subjectObserver) {
            while (node != tail()) {
                accept(subjectObserver, node.next);
                node = node.next;
            }
            return node;
        }

        public Node<Object> replayObserverFromIndexTest(Node<Object> node, SubjectObserver<? super T> subjectObserver, long j) {
            while (node != tail()) {
                acceptTest(subjectObserver, node.next, j);
                node = node.next;
            }
            return node;
        }

        public int size() {
            Node head = head();
            Node node = head.next;
            Node node2 = head;
            int i = 0;
            Node node3 = node2;
            while (node != null) {
                int i2 = i + 1;
                node2 = node;
                node = node.next;
                i = i2;
                node3 = node2;
            }
            if (node3.value == null) {
                return i;
            }
            Object call = this.leaveTransform.call(node3.value);
            return call != null ? (this.nl.isError(call) || this.nl.isCompleted(call)) ? i - 1 : i : i;
        }

        public Node<Object> tail() {
            return this.tail;
        }

        public boolean terminated() {
            return this.terminated;
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public T[] toArray(T[] r5) {
            /*
            r4 = this;
            r1 = new java.util.ArrayList;
            r1.<init>();
            r0 = r4.head();
            r0 = r0.next;
        L_0x000b:
            if (r0 == 0) goto L_0x0029;
        L_0x000d:
            r2 = r4.leaveTransform;
            r3 = r0.value;
            r2 = r2.call(r3);
            r3 = r0.next;
            if (r3 != 0) goto L_0x002e;
        L_0x0019:
            r3 = r4.nl;
            r3 = r3.isError(r2);
            if (r3 != 0) goto L_0x0029;
        L_0x0021:
            r3 = r4.nl;
            r3 = r3.isCompleted(r2);
            if (r3 == 0) goto L_0x002e;
        L_0x0029:
            r0 = r1.toArray(r5);
            return r0;
        L_0x002e:
            r1.add(r2);
            r0 = r0.next;
            goto L_0x000b;
            */
            throw new UnsupportedOperationException("Method not decompiled: rx.subjects.ReplaySubject.BoundedState.toArray(java.lang.Object[]):T[]");
        }
    }

    static final class DefaultOnAdd<T> implements Action1<SubjectObserver<T>> {
        final BoundedState<T> state;

        public DefaultOnAdd(BoundedState<T> boundedState) {
            this.state = boundedState;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            subjectObserver.index(this.state.replayObserverFromIndex(this.state.head(), (SubjectObserver) subjectObserver));
        }
    }

    interface EvictionPolicy {
        void evict(NodeList<Object> nodeList);

        void evictFinal(NodeList<Object> nodeList);

        boolean test(Object obj, long j);
    }

    static final class EmptyEvictionPolicy implements EvictionPolicy {
        EmptyEvictionPolicy() {
        }

        public void evict(NodeList<Object> nodeList) {
        }

        public void evictFinal(NodeList<Object> nodeList) {
        }

        public boolean test(Object obj, long j) {
            return true;
        }
    }

    static final class NodeList<T> {
        final Node<T> head;
        int size;
        Node<T> tail;

        static final class Node<T> {
            volatile Node<T> next;
            final T value;

            Node(T t) {
                this.value = t;
            }
        }

        NodeList() {
            this.head = new Node(null);
            this.tail = this.head;
        }

        public void addLast(T t) {
            Node node = this.tail;
            Node node2 = new Node(t);
            node.next = node2;
            this.tail = node2;
            this.size++;
        }

        public void clear() {
            this.tail = this.head;
            this.size = 0;
        }

        public boolean isEmpty() {
            return this.size == 0;
        }

        public T removeFirst() {
            if (this.head.next == null) {
                throw new IllegalStateException("Empty!");
            }
            Node node = this.head.next;
            this.head.next = node.next;
            if (this.head.next == null) {
                this.tail = this.head;
            }
            this.size--;
            return node.value;
        }

        public int size() {
            return this.size;
        }
    }

    static final class PairEvictionPolicy implements EvictionPolicy {
        final EvictionPolicy first;
        final EvictionPolicy second;

        public PairEvictionPolicy(EvictionPolicy evictionPolicy, EvictionPolicy evictionPolicy2) {
            this.first = evictionPolicy;
            this.second = evictionPolicy2;
        }

        public void evict(NodeList<Object> nodeList) {
            this.first.evict(nodeList);
            this.second.evict(nodeList);
        }

        public void evictFinal(NodeList<Object> nodeList) {
            this.first.evictFinal(nodeList);
            this.second.evictFinal(nodeList);
        }

        public boolean test(Object obj, long j) {
            return this.first.test(obj, j) || this.second.test(obj, j);
        }
    }

    static final class RemoveTimestamped implements Func1<Object, Object> {
        RemoveTimestamped() {
        }

        public Object call(Object obj) {
            return ((Timestamped) obj).getValue();
        }
    }

    static final class SizeEvictionPolicy implements EvictionPolicy {
        final int maxSize;

        public SizeEvictionPolicy(int i) {
            this.maxSize = i;
        }

        public void evict(NodeList<Object> nodeList) {
            while (nodeList.size() > this.maxSize) {
                nodeList.removeFirst();
            }
        }

        public void evictFinal(NodeList<Object> nodeList) {
            while (nodeList.size() > this.maxSize + 1) {
                nodeList.removeFirst();
            }
        }

        public boolean test(Object obj, long j) {
            return false;
        }
    }

    static final class TimeEvictionPolicy implements EvictionPolicy {
        final long maxAgeMillis;
        final Scheduler scheduler;

        public TimeEvictionPolicy(long j, Scheduler scheduler) {
            this.maxAgeMillis = j;
            this.scheduler = scheduler;
        }

        public void evict(NodeList<Object> nodeList) {
            long now = this.scheduler.now();
            while (!nodeList.isEmpty() && test(nodeList.head.next.value, now)) {
                nodeList.removeFirst();
            }
        }

        public void evictFinal(NodeList<Object> nodeList) {
            long now = this.scheduler.now();
            while (nodeList.size > 1 && test(nodeList.head.next.value, now)) {
                nodeList.removeFirst();
            }
        }

        public boolean test(Object obj, long j) {
            return ((Timestamped) obj).getTimestampMillis() <= j - this.maxAgeMillis;
        }
    }

    static final class TimedOnAdd<T> implements Action1<SubjectObserver<T>> {
        final Scheduler scheduler;
        final BoundedState<T> state;

        public TimedOnAdd(BoundedState<T> boundedState, Scheduler scheduler) {
            this.state = boundedState;
            this.scheduler = scheduler;
        }

        public void call(SubjectObserver<T> subjectObserver) {
            subjectObserver.index(!this.state.terminated ? this.state.replayObserverFromIndexTest(this.state.head(), (SubjectObserver) subjectObserver, this.scheduler.now()) : this.state.replayObserverFromIndex(this.state.head(), (SubjectObserver) subjectObserver));
        }
    }

    static final class UnboundedReplayState<T> implements ReplayState<T, Integer> {
        static final AtomicIntegerFieldUpdater<UnboundedReplayState> INDEX_UPDATER;
        volatile int index;
        private final ArrayList<Object> list;
        private final NotificationLite<T> nl;
        private volatile boolean terminated;

        static {
            INDEX_UPDATER = AtomicIntegerFieldUpdater.newUpdater(UnboundedReplayState.class, "index");
        }

        public UnboundedReplayState(int i) {
            this.nl = NotificationLite.instance();
            this.list = new ArrayList(i);
        }

        public void accept(Observer<? super T> observer, int i) {
            this.nl.accept(observer, this.list.get(i));
        }

        public void complete() {
            if (!this.terminated) {
                this.terminated = true;
                this.list.add(this.nl.completed());
                INDEX_UPDATER.getAndIncrement(this);
            }
        }

        public void error(Throwable th) {
            if (!this.terminated) {
                this.terminated = true;
                this.list.add(this.nl.error(th));
                INDEX_UPDATER.getAndIncrement(this);
            }
        }

        public boolean isEmpty() {
            return size() == 0;
        }

        public T latest() {
            int i = this.index;
            if (i <= 0) {
                return null;
            }
            Object obj = this.list.get(i - 1);
            return (this.nl.isCompleted(obj) || this.nl.isError(obj)) ? i > 1 ? this.nl.getValue(this.list.get(i - 2)) : null : this.nl.getValue(obj);
        }

        public void next(T t) {
            if (!this.terminated) {
                this.list.add(this.nl.next(t));
                INDEX_UPDATER.getAndIncrement(this);
            }
        }

        public boolean replayObserver(SubjectObserver<? super T> subjectObserver) {
            synchronized (subjectObserver) {
                subjectObserver.first = false;
                if (subjectObserver.emitting) {
                    return false;
                }
                Integer num = (Integer) subjectObserver.index();
                if (num != null) {
                    subjectObserver.index(Integer.valueOf(replayObserverFromIndex(num, (SubjectObserver) subjectObserver).intValue()));
                    return true;
                }
                throw new IllegalStateException("failed to find lastEmittedLink for: " + subjectObserver);
            }
        }

        public Integer replayObserverFromIndex(Integer num, SubjectObserver<? super T> subjectObserver) {
            int intValue = num.intValue();
            while (intValue < this.index) {
                accept(subjectObserver, intValue);
                intValue++;
            }
            return Integer.valueOf(intValue);
        }

        public Integer replayObserverFromIndexTest(Integer num, SubjectObserver<? super T> subjectObserver, long j) {
            return replayObserverFromIndex(num, (SubjectObserver) subjectObserver);
        }

        public int size() {
            int i = this.index;
            if (i <= 0) {
                return i;
            }
            Object obj = this.list.get(i - 1);
            return (this.nl.isCompleted(obj) || this.nl.isError(obj)) ? i - 1 : i;
        }

        public boolean terminated() {
            return this.terminated;
        }

        public T[] toArray(T[] tArr) {
            int i = 0;
            int size = size();
            if (size > 0) {
                r0 = size > tArr.length ? (Object[]) Array.newInstance(tArr.getClass().getComponentType(), size) : tArr;
                while (i < size) {
                    r0[i] = this.list.get(i);
                    i++;
                }
                if (r0.length <= size) {
                    return r0;
                }
                r0[size] = null;
                return r0;
            } else if (tArr.length <= 0) {
                return tArr;
            } else {
                tArr[0] = null;
                return tArr;
            }
        }
    }

    ReplaySubject(OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> subjectSubscriptionManager, ReplayState<T, ?> replayState) {
        super(onSubscribe);
        this.ssm = subjectSubscriptionManager;
        this.state = replayState;
    }

    private boolean caughtUp(SubjectObserver<? super T> subjectObserver) {
        if (subjectObserver.caughtUp) {
            return true;
        }
        if (this.state.replayObserver(subjectObserver)) {
            subjectObserver.caughtUp = true;
            subjectObserver.index(null);
        }
        return false;
    }

    public static <T> ReplaySubject<T> create() {
        return create(16);
    }

    public static <T> ReplaySubject<T> create(int i) {
        ReplayState unboundedReplayState = new UnboundedReplayState(i);
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onStart = new C13891(unboundedReplayState);
        subjectSubscriptionManager.onAdded = new C13902(unboundedReplayState);
        subjectSubscriptionManager.onTerminated = new C13913(unboundedReplayState);
        return new ReplaySubject(subjectSubscriptionManager, subjectSubscriptionManager, unboundedReplayState);
    }

    static <T> ReplaySubject<T> createUnbounded() {
        BoundedState boundedState = new BoundedState(new EmptyEvictionPolicy(), UtilityFunctions.identity(), UtilityFunctions.identity());
        return createWithState(boundedState, new DefaultOnAdd(boundedState));
    }

    public static <T> ReplaySubject<T> createWithSize(int i) {
        BoundedState boundedState = new BoundedState(new SizeEvictionPolicy(i), UtilityFunctions.identity(), UtilityFunctions.identity());
        return createWithState(boundedState, new DefaultOnAdd(boundedState));
    }

    static final <T> ReplaySubject<T> createWithState(BoundedState<T> boundedState, Action1<SubjectObserver<T>> action1) {
        Object subjectSubscriptionManager = new SubjectSubscriptionManager();
        subjectSubscriptionManager.onStart = action1;
        subjectSubscriptionManager.onAdded = new C13924(boundedState);
        subjectSubscriptionManager.onTerminated = new C13935(boundedState);
        return new ReplaySubject(subjectSubscriptionManager, subjectSubscriptionManager, boundedState);
    }

    public static <T> ReplaySubject<T> createWithTime(long j, TimeUnit timeUnit, Scheduler scheduler) {
        BoundedState boundedState = new BoundedState(new TimeEvictionPolicy(timeUnit.toMillis(j), scheduler), new AddTimestamped(scheduler), new RemoveTimestamped());
        return createWithState(boundedState, new TimedOnAdd(boundedState, scheduler));
    }

    public static <T> ReplaySubject<T> createWithTimeAndSize(long j, TimeUnit timeUnit, int i, Scheduler scheduler) {
        BoundedState boundedState = new BoundedState(new PairEvictionPolicy(new SizeEvictionPolicy(i), new TimeEvictionPolicy(timeUnit.toMillis(j), scheduler)), new AddTimestamped(scheduler), new RemoveTimestamped());
        return createWithState(boundedState, new TimedOnAdd(boundedState, scheduler));
    }

    @Experimental
    public Throwable getThrowable() {
        NotificationLite notificationLite = this.ssm.nl;
        Object obj = this.ssm.get();
        return notificationLite.isError(obj) ? notificationLite.getError(obj) : null;
    }

    public T getValue() {
        return this.state.latest();
    }

    @Experimental
    public T[] getValues(T[] tArr) {
        return this.state.toArray(tArr);
    }

    @Experimental
    public boolean hasAnyValue() {
        return !this.state.isEmpty();
    }

    @Experimental
    public boolean hasCompleted() {
        NotificationLite notificationLite = this.ssm.nl;
        Object obj = this.ssm.get();
        return (obj == null || notificationLite.isError(obj)) ? false : true;
    }

    public boolean hasObservers() {
        return this.ssm.observers().length > 0;
    }

    @Experimental
    public boolean hasThrowable() {
        return this.ssm.nl.isError(this.ssm.get());
    }

    @Experimental
    public boolean hasValue() {
        return hasAnyValue();
    }

    public void onCompleted() {
        if (this.ssm.active) {
            this.state.complete();
            for (SubjectObserver subjectObserver : this.ssm.terminate(NotificationLite.instance().completed())) {
                if (caughtUp(subjectObserver)) {
                    subjectObserver.onCompleted();
                }
            }
        }
    }

    public void onError(Throwable th) {
        if (this.ssm.active) {
            this.state.error(th);
            List list = null;
            for (SubjectObserver subjectObserver : this.ssm.terminate(NotificationLite.instance().error(th))) {
                try {
                    if (caughtUp(subjectObserver)) {
                        subjectObserver.onError(th);
                    }
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
        if (this.ssm.active) {
            this.state.next(t);
            for (SubjectObserver subjectObserver : this.ssm.observers()) {
                if (caughtUp(subjectObserver)) {
                    subjectObserver.onNext(t);
                }
            }
        }
    }

    @Experimental
    public int size() {
        return this.state.size();
    }

    int subscriberCount() {
        return this.ssm.state.observers.length;
    }
}
