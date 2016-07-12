package rx.internal.operators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import rx.Observable.Operator;
import rx.Scheduler;
import rx.Scheduler.Worker;
import rx.Subscriber;
import rx.Subscription;
import rx.functions.Action0;
import rx.observers.SerializedSubscriber;

public final class OperatorBufferWithTime<T> implements Operator<List<T>, T> {
    final int count;
    final Scheduler scheduler;
    final long timeshift;
    final long timespan;
    final TimeUnit unit;

    final class ExactSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        List<T> chunk;
        boolean done;
        final Worker inner;

        /* renamed from: rx.internal.operators.OperatorBufferWithTime.ExactSubscriber.1 */
        class C12101 implements Action0 {
            C12101() {
            }

            public void call() {
                ExactSubscriber.this.emit();
            }
        }

        public ExactSubscriber(Subscriber<? super List<T>> subscriber, Worker worker) {
            this.child = subscriber;
            this.inner = worker;
            this.chunk = new ArrayList();
        }

        void emit() {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                List list = this.chunk;
                this.chunk = new ArrayList();
                try {
                    this.child.onNext(list);
                } catch (Throwable th) {
                    onError(th);
                }
            }
        }

        public void onCompleted() {
            try {
                this.inner.unsubscribe();
                synchronized (this) {
                    if (this.done) {
                        return;
                    }
                    this.done = true;
                    List list = this.chunk;
                    this.chunk = null;
                    this.child.onNext(list);
                    this.child.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                this.child.onError(th);
            }
        }

        public void onError(Throwable th) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                this.chunk = null;
                this.child.onError(th);
                unsubscribe();
            }
        }

        public void onNext(T t) {
            Object obj = null;
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.chunk.add(t);
                if (this.chunk.size() == OperatorBufferWithTime.this.count) {
                    obj = this.chunk;
                    this.chunk = new ArrayList();
                }
                if (obj != null) {
                    this.child.onNext(obj);
                }
            }
        }

        void scheduleExact() {
            this.inner.schedulePeriodically(new C12101(), OperatorBufferWithTime.this.timespan, OperatorBufferWithTime.this.timespan, OperatorBufferWithTime.this.unit);
        }
    }

    final class InexactSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        final List<List<T>> chunks;
        boolean done;
        final Worker inner;

        /* renamed from: rx.internal.operators.OperatorBufferWithTime.InexactSubscriber.1 */
        class C12111 implements Action0 {
            C12111() {
            }

            public void call() {
                InexactSubscriber.this.startNewChunk();
            }
        }

        /* renamed from: rx.internal.operators.OperatorBufferWithTime.InexactSubscriber.2 */
        class C12122 implements Action0 {
            final /* synthetic */ List val$chunk;

            C12122(List list) {
                this.val$chunk = list;
            }

            public void call() {
                InexactSubscriber.this.emitChunk(this.val$chunk);
            }
        }

        public InexactSubscriber(Subscriber<? super List<T>> subscriber, Worker worker) {
            this.child = subscriber;
            this.inner = worker;
            this.chunks = new LinkedList();
        }

        void emitChunk(List<T> list) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                Object obj;
                Iterator it = this.chunks.iterator();
                while (it.hasNext()) {
                    if (((List) it.next()) == list) {
                        it.remove();
                        obj = 1;
                        break;
                    }
                }
                obj = null;
                if (obj != null) {
                    try {
                        this.child.onNext(list);
                    } catch (Throwable th) {
                        onError(th);
                    }
                }
            }
        }

        public void onCompleted() {
            try {
                synchronized (this) {
                    if (this.done) {
                        return;
                    }
                    this.done = true;
                    List<List> linkedList = new LinkedList(this.chunks);
                    this.chunks.clear();
                    for (List onNext : linkedList) {
                        this.child.onNext(onNext);
                    }
                    this.child.onCompleted();
                    unsubscribe();
                }
            } catch (Throwable th) {
                this.child.onError(th);
            }
        }

        public void onError(Throwable th) {
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.done = true;
                this.chunks.clear();
                this.child.onError(th);
                unsubscribe();
            }
        }

        public void onNext(T t) {
            Throwable th;
            synchronized (this) {
                if (this.done) {
                    return;
                }
                List list;
                Iterator it = this.chunks.iterator();
                List list2 = null;
                while (it.hasNext()) {
                    try {
                        list = (List) it.next();
                        list.add(t);
                        if (list.size() == OperatorBufferWithTime.this.count) {
                            it.remove();
                            if (r1 == null) {
                                list2 = new LinkedList();
                            }
                            try {
                                list2.add(list);
                                list = list2;
                            } catch (Throwable th2) {
                                th = th2;
                                throw th;
                            }
                        }
                        list = r1;
                        list2 = list;
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                if (r1 != null) {
                    for (List list3 : r1) {
                        this.child.onNext(list3);
                    }
                }
            }
        }

        void scheduleChunk() {
            this.inner.schedulePeriodically(new C12111(), OperatorBufferWithTime.this.timeshift, OperatorBufferWithTime.this.timeshift, OperatorBufferWithTime.this.unit);
        }

        void startNewChunk() {
            List arrayList = new ArrayList();
            synchronized (this) {
                if (this.done) {
                    return;
                }
                this.chunks.add(arrayList);
                this.inner.schedule(new C12122(arrayList), OperatorBufferWithTime.this.timespan, OperatorBufferWithTime.this.unit);
            }
        }
    }

    public OperatorBufferWithTime(long j, long j2, TimeUnit timeUnit, int i, Scheduler scheduler) {
        this.timespan = j;
        this.timeshift = j2;
        this.unit = timeUnit;
        this.count = i;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super List<T>> subscriber) {
        Subscription createWorker = this.scheduler.createWorker();
        Subscriber serializedSubscriber = new SerializedSubscriber(subscriber);
        if (this.timespan == this.timeshift) {
            Subscriber<? super T> exactSubscriber = new ExactSubscriber(serializedSubscriber, createWorker);
            exactSubscriber.add(createWorker);
            subscriber.add(exactSubscriber);
            exactSubscriber.scheduleExact();
            return exactSubscriber;
        }
        Subscriber inexactSubscriber = new InexactSubscriber(serializedSubscriber, createWorker);
        inexactSubscriber.add(createWorker);
        subscriber.add(inexactSubscriber);
        inexactSubscriber.startNewChunk();
        inexactSubscriber.scheduleChunk();
        return inexactSubscriber;
    }
}
