package rx.observables;

import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import rx.Observable;
import rx.Observable.OnSubscribe;
import rx.Producer;
import rx.Subscriber;
import rx.Subscription;
import rx.annotations.Experimental;
import rx.exceptions.CompositeException;
import rx.functions.Action1;
import rx.functions.Actions;
import rx.functions.Func1;
import rx.internal.operators.BackpressureUtils;

@Experimental
public abstract class AbstractOnSubscribe<T, S> implements OnSubscribe<T> {
    private static final Func1<Object, Object> NULL_FUNC1;

    /* renamed from: rx.observables.AbstractOnSubscribe.1 */
    static final class C13591 implements Func1<Object, Object> {
        C13591() {
        }

        public Object call(Object obj) {
            return null;
        }
    }

    private static final class LambdaOnSubscribe<T, S> extends AbstractOnSubscribe<T, S> {
        final Action1<SubscriptionState<T, S>> next;
        final Func1<? super Subscriber<? super T>, ? extends S> onSubscribe;
        final Action1<? super S> onTerminated;

        private LambdaOnSubscribe(Action1<SubscriptionState<T, S>> action1, Func1<? super Subscriber<? super T>, ? extends S> func1, Action1<? super S> action12) {
            this.next = action1;
            this.onSubscribe = func1;
            this.onTerminated = action12;
        }

        public /* bridge */ /* synthetic */ void call(Object obj) {
            super.call((Subscriber) obj);
        }

        protected void next(SubscriptionState<T, S> subscriptionState) {
            this.next.call(subscriptionState);
        }

        protected S onSubscribe(Subscriber<? super T> subscriber) {
            return this.onSubscribe.call(subscriber);
        }

        protected void onTerminated(S s) {
            this.onTerminated.call(s);
        }
    }

    private static final class SubscriptionCompleter<T, S> extends AtomicBoolean implements Subscription {
        private static final long serialVersionUID = 7993888274897325004L;
        private final SubscriptionState<T, S> state;

        private SubscriptionCompleter(SubscriptionState<T, S> subscriptionState) {
            this.state = subscriptionState;
        }

        public boolean isUnsubscribed() {
            return get();
        }

        public void unsubscribe() {
            if (compareAndSet(false, true)) {
                this.state.free();
            }
        }
    }

    private static final class SubscriptionProducer<T, S> implements Producer {
        final SubscriptionState<T, S> state;

        private SubscriptionProducer(SubscriptionState<T, S> subscriptionState) {
            this.state = subscriptionState;
        }

        protected boolean doNext() {
            if (!this.state.use()) {
                return false;
            }
            try {
                int phase = this.state.phase();
                this.state.parent.next(this.state);
                if (!this.state.verify()) {
                    throw new IllegalStateException("No event produced or stop called @ Phase: " + phase + " -> " + this.state.phase() + ", Calls: " + this.state.calls());
                } else if (this.state.accept() || this.state.stopRequested()) {
                    this.state.terminate();
                    return false;
                } else {
                    this.state.calls = 1 + this.state.calls;
                    this.state.free();
                    return true;
                }
            } catch (Throwable th) {
                this.state.terminate();
                this.state.subscriber.onError(th);
            } finally {
                this.state.free();
            }
        }

        public void request(long j) {
            if (j > 0 && BackpressureUtils.getAndAddRequest(this.state.requestCount, j) == 0) {
                if (j == Long.MAX_VALUE) {
                    while (!this.state.subscriber.isUnsubscribed()) {
                        if (!doNext()) {
                            return;
                        }
                    }
                } else if (!this.state.subscriber.isUnsubscribed()) {
                    while (doNext() && this.state.requestCount.decrementAndGet() > 0) {
                        if (this.state.subscriber.isUnsubscribed()) {
                            return;
                        }
                    }
                }
            }
        }
    }

    public static final class SubscriptionState<T, S> {
        private long calls;
        private boolean hasCompleted;
        private boolean hasOnNext;
        private final AtomicInteger inUse;
        private final AbstractOnSubscribe<T, S> parent;
        private int phase;
        private final AtomicLong requestCount;
        private final S state;
        private boolean stopRequested;
        private final Subscriber<? super T> subscriber;
        private Throwable theException;
        private T theValue;

        private SubscriptionState(AbstractOnSubscribe<T, S> abstractOnSubscribe, Subscriber<? super T> subscriber, S s) {
            this.parent = abstractOnSubscribe;
            this.subscriber = subscriber;
            this.state = s;
            this.requestCount = new AtomicLong();
            this.inUse = new AtomicInteger(1);
        }

        protected boolean accept() {
            if (this.hasOnNext) {
                Object obj = this.theValue;
                this.theValue = null;
                this.hasOnNext = false;
                try {
                    this.subscriber.onNext(obj);
                } catch (Throwable th) {
                    this.hasCompleted = true;
                    Throwable th2 = this.theException;
                    this.theException = null;
                    if (th2 == null) {
                        this.subscriber.onError(th);
                        return true;
                    }
                    this.subscriber.onError(new CompositeException(Arrays.asList(new Throwable[]{th, th2})));
                    return true;
                }
            }
            if (!this.hasCompleted) {
                return false;
            }
            Throwable th3 = this.theException;
            this.theException = null;
            if (th3 != null) {
                this.subscriber.onError(th3);
                return true;
            }
            this.subscriber.onCompleted();
            return true;
        }

        public void advancePhase() {
            advancePhaseBy(1);
        }

        public void advancePhaseBy(int i) {
            this.phase += i;
        }

        public long calls() {
            return this.calls;
        }

        protected void free() {
            if (this.inUse.get() > 0 && this.inUse.decrementAndGet() == 0) {
                this.parent.onTerminated(this.state);
            }
        }

        public void onCompleted() {
            if (this.hasCompleted) {
                throw new IllegalStateException("Already terminated", this.theException);
            }
            this.hasCompleted = true;
        }

        public void onError(Throwable th) {
            if (th == null) {
                throw new NullPointerException("e != null required");
            } else if (this.hasCompleted) {
                throw new IllegalStateException("Already terminated", this.theException);
            } else {
                this.theException = th;
                this.hasCompleted = true;
            }
        }

        public void onNext(T t) {
            if (this.hasOnNext) {
                throw new IllegalStateException("onNext not consumed yet!");
            } else if (this.hasCompleted) {
                throw new IllegalStateException("Already terminated", this.theException);
            } else {
                this.theValue = t;
                this.hasOnNext = true;
            }
        }

        public int phase() {
            return this.phase;
        }

        public void phase(int i) {
            this.phase = i;
        }

        public S state() {
            return this.state;
        }

        public void stop() {
            this.stopRequested = true;
        }

        protected boolean stopRequested() {
            return this.stopRequested;
        }

        protected void terminate() {
            int i;
            do {
                i = this.inUse.get();
                if (i <= 0) {
                    return;
                }
            } while (!this.inUse.compareAndSet(i, 0));
            this.parent.onTerminated(this.state);
        }

        protected boolean use() {
            int i = this.inUse.get();
            if (i == 0) {
                return false;
            }
            if (i == 1 && this.inUse.compareAndSet(1, 2)) {
                return true;
            }
            throw new IllegalStateException("This is not reentrant nor threadsafe!");
        }

        protected boolean verify() {
            return this.hasOnNext || this.hasCompleted || this.stopRequested;
        }
    }

    static {
        NULL_FUNC1 = new C13591();
    }

    public static <T, S> AbstractOnSubscribe<T, S> create(Action1<SubscriptionState<T, S>> action1) {
        return create(action1, NULL_FUNC1, Actions.empty());
    }

    public static <T, S> AbstractOnSubscribe<T, S> create(Action1<SubscriptionState<T, S>> action1, Func1<? super Subscriber<? super T>, ? extends S> func1) {
        return create(action1, func1, Actions.empty());
    }

    public static <T, S> AbstractOnSubscribe<T, S> create(Action1<SubscriptionState<T, S>> action1, Func1<? super Subscriber<? super T>, ? extends S> func1, Action1<? super S> action12) {
        return new LambdaOnSubscribe(func1, action12, null);
    }

    public final void call(Subscriber<? super T> subscriber) {
        SubscriptionState subscriptionState = new SubscriptionState(subscriber, onSubscribe(subscriber), null);
        subscriber.add(new SubscriptionCompleter(null));
        subscriber.setProducer(new SubscriptionProducer(null));
    }

    protected abstract void next(SubscriptionState<T, S> subscriptionState);

    protected S onSubscribe(Subscriber<? super T> subscriber) {
        return null;
    }

    protected void onTerminated(S s) {
    }

    public final Observable<T> toObservable() {
        return Observable.create(this);
    }
}
