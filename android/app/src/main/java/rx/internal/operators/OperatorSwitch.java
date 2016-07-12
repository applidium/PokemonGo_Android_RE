package rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Producer;
import rx.Subscriber;
import rx.observers.SerializedSubscriber;
import rx.subscriptions.SerialSubscription;

public final class OperatorSwitch<T> implements Operator<T, Observable<? extends T>> {

    private static final class Holder {
        static final OperatorSwitch<Object> INSTANCE;

        static {
            INSTANCE = new OperatorSwitch();
        }

        private Holder() {
        }
    }

    private static final class SwitchSubscriber<T> extends Subscriber<Observable<? extends T>> {
        boolean active;
        InnerSubscriber currentSubscriber;
        boolean emitting;
        final Object guard;
        int index;
        volatile boolean infinite;
        long initialRequested;
        boolean mainDone;
        final NotificationLite<?> nl;
        List<Object> queue;
        final SerializedSubscriber<T> f918s;
        final SerialSubscription ssub;

        /* renamed from: rx.internal.operators.OperatorSwitch.SwitchSubscriber.1 */
        class C13011 implements Producer {
            C13011() {
            }

            public void request(long j) {
                if (!SwitchSubscriber.this.infinite) {
                    InnerSubscriber innerSubscriber;
                    if (j == Long.MAX_VALUE) {
                        SwitchSubscriber.this.infinite = true;
                    }
                    synchronized (SwitchSubscriber.this.guard) {
                        innerSubscriber = SwitchSubscriber.this.currentSubscriber;
                        long j2;
                        if (SwitchSubscriber.this.currentSubscriber == null) {
                            j2 = SwitchSubscriber.this.initialRequested + j;
                            if (j2 < 0) {
                                SwitchSubscriber.this.infinite = true;
                            } else {
                                SwitchSubscriber.this.initialRequested = j2;
                            }
                        } else {
                            j2 = SwitchSubscriber.this.currentSubscriber.requested + j;
                            if (j2 < 0) {
                                SwitchSubscriber.this.infinite = true;
                            } else {
                                SwitchSubscriber.this.currentSubscriber.requested = j2;
                            }
                        }
                    }
                    if (innerSubscriber == null) {
                        return;
                    }
                    if (SwitchSubscriber.this.infinite) {
                        innerSubscriber.requestMore(Long.MAX_VALUE);
                    } else {
                        innerSubscriber.requestMore(j);
                    }
                }
            }
        }

        final class InnerSubscriber extends Subscriber<T> {
            private final int id;
            private final long initialRequested;
            private long requested;

            public InnerSubscriber(int i, long j) {
                this.requested = 0;
                this.id = i;
                this.initialRequested = j;
            }

            public void onCompleted() {
                SwitchSubscriber.this.complete(this.id);
            }

            public void onError(Throwable th) {
                SwitchSubscriber.this.error(th, this.id);
            }

            public void onNext(T t) {
                SwitchSubscriber.this.emit(t, this.id, this);
            }

            public void onStart() {
                requestMore(this.initialRequested);
            }

            public void requestMore(long j) {
                request(j);
            }
        }

        public SwitchSubscriber(Subscriber<? super T> subscriber) {
            this.guard = new Object();
            this.nl = NotificationLite.instance();
            this.infinite = false;
            this.f918s = new SerializedSubscriber(subscriber);
            this.ssub = new SerialSubscription();
            subscriber.add(this.ssub);
            subscriber.setProducer(new C13011());
        }

        void complete(int i) {
            synchronized (this.guard) {
                if (i != this.index) {
                    return;
                }
                this.active = false;
                if (!this.mainDone) {
                } else if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(this.nl.completed());
                } else {
                    List list = this.queue;
                    this.queue = null;
                    this.emitting = true;
                    drain(list);
                    this.f918s.onCompleted();
                    unsubscribe();
                }
            }
        }

        void drain(List<Object> list) {
            if (list != null) {
                for (Object next : list) {
                    if (this.nl.isCompleted(next)) {
                        this.f918s.onCompleted();
                        return;
                    } else if (this.nl.isError(next)) {
                        this.f918s.onError(this.nl.getError(next));
                        return;
                    } else {
                        this.f918s.onNext(next);
                    }
                }
            }
        }

        void emit(T t, int i, InnerSubscriber innerSubscriber) {
            Throwable th;
            Object obj = 1;
            Object obj2 = null;
            synchronized (this.guard) {
                if (i != this.index) {
                } else if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    if (innerSubscriber.requested != Long.MAX_VALUE) {
                        innerSubscriber.requested = innerSubscriber.requested - 1;
                    }
                    this.queue.add(t);
                } else {
                    List list = this.queue;
                    this.queue = null;
                    this.emitting = true;
                    Object obj3 = 1;
                    do {
                        drain(list);
                        if (obj3 != null) {
                            synchronized (this.guard) {
                                if (innerSubscriber.requested != Long.MAX_VALUE) {
                                    innerSubscriber.requested = innerSubscriber.requested - 1;
                                }
                            }
                            this.f918s.onNext(t);
                            obj3 = null;
                        }
                        synchronized (this.guard) {
                            list = this.queue;
                            this.queue = null;
                            if (list == null) {
                                this.emitting = false;
                                try {
                                    break;
                                } catch (Throwable th2) {
                                    th = th2;
                                    int i2 = 1;
                                    throw th;
                                }
                            } else {
                                try {
                                    try {
                                    } catch (Throwable th3) {
                                        if (obj2 == null) {
                                            synchronized (this.guard) {
                                            }
                                            this.emitting = false;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                }
                            }
                        }
                    } while (!this.f918s.isUnsubscribed());
                    obj = null;
                    if (obj == null) {
                        synchronized (this.guard) {
                            this.emitting = false;
                        }
                    }
                }
            }
        }

        void error(Throwable th, int i) {
            synchronized (this.guard) {
                if (i != this.index) {
                } else if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(this.nl.error(th));
                } else {
                    List list = this.queue;
                    this.queue = null;
                    this.emitting = true;
                    drain(list);
                    this.f918s.onError(th);
                    unsubscribe();
                }
            }
        }

        public void onCompleted() {
            synchronized (this.guard) {
                this.mainDone = true;
                if (this.active) {
                } else if (this.emitting) {
                    if (this.queue == null) {
                        this.queue = new ArrayList();
                    }
                    this.queue.add(this.nl.completed());
                } else {
                    List list = this.queue;
                    this.queue = null;
                    this.emitting = true;
                    drain(list);
                    this.f918s.onCompleted();
                    unsubscribe();
                }
            }
        }

        public void onError(Throwable th) {
            this.f918s.onError(th);
            unsubscribe();
        }

        public void onNext(Observable<? extends T> observable) {
            synchronized (this.guard) {
                int i = this.index + 1;
                this.index = i;
                this.active = true;
                long access$100 = this.infinite ? Long.MAX_VALUE : this.currentSubscriber == null ? this.initialRequested : this.currentSubscriber.requested;
                this.currentSubscriber = new InnerSubscriber(i, access$100);
                this.currentSubscriber.requested = access$100;
            }
            this.ssub.set(this.currentSubscriber);
            observable.unsafeSubscribe(this.currentSubscriber);
        }
    }

    private OperatorSwitch() {
    }

    public static <T> OperatorSwitch<T> instance() {
        return Holder.INSTANCE;
    }

    public Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> subscriber) {
        Object switchSubscriber = new SwitchSubscriber(subscriber);
        subscriber.add(switchSubscriber);
        return switchSubscriber;
    }
}
