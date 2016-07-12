package rx.internal.operators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import rx.Observable;
import rx.Observable.Operator;
import rx.Observer;
import rx.Producer;
import rx.Subscriber;
import rx.functions.Action0;
import rx.subscriptions.Subscriptions;

public final class OperatorWindowWithSize<T> implements Operator<Observable<T>, T> {
    final int size;
    final int skip;

    static final class CountedSubject<T> {
        final Observer<T> consumer;
        int count;
        final Observable<T> producer;

        public CountedSubject(Observer<T> observer, Observable<T> observable) {
            this.consumer = observer;
            this.producer = observable;
        }
    }

    final class ExactSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        int count;
        volatile boolean noWindow;
        BufferUntilSubscriber<T> window;

        /* renamed from: rx.internal.operators.OperatorWindowWithSize.ExactSubscriber.1 */
        class C13321 implements Action0 {
            C13321() {
            }

            public void call() {
                if (ExactSubscriber.this.noWindow) {
                    ExactSubscriber.this.unsubscribe();
                }
            }
        }

        /* renamed from: rx.internal.operators.OperatorWindowWithSize.ExactSubscriber.2 */
        class C13332 implements Producer {
            C13332() {
            }

            public void request(long j) {
                if (j > 0) {
                    long j2 = ((long) OperatorWindowWithSize.this.size) * j;
                    if (!((j2 >>> 31) == 0 || j2 / j == ((long) OperatorWindowWithSize.this.size))) {
                        j2 = Long.MAX_VALUE;
                    }
                    ExactSubscriber.this.requestMore(j2);
                }
            }
        }

        public ExactSubscriber(Subscriber<? super Observable<T>> subscriber) {
            this.noWindow = true;
            this.child = subscriber;
        }

        void init() {
            this.child.add(Subscriptions.create(new C13321()));
            this.child.setProducer(new C13332());
        }

        public void onCompleted() {
            if (this.window != null) {
                this.window.onCompleted();
            }
            this.child.onCompleted();
        }

        public void onError(Throwable th) {
            if (this.window != null) {
                this.window.onError(th);
            }
            this.child.onError(th);
        }

        public void onNext(T t) {
            if (this.window == null) {
                this.noWindow = false;
                this.window = BufferUntilSubscriber.create();
                this.child.onNext(this.window);
            }
            this.window.onNext(t);
            int i = this.count + 1;
            this.count = i;
            if (i % OperatorWindowWithSize.this.size == 0) {
                this.window.onCompleted();
                this.window = null;
                this.noWindow = true;
                if (this.child.isUnsubscribed()) {
                    unsubscribe();
                }
            }
        }

        void requestMore(long j) {
            request(j);
        }
    }

    final class InexactSubscriber extends Subscriber<T> {
        final Subscriber<? super Observable<T>> child;
        final List<CountedSubject<T>> chunks;
        int count;
        volatile boolean noWindow;

        /* renamed from: rx.internal.operators.OperatorWindowWithSize.InexactSubscriber.1 */
        class C13341 implements Action0 {
            C13341() {
            }

            public void call() {
                if (InexactSubscriber.this.noWindow) {
                    InexactSubscriber.this.unsubscribe();
                }
            }
        }

        /* renamed from: rx.internal.operators.OperatorWindowWithSize.InexactSubscriber.2 */
        class C13352 implements Producer {
            C13352() {
            }

            public void request(long j) {
                if (j > 0) {
                    long j2 = ((long) OperatorWindowWithSize.this.size) * j;
                    if (!((j2 >>> 31) == 0 || j2 / j == ((long) OperatorWindowWithSize.this.size))) {
                        j2 = Long.MAX_VALUE;
                    }
                    InexactSubscriber.this.requestMore(j2);
                }
            }
        }

        public InexactSubscriber(Subscriber<? super Observable<T>> subscriber) {
            this.chunks = new LinkedList();
            this.noWindow = true;
            this.child = subscriber;
        }

        CountedSubject<T> createCountedSubject() {
            Object create = BufferUntilSubscriber.create();
            return new CountedSubject(create, create);
        }

        void init() {
            this.child.add(Subscriptions.create(new C13341()));
            this.child.setProducer(new C13352());
        }

        public void onCompleted() {
            List<CountedSubject> arrayList = new ArrayList(this.chunks);
            this.chunks.clear();
            this.noWindow = true;
            for (CountedSubject countedSubject : arrayList) {
                countedSubject.consumer.onCompleted();
            }
            this.child.onCompleted();
        }

        public void onError(Throwable th) {
            List<CountedSubject> arrayList = new ArrayList(this.chunks);
            this.chunks.clear();
            this.noWindow = true;
            for (CountedSubject countedSubject : arrayList) {
                countedSubject.consumer.onError(th);
            }
            this.child.onError(th);
        }

        public void onNext(T t) {
            int i = this.count;
            this.count = i + 1;
            if (i % OperatorWindowWithSize.this.skip == 0 && !this.child.isUnsubscribed()) {
                if (this.chunks.isEmpty()) {
                    this.noWindow = false;
                }
                CountedSubject createCountedSubject = createCountedSubject();
                this.chunks.add(createCountedSubject);
                this.child.onNext(createCountedSubject.producer);
            }
            Iterator it = this.chunks.iterator();
            while (it.hasNext()) {
                createCountedSubject = (CountedSubject) it.next();
                createCountedSubject.consumer.onNext(t);
                int i2 = createCountedSubject.count + 1;
                createCountedSubject.count = i2;
                if (i2 == OperatorWindowWithSize.this.size) {
                    it.remove();
                    createCountedSubject.consumer.onCompleted();
                }
            }
            if (this.chunks.isEmpty()) {
                this.noWindow = true;
                if (this.child.isUnsubscribed()) {
                    unsubscribe();
                }
            }
        }

        void requestMore(long j) {
            request(j);
        }
    }

    public OperatorWindowWithSize(int i, int i2) {
        this.size = i;
        this.skip = i2;
    }

    public Subscriber<? super T> call(Subscriber<? super Observable<T>> subscriber) {
        if (this.skip == this.size) {
            Subscriber exactSubscriber = new ExactSubscriber(subscriber);
            exactSubscriber.init();
            return exactSubscriber;
        }
        exactSubscriber = new InexactSubscriber(subscriber);
        exactSubscriber.init();
        return exactSubscriber;
    }
}
